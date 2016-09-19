/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package forms.announce;

import common.LanguageNational;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import srm.entity.SysAnnouncement;
import srm.service.SysService;
import srm.service.SysServiceImpl;
import xx.mvc.util.FormUtil;

/**
 *
 * @author zjl2084149
 */
public class SysAnnounce {

    public void onLoad(Map mapRequest, Map mapResponse) {
        String strContextId = FormUtil.getStr("strContextId", mapRequest);
        int contextId = Integer.parseInt(strContextId);
        Map map = new HashMap();
        try {
            map.put("strContextId", contextId);
            SysService service = new SysServiceImpl();
            List<SysAnnouncement> announce = service.getSysAnnouncement(map);
            if (announce == null || announce.isEmpty()) {
                throw new Exception(LanguageNational.getValue("wf0001"));
            } else {
                SysAnnouncement anc = announce.get(0);
                mapRequest.put("title", anc.getTitle());
                mapRequest.put("content", anc.getContent());
                mapRequest.put("announcer", anc.getAnnouncer());
                String time = new SimpleDateFormat("yyyy-MM-dd").format(anc.getCreation_date());
                mapRequest.put("createDate", time);
            }
        } catch (Exception ex) {
            mapRequest.put("error", ex.getMessage());
            Logger.getLogger(SysAnnounce.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
