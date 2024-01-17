package archive.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;
import org.springmodules.validation.commons.DefaultBeanValidator;

import archive.service.LoginService;

/**
 * @Class Name : LoginController.java
 * @Description : Login Controller Class
 * @Modification Information
 * @
 * @  수정일      	     수정자                    수정내용
 * @ ---------    ---------    ------------
 * @ 2024.01.05   이종현                    최초생성
 */

@Controller
public class LoginController {
	@Autowired
	private LoginService loginService;
	
	/** EgovPropertyService */
	@Resource(name = "propertiesService")
	protected EgovPropertyService propertiesService;

	/** Validator */
	@Resource(name = "beanValidator")
	protected DefaultBeanValidator beanValidator;

	/**
	 * 로그인
	 * @param 
	 * @param 
	 * @return 
	 * @exception Exception
	 */
	@RequestMapping(value = "/login")
	public String login(@RequestParam Map<String, Object> paramMap, ModelMap model) throws Exception {
		return "login/login";
	}
	
	/**
	 * 회원가입
	 * @param 
	 * @param 
	 * @return 
	 * @exception Exception
	 */
	@RequestMapping(value = "/register")
	public String register(@RequestParam Map<String, Object> paramMap, ModelMap model) throws Exception {
		return "login/auth-register";
	}
	
	@RequestMapping(value = "/ajax/regAcount")
	@ResponseBody
	public Map<String, Object> regAcount(@RequestParam Map<String, Object> paramMap, HttpSession session) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		int regAcount = loginService.regAcount(paramMap);
		
		if (regAcount > 0) {
			returnMap.put("isStatus", "success");
		}else {
			returnMap.put("isStatus", "E001");
		}
		
		return returnMap;
	}
}
