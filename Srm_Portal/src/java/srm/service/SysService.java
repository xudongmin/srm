/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package srm.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import srm.entity.SysAnnouncement;

/**
 *
 * @author zjl2084149
 */
public interface SysService {
    public boolean insertSysAnnouncement(Map map);
    public List<SysAnnouncement> getAllSysAnnouncement() throws SQLException ;
    public List<SysAnnouncement> getSysAnnouncement(Map map) throws SQLException ;
    public boolean updateSysAnnouncement(Map map);
}
