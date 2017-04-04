package net.togogo.talent.test;

import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import net.togogo.talent.domain.TbAdmin;
import net.togogo.talent.service.ITbAdminService;

public class TbAdminTest {

	@Test
	public void testFindAdmins() {
		ClassPathXmlApplicationContext ac = new ClassPathXmlApplicationContext("spring_mybatis.xml");
		ITbAdminService adminService = (ITbAdminService) ac.getBean("tbAdminService");
		//��ѯ��������
		/**
		 * TbAdminExample����װ��ѯ����
		 */
//		List<TbAdmin> admins = adminService.selectByExample(new TbAdminExample());
//		for(TbAdmin admin:admins){
//			System.out.println(admin);
//		}
		
		//������������ѯ
//		TbAdminExample example = new TbAdminExample();
		//��ò�ѯ��������
//		Criteria cri = example.createCriteria();
		//���Ӳ�ѯ����
//		cri.andAdminPasswordEqualTo("wujunru");
		
		//����id����ѯ
		
		
		TbAdmin admin = adminService.selectByPrimaryKey(4);
		System.out.println(admin);
	}
	
	@Test
	public void testSave() {
		ClassPathXmlApplicationContext ac = new ClassPathXmlApplicationContext("spring_mybatis.xml");
		ITbAdminService adminService = (ITbAdminService) ac.getBean("tbAdminService");
	
	}
	
	@Test
	public void testDelete() {
		ClassPathXmlApplicationContext ac = new ClassPathXmlApplicationContext("spring_mybatis.xml");
		ITbAdminService adminService = (ITbAdminService) ac.getBean("tbAdminService");

	}
}
