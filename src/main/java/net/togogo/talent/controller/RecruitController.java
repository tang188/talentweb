package net.togogo.talent.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import net.togogo.talent.domain.TbCompany;
import net.togogo.talent.domain.TbRecruit;
import net.togogo.talent.domain.TbRecruitExample;
import net.togogo.talent.service.RecruitService;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/recruit")
public class RecruitController {

	@Resource
	private RecruitService recruitService ;
	
	@RequestMapping("/recruitList.do")
	public String recruitList(Model model){
		TbRecruitExample example = new TbRecruitExample();
		int count = recruitService.countByExample(example);
		model.addAttribute("count",count);
		return "recruit/recruitList";
	}
	
	@RequestMapping("/recruitDetail.do")
	public String recruitDetail(int recrId,Model model){
		model.addAttribute("recrId", recrId);
		return "recruit/recruitDetail";
	}
	
	@RequestMapping("/findRecruitsById.do")
	public @ResponseBody TbRecruit findRecruitsById(int recrId){
		return recruitService.selectByPrimaryKey(recrId);
	}
	
	@RequestMapping("/findRecruits.do")
	public @ResponseBody List<TbRecruit> findRecruits(){
		TbRecruitExample example = new TbRecruitExample();
		return recruitService.selectByExample(example);
	}
	
	@RequestMapping("/findRecruitsByPage.do")
	public @ResponseBody List<TbRecruit> findRecruitsByPage(int pageIndex,int pageSize){
		TbRecruitExample example = new TbRecruitExample();
		example.setOrderByClause("recr_date desc");
		return recruitService.selectMoreByExample(example,pageIndex,pageSize);
	}
	
	@RequestMapping("/findRecruitPages.do")
	public @ResponseBody List<TbRecruit> findRecruitPages(String keywords,int pageIndex,int pageSize){
		List<TbRecruit> retList = new ArrayList<TbRecruit>();
		
		String[] keyword = keywords.split("\\,");
		for(String key : keyword){
			TbRecruitExample example = new TbRecruitExample();
			TbRecruitExample.Criteria criteria = example.createCriteria();
			criteria.andRecrJobLike("%"+key+"%");
			example.setOrderByClause("recr_date desc");
			retList.addAll(recruitService.selectMoreByExample(example,pageIndex,pageSize));
		}
		return retList;
	}
	
	@RequestMapping("/addRecruit.do")
	public @ResponseBody String addRecruit(TbRecruit recruit, HttpServletRequest request){
		TbCompany current_company = (TbCompany) request.getSession().getAttribute("current_company");
		if(current_company!=null){
			recruit.setCompId(current_company.getCompId());
			recruit.setCompName(current_company.getCompName());
		}
		recruit.setRecrDate(new Date());
		recruit.setRecrState(0);
		recruitService.insertSelective(recruit);
		return "success";
	}
	
	@RequestMapping("/deleteRecruit.do")
	public @ResponseBody String deleteRecruit(int recrId, Model model){
		int ret = recruitService.deleteByPrimaryKey(recrId);
		if(ret!=1){
			throw new RuntimeException("删除失败！");
		}
		return "success";
	}
	
	@RequestMapping("/updateRecruit.do")
	public @ResponseBody String updateRecruit(TbRecruit recruit,HttpServletRequest request){
		recruitService.updateByPrimaryKeySelective(recruit);
		return "success";
	}
}
