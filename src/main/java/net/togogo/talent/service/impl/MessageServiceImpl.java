package net.togogo.talent.service.impl;

import java.util.List;

import javax.annotation.Resource;

import net.togogo.talent.domain.TbMessage;
import net.togogo.talent.domain.TbMessageExample;
import net.togogo.talent.mapper.TbMessageMapper;
import net.togogo.talent.service.MessageService;

import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;

@Service("messageService")
public class MessageServiceImpl implements MessageService {

	@Resource
	private TbMessageMapper messageMapper;

	@Override
	public TbMessage selectByPrimaryKey(Integer messId) {
		// TODO Auto-generated method stub
		return messageMapper.selectByPrimaryKey(messId);
	}

	@Override
	public List<TbMessage> selectByExample(TbMessageExample example) {
		// TODO Auto-generated method stub
		return messageMapper.selectByExample(example);
	}

	@Override
	public List<TbMessage> selectMoreByExample(TbMessageExample example,
			int pageIndex, int pageSize) {
		// TODO Auto-generated method stub
		PageHelper.startPage(pageIndex,pageSize);
		return messageMapper.selectByExample(example);
	}
}
