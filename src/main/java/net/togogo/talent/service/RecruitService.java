package net.togogo.talent.service;

import java.util.List;

import net.togogo.talent.domain.TbRecruit;
import net.togogo.talent.domain.TbRecruitExample;

public interface RecruitService {

	int countByExample(TbRecruitExample example);
	
	int insertSelective(TbRecruit record);
	
	int deleteByPrimaryKey(Integer recrId);
	
	int updateByPrimaryKeySelective(TbRecruit record);
	
	TbRecruit selectByPrimaryKey(Integer recrId);
	
	List<TbRecruit> selectByExample(TbRecruitExample example);

	List<TbRecruit> selectMoreByExample(TbRecruitExample example,int pageIndex,int pageSize);
}
