package net.togogo.talent.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import net.togogo.talent.domain.TbResume;
import net.togogo.talent.domain.TbUser;
import net.togogo.talent.service.ITbUserResumeService;

@Controller
public class TbUserResumeController {

	@Resource
	private ITbUserResumeService tbUserResumeService;
	@RequestMapping("/addUserReusem")
	public String addUserRusume(Model model,TbUser user,TbResume resume)
	{
		return "success";	
	}
}
