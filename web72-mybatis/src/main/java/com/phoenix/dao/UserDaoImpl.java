package com.phoenix.dao;

import com.phoenix.pojo.User;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;


/**
 * Dao
 * @author lx
 *
 */
public class UserDaoImpl implements UserDao {

	//注入
	private SqlSessionFactory sqlSessionFactory;
	public UserDaoImpl(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	//通过用户ID查询一个用户
	public User selectUserById(Integer id){
		SqlSession sqlSession = sqlSessionFactory.openSession();
		return sqlSession.selectOne("test.findUserById", id);
	}
	//通过用户名称模糊查询
	public List<User> selectUserByUsername(Integer id){
		SqlSession sqlSession = sqlSessionFactory.openSession();
		return sqlSession.selectList("test.findUserById", id);
	}
	
}
