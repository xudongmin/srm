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
import srm.dao.PurBidDao;
import srm.dao.PurBidDaoImpl;
import srm.dao.SysDao;
import srm.dao.SysDaoImpl;
import srm.entity.PurBidAnnouncement;
import srm.entity.SysAnnouncement;

/**
 *
 * @author zjl2084149
 */
public class SysServiceImpl implements SysService{
    private SysDao dao = null;

    public SysServiceImpl(SysDao indao) {
        this.dao = (SysDao) indao;
    }

    public SysServiceImpl() {
        dao = new SysDaoImpl();
    }
    
    public boolean insertSysAnnouncement(Map map){
        boolean isSuccess = false;
        try {
            dao.insertSysAnnouncement(map);
        } catch (SQLException ex) {
            Logger.getLogger(SysServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        isSuccess = true;
        return isSuccess;
    }
    
    public List<SysAnnouncement> getAllSysAnnouncement() throws SQLException {
        return dao.getAllSysAnnouncement();
    }
    
    public List<SysAnnouncement> getSysAnnouncement(Map map) throws SQLException {
        return dao.getSysAnnouncement(map);
    }
    public boolean updateSysAnnouncement(Map map){
        boolean isSuccess = false;
        try {
            dao.updateSysAnnouncement(map);
            isSuccess = true;
        } catch (SQLException ex) {
            Logger.getLogger(SysServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return isSuccess;
    }
}
