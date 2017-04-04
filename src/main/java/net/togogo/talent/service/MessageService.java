package net.togogo.talent.service;

import java.util.List;

import net.togogo.talent.domain.TbMessage;
import net.togogo.talent.domain.TbMessageExample;

public interface MessageService {

	TbMessage selectByPrimaryKey(Integer messId);
	
	List<TbMessage> selectByExample(TbMessageExample example);

	List<TbMessage> selectMoreByExample(TbMessageExample example,int pageIndex,int pageSize);
}
