/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package srm.service;

import java.sql.SQLException;
import srm.dao.UserBPMDAO;
import srm.dao.UserBPMDAOImpl;

/**
 *
 * @author zjl2084149
 */
public class UserBPMServiceImpl implements UserBPMService {

    private UserBPMDAO userBMPdao = null;

    public UserBPMServiceImpl(UserBPMDAO userBMPdao) {
        this.userBMPdao = userBMPdao;
    }

    public UserBPMServiceImpl() {
        userBMPdao = new UserBPMDAOImpl();
    }

    @Override
    public String getBPMUsername(String srmUserName) throws SQLException {
        return userBMPdao.getBPMUsername(srmUserName);
    }
}
