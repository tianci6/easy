package com.eg.service;

import com.eg.mapper.TickectMapper;
import com.eg.mapper.UserMapper;
import com.eg.pojo.Tickect;
import com.eg.util.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;

public class TickectService {
    SqlSessionFactory factory = SqlSessionFactoryUtils.getSqlSessionFactory();
     public List<Tickect> selectAll(){
        SqlSession sqlSession = factory.openSession();
        TickectMapper mapper = sqlSession.getMapper(TickectMapper.class);
        List<Tickect> tickects = mapper.selectAll();
        sqlSession.close();
        return tickects;
    }

    public void add(Tickect tickect){

        //2. 获取SqlSession
        SqlSession sqlSession = factory.openSession();
        TickectMapper mapper = sqlSession.getMapper(TickectMapper.class);
        mapper.add(tickect);
        sqlSession.commit();
        sqlSession.close();
    }
    public Tickect selectById(int id){
        SqlSession sqlSession = factory.openSession();
        TickectMapper mapper = sqlSession.getMapper(TickectMapper.class);
        Tickect tickect = mapper.selectById(id);
        sqlSession.close();
        return tickect;
    }

    public void update(Tickect tickect){
        SqlSession sqlSession = factory.openSession();
        TickectMapper mapper = sqlSession.getMapper(TickectMapper.class);
        mapper.update(tickect);
        sqlSession.commit();
        sqlSession.close();
    }

    public List<Tickect> selectByemail(String email){
        SqlSession sqlSession = factory.openSession();
        TickectMapper mapper = sqlSession.getMapper(TickectMapper.class);
        List<Tickect> tickects = mapper.selectByemail(email);
        sqlSession.close();
        return tickects;

    }


}
