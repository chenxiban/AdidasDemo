package com.cyj.adidas.daos;

import java.util.List;

import com.cyj.adidas.entity.Review;

public interface ReviewDao {
	
	/**
	 * 查询某个用户评论中的所有商品 (non-Javadoc)
	 */
	public List<Review> getAllReviews(int Pid);
	
	/**
	 * 查询某个用户评论中的所有商品 (non-Javadoc)
	 */
	public Review getAllReview(int Pid);
	
	/**
	 * 查询Pid删除评论 (non-Javadoc)
	 */
	public int delAllReview(int Pid);
	
}
