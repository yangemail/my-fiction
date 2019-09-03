package com.ext.cms.dao.main.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ext.cms.dao.main.CmsTopicDao2;
import com.jeecms.cms.dao.main.impl.CmsTopicDaoImpl;
import com.jeecms.cms.entity.main.CmsTopic;
import com.jeecms.common.hibernate4.Finder;

@Repository
public class CmsTopicDaoImpl2 extends CmsTopicDaoImpl implements CmsTopicDao2 {

	@SuppressWarnings("unchecked")
	public List<CmsTopic> getList(Integer channelId, boolean recommend,
			boolean desc, Integer first,Integer count, boolean cacheable) {
		Finder f = Finder.create("select bean from CmsTopic bean ");
		if (channelId != null) {
			f.append(" join bean.channels channel where channel.id=:channelId");
			f.setParam("channelId", channelId);
		}else{
			f.append(" where 1=1 ");
		}
		if (recommend) {
			f.append(" and bean.recommend=true");
		}
		if (desc) {
			f.append(" order by bean.priority desc");
		} else {
			f.append(" order by bean.priority asc");
		}
//		f.append(" order by bean.priority asc,bean.id desc");
		if(first!=null){
			f.setFirstResult(first);
		}
		if (count != null) {
			f.setMaxResults(count);
		}
		f.setCacheable(cacheable);
		return find(f);
	}
	
}
