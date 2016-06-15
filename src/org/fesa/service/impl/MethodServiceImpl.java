package org.fesa.service.impl;

import java.util.List;

import org.fesa.dao.UserDao;
import org.fesa.pojo.UserPojo;
import org.fesa.service.MethodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fesa.component.service.HtmlParseService;

@Service
public class MethodServiceImpl implements MethodService{

	@Autowired
	private UserDao userDao;
	@Autowired
	private HtmlParseService htmlParseService;
	
	@Override
	public List<UserPojo> method1() {
		List<UserPojo> list_result=userDao.getAllUser();
		String result=htmlParseService.parse("≤‚ ‘œ˚∑—’ﬂ");
		return list_result;
	}

}
