package com.luoben.ssm.service.Impl;

import com.luoben.ssm.dao.IProductDao;
import com.luoben.ssm.domain.Product;
import com.luoben.ssm.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional  //spring 声明式事务 注解方式
//Transactional(propagation= Propagation.SUPPORTS,readOnly=true)//只读型事务的配置
public class ProductServiceImpl implements IProductService {

    @Autowired
    private IProductDao productDao;

    @Override
    public List<Product> findAll() throws Exception {
        return productDao.findAll();
    }

    @Override
    public void save(Product product) throws Exception {
        productDao.save(product);
    }
}
