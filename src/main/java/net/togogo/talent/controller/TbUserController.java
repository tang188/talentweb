package net.togogo.talent.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import net.togogo.talent.domain.TbUser;
import net.togogo.talent.service.ITbUserService;
import net.togogo.talent.web.utils.Md5Utils;

@Controller
@RequestMapping("/user")
public class TbUserController {

	@Resource(name = "tbUserService")
	private ITbUserService tbUserService;

	@RequestMapping("/updateUserName.do")
	public @ResponseBody String updateUserName(HttpServletRequest request, String userName) {
		TbUser tbUser = (TbUser) request.getSession().getAttribute("current_user");
		tbUser.setUserName(userName);
		tbUserService.updateByPrimaryKeySelective(tbUser);
		return "success";
	}

	@RequestMapping("/updateUserPassword.do")
	public String updateUserPassword(Model model, HttpServletRequest request, String current_password,
			String new_password, String confirm_password) {
		if (new_password.equals(confirm_password)) {
			TbUser tbUser = (TbUser) request.getSession().getAttribute("current_user");
			if (tbUser.getUserPassword().equals(Md5Utils.encode(current_password))) {
				tbUser.setUserPassword(Md5Utils.encode(new_password));
				tbUserService.updateByPrimaryKeySelective(tbUser);
				return "redirect:/page/logout.do";
			} else {
				return "redirect:/page/changePassword.do";
			}
		} else{
			return "redirect:/page/changePassword.do";
		}
	}
}
