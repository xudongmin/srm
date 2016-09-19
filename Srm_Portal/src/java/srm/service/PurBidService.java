/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package srm.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import srm.entity.PurBidAnnouncement;

/**
 *
 * @author zjl2084149
 */
public interface PurBidService {
    public boolean insertPurBidAnnouncement(Map map);
    public List<PurBidAnnouncement> getAllPurBidAnnouncement() throws SQLException ;
    public List<PurBidAnnouncement> getPurBidAnnouncement(Map map) throws SQLException ;
    public boolean updatePurBidAnnouncement(Map map) throws SQLException ;
}
