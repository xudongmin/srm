/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package srm.service;

import java.sql.SQLException;
import srm.dao.ServerDao;
import srm.dao.ServerDaoImpl;

/**
 *
 * @author zjl2084149
 */
public class ServerServiceImpl implements ServerService {

    private ServerDao dao = null;

    public ServerServiceImpl(ServerDao indao) {
        this.dao = indao;
    }

    public ServerServiceImpl() {
        dao = new ServerDaoImpl();
    }

    public String getServerName() {
        return dao.getServerName();
    }
}
