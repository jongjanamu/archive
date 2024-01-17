package archive.service.impl;

import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;

import archive.service.LoginService;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import archive.common.Common;
import archive.dao.LoginDAO;

@Service
public class LoginServiceImpl extends EgovAbstractServiceImpl implements LoginService {
	@Autowired
	private LoginDAO loginDAO;

	@Override
	public int regAcount(Map<String, Object> paramMap) {
		Common common = new Common();
	    String encodedPassword = common.encodePassword((String) paramMap.get("password"));
		
		paramMap.put("password", encodedPassword);
		
		int returnCnt = loginDAO.regAcount(paramMap);
		
		return returnCnt;
	}

}
