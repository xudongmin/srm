/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package srm.dao;

import com.ibatis.sqlmap.client.SqlMapClient;
import db.Ibatis_nofilter;
import java.sql.SQLException;

/**
 *
 * @author zjl2084149
 */
public class UserBPMDAOImpl implements UserBPMDAO{
    //    private SqlExecutor sqlMapClient=Ibatis.getClient();
    private SqlMapClient sqlMapClient = Ibatis_nofilter.getSQLMap();//本地测试
    
    public String getBPMUsername(String srmUserName) throws SQLException {
        return  (String) sqlMapClient.queryForObject("SRM_USER_BPM.getSRMUserName", srmUserName);
    }
}
