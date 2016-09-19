/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package srm.dao;

import java.sql.SQLException;
import java.util.Map;

/**
 *
 * @author zjl2084149
 */
public interface SendResultDao {
    String sendResult(String pUserID) throws SQLException;
}
