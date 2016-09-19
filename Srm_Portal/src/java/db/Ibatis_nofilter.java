/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import java.io.IOException;
import java.io.Reader;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author zjl2084149
 */
public class Ibatis_nofilter {

    private static SqlMapClient sqlMapClient = null;
//    private SqlExecutor sqlMapClient;

    static {
        try {
            Reader reader = Resources.getResourceAsReader("bps/datasource_srm.xml");
            sqlMapClient = SqlMapClientBuilder.buildSqlMapClient(reader);
            reader.close();
        } catch (IOException e) {
            throw new RuntimeException("Something bad happened while building the SqlMapClient instance." + e, e);
        }catch (Exception e) {
            throw new RuntimeException("Something bad happened while building the SqlMapClient instance." + e, e);
        }
    }
    
    public static SqlMapClient getSQLMap() {
        return sqlMapClient;
    }

    public static void beginTrans() throws SQLException {
        sqlMapClient.startTransaction();
    }

    public static void commitTrans() throws SQLException {
        sqlMapClient.commitTransaction();
    }

    public static void beginTransWithBatch() throws SQLException {
        sqlMapClient.startTransaction();
        sqlMapClient.startBatch();
    }

    public static void commitTransWithBatch() throws SQLException {
        sqlMapClient.executeBatch();
        sqlMapClient.commitTransaction();
    }

    public static void beginWithBatch() throws SQLException {
        sqlMapClient.startBatch();
    }

    public static void commitWithBatch() throws SQLException {
        sqlMapClient.executeBatch();
    }

    public static void endTrans() throws SQLException {
        sqlMapClient.endTransaction();
    }
}
