package com.cyj.adidas.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.cyj.adidas.daos.ReviewDao;
import com.cyj.adidas.entity.Review;
import com.cyj.adidas.util.DBManager;

public class ReviewDaoImpl implements ReviewDao {
	private DBManager<Review> db = new DBManager<Review>();

	/**
	 * 查询某个用户评论中的所有商品 (non-Javadoc)
	 */
	@Override
	public List<Review> getAllReviews(int Pid) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Review> Review = new ArrayList<Review>();

		try {
			conn = DBManager.getConnection();
			String sql = "select r.*,u.Uname,p.Id from Review r,UserInfo u,Product p where r.Uid=u.Uid and r.Pid=p.Id and p.Id="
					+ Pid;
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Review pt = new Review();
				pt.setRid(rs.getInt("Rid"));
				pt.setUid(rs.getInt("Uid"));
				pt.setPid(rs.getInt("Pid"));
				pt.setContent(rs.getString("Content"));
				pt.setCreateTime(rs.getTimestamp("CreateTime"));
				pt.setStars(rs.getInt("Stars"));
				pt.setUname(rs.getString("Uname"));
				pt.setId(rs.getInt("Id"));
				Review.add(pt);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.closeAll(rs, pstmt, conn);
		}
		return Review;
	}

	/**
	 * 根据商品id查询评论
	 */
	public Review getAllReview(int Pid) {
		String sql="select * from Review where Pid="+Pid;
		List<Review> list = db.getObjects(sql,
				"com.cyj.adidas.entity.Review");// 将数据存入对象集合中
		if (list != null && list.size() > 0) {// 用来判断获得的对象是否为空
			return list.get(0);
		}
		return null;
	}

	/**
	 * 根据商品id查询评论
	 */
	@SuppressWarnings("static-access")
	public int delAllReview(int Pid) {
		String sql="delete from Review where Pid="+Pid;
		return db.executeUpdate(sql);
	}
}
