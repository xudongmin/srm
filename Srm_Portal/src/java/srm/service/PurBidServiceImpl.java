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
import srm.entity.PurBidAnnouncement;

/**
 *
 * @author zjl2084149
 */
public class PurBidServiceImpl implements PurBidService {

    private PurBidDao dao = null;

    public PurBidServiceImpl(PurBidDao indao) {
        this.dao = indao;
    }

    public PurBidServiceImpl() {
        dao = new PurBidDaoImpl();
    }

    @Override
    public boolean insertPurBidAnnouncement(Map map) {
        boolean isSuccess = false;
        try {
            dao.insertPurBidAnnouncement(map);
            isSuccess = true;
        } catch (SQLException ex) {
            Logger.getLogger(PurBidServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return isSuccess;
    }

    public List<PurBidAnnouncement> getAllPurBidAnnouncement() throws SQLException {
        return dao.getAllPurBidAnnouncement();
    }

    public List<PurBidAnnouncement> getPurBidAnnouncement(Map map) throws SQLException {
        return dao.getPurBidAnnouncement(map);
    }

    public boolean updatePurBidAnnouncement(Map map) throws SQLException {
        boolean isSuccess = false;
        try {
            dao.updatePurBidAnnouncement(map);
            isSuccess = true;
        } catch (SQLException ex) {
            Logger.getLogger(PurBidServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return isSuccess;
    }
}