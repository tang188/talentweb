package net.togogo.talent.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;


import net.togogo.talent.domain.TbResume;
import net.togogo.talent.domain.TbUser;
import net.togogo.talent.service.ITbResumeService;
import net.togogo.talent.service.ITbUserResumeService;
import net.togogo.talent.service.ITbUserService;
@Service("tbUserResumeService")
public class TbUserResumeServiceImpl implements ITbUserResumeService {
	@Resource
	private ITbUserService tbUserService;
	@Resource
	private ITbResumeService tbResumeService;
	@Override
	public int insert(TbUser user, TbResume resume) {
		// TODO Auto-generated method stub
		return 0;
	}
}
