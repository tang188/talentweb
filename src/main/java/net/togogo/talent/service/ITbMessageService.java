package net.togogo.talent.service;

import java.util.List;

import net.togogo.talent.domain.TbMessage;
import net.togogo.talent.domain.TbMessageExample;

public interface ITbMessageService {
	List<TbMessage> selectByExample(TbMessageExample example,int pageIndex,int pageSize);
}
