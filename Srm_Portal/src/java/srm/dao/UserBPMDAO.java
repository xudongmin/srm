/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package srm.dao;

import java.sql.SQLException;

/**
 *
 * @author zjl2084149
 */
public interface UserBPMDAO {
    String getBPMUsername(String srmUserName) throws SQLException;
}
