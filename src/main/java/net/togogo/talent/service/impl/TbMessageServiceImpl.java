package net.togogo.talent.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import net.togogo.talent.domain.TbMessage;
import net.togogo.talent.domain.TbMessageExample;
import net.togogo.talent.mapper.TbMessageMapper;
import net.togogo.talent.service.ITbMessageService;
@Service("tbMessageService")
public class TbMessageServiceImpl implements ITbMessageService{

	@Resource
	private TbMessageMapper tbMessageMapper;
	@Override
	public List<TbMessage> selectByExample(TbMessageExample example,int pageIndex,int pageSize) {
		// TODO Auto-generated method stub
		return tbMessageMapper.selectByExample(example);
	}

}
