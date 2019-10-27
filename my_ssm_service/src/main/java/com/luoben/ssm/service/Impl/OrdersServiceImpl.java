package com.luoben.ssm.service.Impl;

import com.github.pagehelper.PageHelper;
import com.luoben.ssm.dao.IOrderstDao;
import com.luoben.ssm.domain.Orders;
import com.luoben.ssm.service.IOrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional  //spring 声明式事务 注解方式
public class OrdersServiceImpl implements IOrdersService {

    @Autowired
    private IOrderstDao orderstDao;

    @Override
    public List<Orders> findAll(int page,int size) throws Exception {
        //参数pageNum 是页码值   参数pageSize 代表是每页显示条数
        PageHelper.startPage(page,size);
        return orderstDao.findAll();
    }

    @Override
    public Orders findById(Integer ordersId) throws Exception {
        return orderstDao.findById(ordersId);
    }

}
