/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package srm.service;

import java.sql.SQLException;
import srm.dao.SendResultDao;
import srm.dao.SendResultDaoImpl;

/**
 *
 * @author zjl2084149
 */
public class SendResultServiceImpl implements SendResultService{
    
    private SendResultDao dao = null;

    public SendResultServiceImpl(SendResultDao indao) {
        this.dao = indao;
    }

    public SendResultServiceImpl() {
        dao = new SendResultDaoImpl();
    }
    
    public String sendResult(String pUserId) throws SQLException {
        return dao.sendResult(pUserId);
    }
}
