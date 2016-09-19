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
import srm.entity.SysAnnouncement;

/**
 *
 * @author zjl2084149
 */
public class SysDaoImpl implements SysDao{
    
    //    private SqlExecutor sqlMapClient=Ibatis.getClient();
    private SqlMapClient sqlMapClient = Ibatis_nofilter.getSQLMap();//本地测试
    
    
    public void insertSysAnnouncement(Map map) throws SQLException {
        sqlMapClient.insert("sys_announcement.insertSysAnnouncement", map);
    }
    public List<SysAnnouncement> getAllSysAnnouncement() throws SQLException {
        return sqlMapClient.queryForList("sys_announcement.getAllSysAnnouncement");
    }
    public List<SysAnnouncement> getSysAnnouncement(Map map) throws SQLException {
        return sqlMapClient.queryForList("sys_announcement.getSysAnnouncement", map);
    }
    public void updateSysAnnouncement(Map map) throws SQLException {
        sqlMapClient.update("sys_announcement.updateSysAnnouncement", map);
    }
}
