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
import srm.dao.CuxZbDao;
import srm.dao.CuxZbDaoImpl;
import srm.entity.CUX_PON_ZB_HEADERS_ALL;
import srm.entity.CUX_SRM_ATTACHMENT;
import srm.entity.CUX_TS_HEADERS_ALL;
import srm.entity.CUX_TZ_HEADERS_ALL;
import srm.entity.CUX_ZB_HEADERS_ALL;

/**
 *
 * @author zac2078106
 */
public class CuxZbServiceImpl implements CuxZbService{
    private CuxZbDao zbDao = null;

    public CuxZbServiceImpl(CuxZbDao dao) {
        this.zbDao = dao;
    }

    public CuxZbServiceImpl() {
        zbDao = new CuxZbDaoImpl();
    }
    
    /**
     * 从表中查询招标公告
     * @return
     * @throws SQLException 
     */
    public List<CUX_ZB_HEADERS_ALL> getZbHeadersAll() throws SQLException {
        return zbDao.getZbHeadersAll();
    }
    /**
     * //通过ID查询招标公告信息
     * @return
     * @throws SQLException 
     */
    public List<CUX_ZB_HEADERS_ALL> getZbHeadersAllById(Map map) throws SQLException {
        return zbDao.getZbHeadersAllById(map);
    }
    /**
     * 创建招标公告和附件信息插入表中
     * @param headers
     * @return 
     */
    public boolean insertZbHeadersAll(CUX_ZB_HEADERS_ALL headers,List<CUX_SRM_ATTACHMENT> srmAtts){
        boolean isSuccess = false;
        try {
            //如果发布公告有附件，把附件信息插入附件表中
            for(CUX_SRM_ATTACHMENT srmAtt:srmAtts){
                if(srmAtt.getFilename() != null && !srmAtt.getFilename().isEmpty()){
                    zbDao.insertSrmAtt(srmAtt);
                }
            }
            zbDao.insertZbHeadersAll(headers);
            isSuccess = true;
        } catch (SQLException ex) {
            Logger.getLogger(CuxZbServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return isSuccess;
    }
    /**
     * 
     * @return
     * @throws SQLException 
     */
    public List<CUX_PON_ZB_HEADERS_ALL> getPonZbHeadersAll() throws SQLException {
        return zbDao.getPonZbHeadersAll();
    }
    /**
     * 插入招标报名信息到表中
     * @param headers
     * @return 
     */
    public boolean insertPonZbHeadersAll(CUX_PON_ZB_HEADERS_ALL headers,List<CUX_SRM_ATTACHMENT> srmAtts) {
        boolean isSuccess = false;
        try {
            //如果报名附件，把附件信息插入附件表中
            for(CUX_SRM_ATTACHMENT srmAtt:srmAtts){
                if(srmAtt.getFilename() != null && !srmAtt.getFilename().isEmpty()){
                    zbDao.insertSrmAtt(srmAtt);
                }
            }
            zbDao.insertPonZbHeadersAll(headers);
            isSuccess = true;
        } catch (SQLException ex) {
            Logger.getLogger(CuxZbServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return isSuccess;
    }
    /**
     * 查询所有投诉与反馈信息
     * @return
     * @throws SQLException 
     */
    public List<CUX_TS_HEADERS_ALL> getTsHeadersAll() throws SQLException {
        return zbDao.getTsHeadersAll();
    }
    /**
     * 插入投诉与反馈信息
     * @param headers
     * @return
     * @throws SQLException 
     */
    public boolean insertTsHeadersAll(CUX_TS_HEADERS_ALL headers,List<CUX_SRM_ATTACHMENT> srmAtts) throws SQLException {
        boolean isSuccess = false;
        try {
            //如果投诉反馈有附件，把附件信息插入附件表中
            for(CUX_SRM_ATTACHMENT srmAtt:srmAtts){
                if(srmAtt.getFilename() != null && !srmAtt.getFilename().isEmpty()){
                    zbDao.insertSrmAtt(srmAtt);
                }
            }
            zbDao.insertTsHeadersAll(headers);
            isSuccess = true;
        } catch (SQLException ex) {
            Logger.getLogger(CuxZbServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return isSuccess;
    }
    /**
     * 查询通知公告信息
     * @return
     * @throws SQLException 
     */
    public List<CUX_TZ_HEADERS_ALL> getTzHeadersAll() throws SQLException {
        return zbDao.getTzHeadersAll();
    }

    /**
     * 获取投诉信息表序列ID
     * @return
     * @throws SQLException 
     */
    public String getTsHeadersID() throws SQLException {
        return zbDao.getTsHeadersID();
    }

    public List<CUX_PON_ZB_HEADERS_ALL> getPonZbHeadersAllById(Map map) throws SQLException {
        return zbDao.getPonZbHeadersAllById(map);
    }
    /**
     * 回复投诉内容
     * @param map
     * @return
     * @throws SQLException 
     */
    public boolean updateCuxTsHeadersAllByID(Map map) throws SQLException {
        boolean floag = false;
        try{
            zbDao.updateCuxTsHeadersAllByID(map);
            floag = true;
        }catch(SQLException ex){
            Logger.getLogger(SupplierRegisterServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return floag;
    }
    /**
     * 根据ID删除招标公告信息以及相关联的报名信息
     * @param map
     * @return
     * @throws SQLException 
     */
    public boolean deleteCuxHeadersAll(Map map)throws SQLException{
        boolean floag = false;
        try{
            zbDao.deleteZbHeadersAllById(map);
            
            zbDao.deletePonZbHeadersAllById(map);
            floag = true;
        }catch(SQLException ex){
            Logger.getLogger(SupplierRegisterServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return floag;
    }
    /**
     * 根据供应商名称查找供应商编码
     * @param str
     * @return
     * @throws SQLException 
     */
    public String getSupCodeBySupName(String str) throws SQLException {
        return zbDao.getSupCodeBySupName(str);
    }
	/**
     * 条件查询投诉信息
     * @param map
     * @return
     * @throws SQLException 
     */
	  public List<CUX_TS_HEADERS_ALL> findTsHeadersListByItems(Map map) throws SQLException {
        return zbDao.findTsHeadersListByItems(map);
    }
    
    /**
     * //通过条件查询采购招标公告信息
     * @param map
     * @return
     * @throws SQLException 
     */
    public List<CUX_ZB_HEADERS_ALL> findZbHeadersListByItems(Map map) throws SQLException {
        return zbDao.findZbHeadersListByItems(map);
    }
    /**
     * 获取招标信息表序列ID
     * @return
     * @throws SQLException 
     */
    public String getZbHeadersID() throws SQLException {
        return zbDao.getZbHeadersID();
    }
    /**
     * 获取附件表信息ID
     * @return
     * @throws SQLException 
     */
    public String getFileID() throws SQLException {
        return zbDao.getFileID();
    }
    /**
     * 通过关联ID和附件类型查询附件信息
     * @return
     * @throws SQLException 
     */
    public List<CUX_SRM_ATTACHMENT> getSrmAtt(Map map) throws SQLException {
        return zbDao.getSrmAtt(map);
    }
    /**
     * 附件信息插入表中
     * @param att
     * @return
     * @throws SQLException 
     */
    public boolean insertSrmAtt(CUX_SRM_ATTACHMENT att) throws SQLException {
        boolean isSuccess = false;
        try {
            zbDao.insertSrmAtt(att);
            isSuccess = true;
        } catch (SQLException ex) {
            Logger.getLogger(CuxZbServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return isSuccess;
    }

    @Override
    public String getSrmAttPath(String str) throws SQLException {
        return zbDao.getSrmAttPath(str);
    }
    
}
