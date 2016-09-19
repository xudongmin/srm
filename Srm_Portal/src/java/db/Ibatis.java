/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package db;

import byd.platform.base.SqlExecutor;
import byd.platform.base.SqlExecutorManager;
import byd.platform.service.IService;
import java.sql.SQLException;
import java.util.Map;

/**
 *
 * @author zjl2084149
 */
public class Ibatis {
    private static SqlExecutorManager manager=IService.getService(SqlExecutorManager.class,"Srm");
    private static SqlExecutor executor = manager.getSqlExecutor();

    public static SqlExecutor getClient() {
        return executor;
    }

    public static SqlExecutor getClient(String userId) {
        return getClient(userId, null);
    }

    public static SqlExecutor getClient(String userId, Map mapParam) {
        return manager.getSqlExecutor(mapParam);
    }

    public static void beginTrans() throws SQLException {
        manager.startTransaction();
    }

    public static void commitTrans() throws SQLException {
        manager.commitTransaction();
    }

    public static void beginTransWithBatch() throws SQLException {
        manager.startTransaction();
        manager.startBatch();
    }

    public static void commitTransWithBatch() throws SQLException {
        manager.executeBatch();
        manager.commitTransaction();
    }

    public static void beginWithBatch() throws SQLException {
        manager.startBatch();
    }

    public static void commitWithBatch() throws SQLException {
        manager.executeBatch();
    }

    public static void endTrans() throws SQLException {
        manager.endTransaction();
    }

}
