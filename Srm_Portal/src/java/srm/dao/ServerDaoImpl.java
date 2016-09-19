/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package srm.dao;

import com.ibatis.sqlmap.client.SqlMapClient;
import db.Ibatis_nofilter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author zjl2084149
 */
public class ServerDaoImpl implements ServerDao{
    
    private SqlMapClient sqlMapClient = Ibatis_nofilter.getSQLMap();//本地测试
    
    public String getServerName(){
        try {
            return (String)sqlMapClient.queryForObject("SRM_GETSERVER.getServerName");
        } catch (SQLException ex) {
            Logger.getLogger(ServerDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
}
