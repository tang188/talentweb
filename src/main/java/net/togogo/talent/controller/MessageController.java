package net.togogo.talent.controller;

import java.util.List;

import javax.annotation.Resource;

import net.togogo.talent.domain.TbMessage;
import net.togogo.talent.domain.TbMessageExample;
import net.togogo.talent.service.MessageService;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/message")
public class MessageController {

	@Resource
	private MessageService messageService;
	
	@RequestMapping("/messageDetail.do")
	public String messageDetail(Model model,int messId){
		model.addAttribute("messId", messId);
		return "message/messageDetail";
	}
	
	@RequestMapping("/findMessageById.do")
	public @ResponseBody TbMessage findMessageById(int messId){
		return messageService.selectByPrimaryKey(messId);
	}
	
	@RequestMapping("/findMessage.do")
	public @ResponseBody List<TbMessage> findMessage(String messType){
		TbMessageExample example = new TbMessageExample();
		TbMessageExample.Criteria criteria = example.createCriteria();
		criteria.andMessTypeEqualTo(messType);
		return messageService.selectByExample(example);
	}
	
	@RequestMapping("/findMessagePage.do")
	public @ResponseBody List<TbMessage> findMessagePage(String messType,int pageIndex,int pageSize){
		TbMessageExample example = new TbMessageExample();
		TbMessageExample.Criteria criteria = example.createCriteria();
		criteria.andMessTypeEqualTo(messType);
		return messageService.selectMoreByExample(example,pageIndex,pageSize);
	}
}
