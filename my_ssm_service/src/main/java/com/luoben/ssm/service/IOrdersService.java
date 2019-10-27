package com.luoben.ssm.service;

import com.luoben.ssm.domain.Orders;

import java.util.List;

public interface IOrdersService {

    public List<Orders> findAll(int page,int size) throws Exception ;

    Orders findById(Integer ordersId)throws Exception ;
}
