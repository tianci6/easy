package com.eg.mapper;

import com.eg.pojo.Tickect;
import com.eg.pojo.Tickect;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface TickectMapper {

    /**
     * 查询所有
     * @return
     */
    @Select("select * from tb_tickect")
    @ResultMap("tickectResultMap")
    List<Tickect> selectAll();

    @Insert("insert into tb_tickect values(null,#{firstName},#{lastName},#{email},#{phone},#{floorUnit},#{category},#{date},#{description},'1')")
    void add(Tickect tickect);

    /**
     * 根据id查询
     * @param id
     * @return
     */
    @Select("select * from tb_tickect where id = #{id}")
    @ResultMap("tickectResultMap")
    Tickect selectById(int id);

    @Select("select * from tb_tickect where email = #{email}")
    @ResultMap("tickectResultMap")
    List<Tickect> selectByemail(String email);


    /**
     * 修改
     * @param status
     */
    @Update("update tb_tickect set status = #{status} where id = #{id}")
    @ResultMap("tickectResultMap")
    void update(Tickect tickect);


}
