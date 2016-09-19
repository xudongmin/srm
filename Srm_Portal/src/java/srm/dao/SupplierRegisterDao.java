/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package srm.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import srm.entity.Country;
import srm.entity.Currency;
import srm.entity.Material;
import srm.entity.SupplierRegister;
import srm.entity.SupplierRegisterInfo;

/**
 *
 * @author zac2078106
 */
public interface SupplierRegisterDao {
    
    /**
     * 供应商注册信息存储到CUX_SRM_SUP_REG表中
     * @param supReg
     * @throws SQLException 
     */
    void insertSupplierRegister(SupplierRegister supReg)throws SQLException;
    
    /**
     * 供应商关联信息存储到CUX_SRM_SUP_REG_INFO表中
     * @param supRegInfo
     * @throws SQLException 
     */
    void insertSupplierRegisterInfo(SupplierRegisterInfo supRegInfo)throws SQLException;
    
    /**
     * 获取国家
     * @return 
     * @throws SQLException 
     */
    List<Country> getCountry() throws SQLException;
    
    /**
     * 获取货币
     * @return
     * @throws SQLException 
     */
    List<Currency> getCurrency() throws SQLException;
    
    /**
     * 获取表CUX_SRM_SUP_REG的ID
     * @return
     * @throws SQLException 
     */
    String getSupRegID()throws SQLException;
    
    /**
     * 获取供应商注册信息
     * @param supregId
     * @return
     * @throws SQLException 
     */
    List<SupplierRegister> getSupReg(Map supregId) throws SQLException;
    
    /**
     * 获取供应商关联信息
     * @param supregId
     * @return
     * @throws SQLException 
     */
    List<SupplierRegisterInfo> getSupRegInfo(Map supregId) throws SQLException;
    
    /**
     * 供应商信息注册
     * @param map
     * @throws SQLException 
     */
    void supplier_register(Map map) throws SQLException;
    
    /**
     * 通过ID修改供应商信息
     * @param supreg
     * @throws SQLException 
     */
    void updateSupplierByID(SupplierRegister supreg) throws SQLException;
    
    /**
     * 通过SupregId修改供应商关联信息
     * @param map
     * @throws SQLException 
     */
    void updateSupplierInfoBySupregId(Map map) throws SQLException;
    
    /**
     * 获取物料大类
     * @return
     * @throws SQLException 
     */
    List<Material> getMaterial() throws SQLException;
}
