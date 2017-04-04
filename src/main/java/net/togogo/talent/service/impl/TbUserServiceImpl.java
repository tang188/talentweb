package net.togogo.talent.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import net.togogo.talent.domain.TbUser;
import net.togogo.talent.domain.TbUserExample;
import net.togogo.talent.domain.TbUserExample.Criteria;
import net.togogo.talent.mapper.TbUserMapper;
import net.togogo.talent.service.ITbUserService;

@Service("tbUserService")
public class TbUserServiceImpl implements ITbUserService {

	@Resource
	TbUserMapper tbUserMapper;
	
	/**
	 * 用户登录操作
	 */
	@Override
	public TbUser login(String userEmail, String userPassword) {
		TbUserExample example = new TbUserExample();
		Criteria cr = example.createCriteria();
		cr.andUserEmailEqualTo(userEmail);
		List<TbUser> userList = tbUserMapper.selectByExample(example);
		if(userList.size() > 0) {
			TbUser user = userList.get(0);
			if(user.getUserPassword().equals(userPassword)) {
				return user;
			}
		}
		return null;
	}
	
	@Override
	public int countByExample(TbUserExample example) {
		return tbUserMapper.countByExample(example);
	}

	@Override
	public int deleteByExample(TbUserExample example) {
		return tbUserMapper.deleteByExample(example);
	}

	@Override
	public int deleteByPrimaryKey(Integer userId) {
		return tbUserMapper.deleteByPrimaryKey(userId);
	}

	@Override
	public int insert(TbUser record) {
		return tbUserMapper.insert(record);
	}

	@Override
	public int insertSelective(TbUser record) {
		return tbUserMapper.insertSelective(record);
	}

	@Override
	public List<TbUser> selectByExample(TbUserExample example) {
		return tbUserMapper.selectByExample(example);
	}

	@Override
	public TbUser selectByPrimaryKey(Integer userId) {
		return tbUserMapper.selectByPrimaryKey(userId);
	}

	@Override
	public int updateByExampleSelective(TbUser record, TbUserExample example) {
		return tbUserMapper.updateByExampleSelective(record, example);
	}

	@Override
	public int updateByExample(TbUser record, TbUserExample example) {
		return tbUserMapper.updateByExample(record, example);
	}

	@Override
	public int updateByPrimaryKeySelective(TbUser record) {
		return tbUserMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(TbUser record) {
		return tbUserMapper.updateByPrimaryKey(record);
	}

}
