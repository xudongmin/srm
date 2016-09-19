/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package srm.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import srm.entity.PurBidAnnouncement;

/**
 *
 * @author zjl2084149
 */
public interface PurBidDao {
    void insertPurBidAnnouncement(Map paramMap) throws SQLException;
    List<PurBidAnnouncement> getAllPurBidAnnouncement() throws SQLException;
    List<PurBidAnnouncement> getPurBidAnnouncement(Map map) throws SQLException;
    public void updatePurBidAnnouncement(Map map) throws SQLException ;
}
