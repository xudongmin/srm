/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package srm.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import srm.entity.Country;
import srm.entity.Currency;
import srm.entity.Material;
import srm.entity.SupplierRegister;
import srm.entity.SupplierRegisterInfo;

/**
 *供应商注册服务类
 * @author zac2078106
 */
public interface SupplierRegisterService {
    /**
     * 供应商注册信息存储到数据库中
     * @param supReg
     * @param supRegInfos
     * @return 
     */
    boolean insertSupplierRegister(SupplierRegister supReg,List<SupplierRegisterInfo> supRegInfos);
    
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
     * @return 
     * @throws SQLException 
     */
    boolean supplier_register(Map map) throws SQLException;
    
    /**
     * 通过ID修改供应商信息
     * @param supreg
     * @return 
     * @throws SQLException 
     */
    boolean updateSupplierByID(SupplierRegister supreg) throws SQLException;
    
    /**
     * 通过SupregId修改供应商关联信息
     * @param map
     * @return 
     * @throws SQLException 
     */
    boolean updateSupplierInfoBySupregId(Map map) throws SQLException;
    
    boolean updateSupplier(SupplierRegister supreg,List<Map> supinfoMap) throws SQLException;
    
    /**
     * 获取物料大类
     * @return
     * @throws SQLException 
     */
    List<Material> getMaterial() throws SQLException;
}
