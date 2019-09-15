package com.ext.cms.manager.main.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ext.cms.dao.main.ChannelDao2;
import com.ext.cms.manager.main.ChannelMng2;
import com.jeecms.cms.entity.main.Channel;
import com.jeecms.cms.manager.main.impl.ChannelMngImpl;

@Service
@Transactional
public class ChannelMngImpl2 extends ChannelMngImpl implements ChannelMng2 {

	@Autowired
	private ChannelDao2 channelDao2;

	@Override
	@Transactional(readOnly = true)
	public List<Channel> getListBySiteIdForTag(Integer siteId, boolean hasContentOnly, Boolean recommend, int orderBy,
			Integer first, Integer count) {
		return channelDao2.getListBySiteId(siteId, hasContentOnly, true, true, recommend, orderBy, first, count);
	}

	@Override
	public List<Channel> getListByIdsForTag(Integer[] ids, int orderBy) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object getChildListByParentIdForTag(Integer parentId, boolean hasContentOnly, Boolean recommend, int orderBy,
			Integer first, Integer count) {
		return channelDao2.getChildListByParentId(parentId, hasContentOnly, true, true, recommend, orderBy, first,
				count);
	}

	@Override
	public List<Channel> getChildListForTag(boolean hasContentOnly, Boolean recommend, int orderBy, int first,
			int count) {
		return channelDao2.getChildList(hasContentOnly, true, true, recommend, orderBy, first, count);
	}

}