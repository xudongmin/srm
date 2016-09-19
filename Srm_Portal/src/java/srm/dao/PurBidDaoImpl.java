/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package srm.dao;

import com.ibatis.sqlmap.client.SqlMapClient;
import db.Ibatis_nofilter;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import srm.entity.PurBidAnnouncement;

/**
 *
 * @author zjl2084149
 */
public class PurBidDaoImpl implements PurBidDao{
    
//    private SqlExecutor sqlMapClient=Ibatis.getClient();
    private SqlMapClient sqlMapClient = Ibatis_nofilter.getSQLMap();//本地测试
    
    
    public void insertPurBidAnnouncement(Map map) throws SQLException {
        sqlMapClient.insert("purbid_announcement.insertPurBidAnnouncement", map);
    }
    public List<PurBidAnnouncement> getAllPurBidAnnouncement() throws SQLException {
        return sqlMapClient.queryForList("purbid_announcement.getAllPurBidAnnouncement");
    }
    public List<PurBidAnnouncement> getPurBidAnnouncement(Map map) throws SQLException {
        return sqlMapClient.queryForList("purbid_announcement.getPurBidAnnouncement", map);
    }
    public void updatePurBidAnnouncement(Map map) throws SQLException {
        sqlMapClient.update("purbid_announcement.updatePurBidAnnouncement", map);
    }
}
