package archive.service.impl;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;

import archive.service.LoginService;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import archive.dao.LoginDAO;

@Service
public class LoginServiceImpl extends EgovAbstractServiceImpl implements LoginService {
	@Autowired
	private LoginDAO loginDAO;

	@Override
	public int regAcount(Map<String, Object> paramMap) {
		return loginDAO.regAcount(paramMap);
	}

}
