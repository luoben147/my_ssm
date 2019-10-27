package com.luoben.ssm.dao;

import com.luoben.ssm.domain.Member;
import com.luoben.ssm.domain.Orders;
import com.luoben.ssm.domain.Product;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IOrderstDao {

    /**
     * 查询所有产品信息
     * @return
     */
    @Select({"select * from orders"})
    @Results({
            @Result(id=true,property = "id",column = "id"),
            @Result(property = "orderNum",column = "orderNum"),
            @Result(property = "orderTime",column = "orderTime"),
            @Result(property = "orderStatus",column = "orderStatus"),
            @Result(property = "peopleCount",column = "peopleCount"),
            @Result(property = "payType",column = "payType"),
            @Result(property = "orderDesc",column = "orderDesc"),
            @Result(property = "product",column = "productId", javaType = Product.class,one = @One(select ="com.luoben.ssm.dao.IProductDao.findById" ))
    })
    public List<Orders> findAll() throws Exception;



    @Select({"select * from orders where id=#{ordersId}"})
    @Results({
            @Result(id=true,property = "id",column = "id"),
            @Result(property = "orderNum",column = "orderNum"),
            @Result(property = "orderTime",column = "orderTime"),
            @Result(property = "orderStatus",column = "orderStatus"),
            @Result(property = "peopleCount",column = "peopleCount"),
            @Result(property = "payType",column = "payType"),
            @Result(property = "orderDesc",column = "orderDesc"),
            @Result(property = "product",column = "productId",javaType = Product.class,one = @One(select ="com.luoben.ssm.dao.IProductDao.findById" )),
            @Result(property = "member",column = "memberId",javaType = Member.class,one = @One(select ="com.luoben.ssm.dao.IMemberDao.findById" )),
            @Result(property = "travellers",column = "id",javaType =List.class,many = @Many(select = "com.luoben.ssm.dao.ITravellerDao.findByOrdersId"))
    })
    //多表查询的 column就是指根据哪个字段去多的查询
    public Orders findById(Integer ordersId)throws Exception;
}
