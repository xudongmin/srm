/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package srm.dao;

import byd.platform.base.SqlExecutor;
import com.ibatis.sqlmap.client.SqlMapClient;
import db.Ibatis;
import db.Ibatis_nofilter;
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
public class SupplierRegisterDaoImpl implements SupplierRegisterDao{
//    private SqlExecutor sqlMapClient=Ibatis.getClient();
    private final static SqlMapClient sqlMapClient = Ibatis_nofilter.getSQLMap();//本地调试用
    
    /**
     * 供应商注册信息存储到CUX_SRM_SUP_REG表中
     * @param supReg
     * @throws SQLException 
     */
    @Override
    public void insertSupplierRegister(SupplierRegister supReg) throws SQLException {
        sqlMapClient.insert("CUX_SRM_SUP_REG.insertSupplierRegister", supReg);
    }

    /**
     * 供应商关联信息存储到CUX_SRM_SUP_REG_INFO表中
     * @param supRegInfo
     * @throws SQLException 
     */
    @Override
    public void insertSupplierRegisterInfo(SupplierRegisterInfo supRegInfo) throws SQLException {
        sqlMapClient.insert("CUX_SRM_SUP_REG_INFO.insertSupplierRegisterInfo", supRegInfo);
    }

    @Override
    public List<Country> getCountry() throws SQLException {
        return sqlMapClient.queryForList("FND_TERRITORIES_VL.getCountry");
    }

    @Override
    public List<Currency> getCurrency() throws SQLException {
        return sqlMapClient.queryForList("FND_CURRENCIES_VL.getCurrency");
    }

    @Override
    public String getSupRegID() throws SQLException {
        return (String)sqlMapClient.queryForObject("CUX_SRM_SUP_REG.getSupRegID");
    }

    @Override
    public List<SupplierRegister> getSupReg(Map supregId) throws SQLException {
        return sqlMapClient.queryForList("CUX_SRM_SUP_REG.getSupReg", supregId);
    }

    @Override
    public List<SupplierRegisterInfo> getSupRegInfo(Map supregId) throws SQLException {
        return sqlMapClient.queryForList("CUX_SRM_SUP_REG_INFO.getSupRegInfo", supregId);
    }

    @Override
    public void supplier_register(Map map) throws SQLException {
        sqlMapClient.queryForObject("CUX_SRM_SUP_REG.supplier_register", map);
    }

    @Override
    public void updateSupplierByID(SupplierRegister supreg) throws SQLException {
        sqlMapClient.update("CUX_SRM_SUP_REG.updateSupplierByID", supreg);
    }

    @Override
    public void updateSupplierInfoBySupregId(Map map) throws SQLException {
        sqlMapClient.update("CUX_SRM_SUP_REG_INFO.updateSupplierInfoBySupregId", map);
    }

    @Override
    public List<Material> getMaterial() throws SQLException {
        return sqlMapClient.queryForList("FND_FLEX_VALUE.getMaterial");
    }
    
}
