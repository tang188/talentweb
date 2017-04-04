package net.togogo.talent.controller;

import java.awt.image.BufferedImage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.togogo.talent.web.utils.VerifiedCodeUtils;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/page")
public class PageController {

	@RequestMapping("/index.do")
	public String index(){
		return "common/index";
	}
	
	@RequestMapping("/logout.do")
	public String logout(HttpServletRequest request){
		//注销用户登录信息。
		request.getSession().removeAttribute("current_user");
		request.getSession().removeAttribute("current_company");
		return "redirect:/page/index.do";
	}
	
	@RequestMapping("/login.do")
	public String login(){
		return "common/login";
	}
	
	@RequestMapping("/register.do")
	public String register(){
		return "common/register";
	}
	
	@RequestMapping("/discover.do")
	public String discover(){
		return "discover/keyword";
	}
	
	@RequestMapping("/publishHunt.do")
	public String publishHunt(){
		return "publish/publishHunt";
	}
	
	@RequestMapping("/publishRecruit.do")
	public String publishRecruit(){
		return "publish/publishRecruit";
	}
	
	@RequestMapping("/recruitMessage.do")
	public String recruitMessage(){
		return "message/recruitMessage";
	}
	
	@RequestMapping("/starMessage.do")
	public String starMessage(){
		return "message/starMessage";
	}
	
	@RequestMapping("/systemMessage.do")
	public String systemMessage(){
		return "message/systemMessage";
	}
	
	@RequestMapping("/myResume.do")
	public String myResume(){
		return "resume/myResume";
	}
	
	@RequestMapping("/addResume.do")
	public String addResume(){
		return "resume/addResume";
	}
	
	@RequestMapping("/education.do")
	public String education(){
		return "resume/education";
	}
	
	@RequestMapping("/projectExperience.do")
	public String projectExperience(){
		return "resume/projectExperience";
	}
	
	@RequestMapping("/workExperience.do")
	public String workExperience(){
		return "resume/workExperience";
	}
	
	@RequestMapping("/feedback.do")
	public String feedback(){
		return "account/feedback";
	}
	
	@RequestMapping("/myHunt.do")
	public String myHunt(){
		return "hunt/myHunt";
	}
	
	@RequestMapping("/myDeliver.do")
	public String myDeliver(){
		return "hunt/myDeliver";
	}
	
	@RequestMapping("/accountInfo.do")
	public String accountInfo(){
		return "account/accountInfo";
	}
	
	@RequestMapping("/changeUserName.do")
	public String changeUserName(){
		return "account/changeUserName";
	}
	
	@RequestMapping("/changePassword.do")
	public String changePassword(){
		return "account/changePassword";
	}
	
	@RequestMapping("/about.do")
	public String about(){
		return "common/about";
	}
	
	@RequestMapping("/findPassword.do")
	public String findPassword(){
		return "common/findPassword";
	}
	
	@RequestMapping("/verifiedCode.do")
	public void verifiedCode(HttpServletRequest request,HttpServletResponse response) throws Exception{
		//1. 创建验证码类
		VerifiedCodeUtils utils = new VerifiedCodeUtils();
		//2. 得到验证码图片
		BufferedImage image = utils.getImage();
		//3. 把图片上的文本保存到session中
		request.getSession().setAttribute("session_verifiedCode", utils.getText());
		//4. 把图片响应给客户端
		VerifiedCodeUtils.output(image, response.getOutputStream());
	}
}
