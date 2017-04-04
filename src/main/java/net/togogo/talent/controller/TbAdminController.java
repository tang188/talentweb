package net.togogo.talent.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import net.togogo.talent.domain.TbAdmin;
import net.togogo.talent.domain.TbAdminExample;
import net.togogo.talent.service.ITbAdminService;

/**
 * ��springmvc_config.xml
 * <context:component-scan base-package="net.togogo.talent.controller"/>
 * @author stone
 *spring mvc������ɨ��net.togogo.talent.controllerĿ¼����@Controllerע��������ɨ�赽ʱ��spring mvc�ͻ�Ѹ�����ӵ�spring mvc�����й���
 */
//@Component @Service @Repository @Controller
@Controller
public class TbAdminController {
	@Resource
	private ITbAdminService tbAdminService;

	/**
	 * @RequestMapping("/findAdmins")�������url
	 * @return
	 */
	@RequestMapping("/findAdmins")
	public String findAdmins(Model model){
		List<TbAdmin> admins = tbAdminService.selectByExample(new TbAdminExample());
		model.addAttribute("admins",admins);
		//		for(TbAdmin admin:admins){
//			System.out.println(admin);
//		}
		return "adminList.jsp";
	}
}
