/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package srm.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import srm.dao.SupplierRegisterDao;
import srm.dao.SupplierRegisterDaoImpl;
import srm.entity.Country;
import srm.entity.Currency;
import srm.entity.Material;
import srm.entity.SupplierRegister;
import srm.entity.SupplierRegisterInfo;

/**
 *
 * @author zac2078106
 */
public class SupplierRegisterServiceImpl implements SupplierRegisterService {

    private SupplierRegisterDao supRegDao = null;

    public SupplierRegisterServiceImpl(SupplierRegisterDao supRegDao) {
        this.supRegDao = supRegDao;
    }

    public SupplierRegisterServiceImpl() {
        supRegDao = new SupplierRegisterDaoImpl();
    }
    /**
     * 供应商注册信息存储到数据库中
     * @param supReg
     * @param supRegInfos
     * @return
     */
    @Override
    public boolean insertSupplierRegister(SupplierRegister supReg, List<SupplierRegisterInfo> supRegInfos) {
        boolean isSuccess = false;
        try {
            for(SupplierRegisterInfo supRegInfo:supRegInfos){
                //当业务联系人为空时，则不插入CUX_SRM_SUP_REG_INFO表
                if(supRegInfo.getContancts_name() != null && !supRegInfo.getContancts_name().isEmpty()){
                    supRegDao.insertSupplierRegisterInfo(supRegInfo);
                }
            }
            supRegDao.insertSupplierRegister(supReg);
            isSuccess = true;
        } catch (SQLException ex) {
            Logger.getLogger(SupplierRegisterServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
        } 
        return isSuccess;
    }
    
    /**
     * 获取国家
     * @return
     * @throws SQLException 
     */
    @Override
    public List<Country> getCountry() throws SQLException {
        return supRegDao.getCountry();
    }

    /**
     * 获取货币
     * @return
     * @throws SQLException 
     */
    public List<Currency> getCurrency() throws SQLException {
        return supRegDao.getCurrency();
    }

    /**
     * 获取表CUX_SRM_SUP_REG的ID
     * @return
     * @throws SQLException 
     */
    public String getSupRegID() throws SQLException {
        return supRegDao.getSupRegID();
    }

    /**
     * 获取供应商注册信息
     * @param supregId
     * @return
     * @throws SQLException 
     */
    public List<SupplierRegister> getSupReg(Map supregId) throws SQLException {
        return supRegDao.getSupReg(supregId);
    }

    /**
     * 获取供应商关联信息
     * @param supregId
     * @return
     * @throws SQLException 
     */
    public List<SupplierRegisterInfo> getSupRegInfo(Map supregId) throws SQLException {
        return supRegDao.getSupRegInfo(supregId);
    }
    
    /**
     * 供应商信息注册
     * @param map
     * @return 
     * @throws SQLException 
     */
    public boolean supplier_register(Map map) throws SQLException {
        boolean floag = false;
        try{
            supRegDao.supplier_register(map);
            floag = true;
        }catch(SQLException ex){
            Logger.getLogger(SupplierRegisterServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return floag;
    }

    /**
     * 通过ID修改供应商主表信息
     * @param supreg
     * @return 
     * @throws SQLException 
     */
    public boolean updateSupplierByID(SupplierRegister supreg) throws SQLException {
        boolean floag = false;
        try{
            supRegDao.updateSupplierByID(supreg);
            floag = true;
        }catch(SQLException ex){
            Logger.getLogger(SupplierRegisterServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return floag;
    }

    /**
     * 通过SupregId修改供应商关联信息
     * @param map
     * @return 
     * @throws SQLException 
     */
    public boolean updateSupplierInfoBySupregId(Map map) throws SQLException {
        boolean floag = false;
        try{
            supRegDao.updateSupplierInfoBySupregId(map);
            floag = true;
        }catch(SQLException ex){
            Logger.getLogger(SupplierRegisterServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return floag;
    }

    /**
     * 修改供应商注册信息
     * @param supreg
     * @param supinfoMap
     * @return
     * @throws SQLException 
     */
    public boolean updateSupplier(SupplierRegister supreg, List<Map> supinfoMap) throws SQLException {
        boolean isSuccess = false;
        try{
            supRegDao.updateSupplierByID(supreg);
            for (Map supinfo : supinfoMap) {
                supRegDao.updateSupplierInfoBySupregId(supinfo);
            }
            isSuccess = true;
        }catch(SQLException ex){
            Logger.getLogger(SupplierRegisterServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return isSuccess;
    }

    /**
     * 获取物料大类
     * @return
     * @throws SQLException 
     */
    public List<Material> getMaterial() throws SQLException {
        return supRegDao.getMaterial();
    }

}
