/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package forms.administrator;

import common.LanguageNational;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import srm.entity.SysAnnouncement;
import srm.service.SysService;
import srm.service.SysServiceImpl;
import srm.service.UserBPMService;
import srm.service.UserBPMServiceImpl;
import xx.mvc.render.ActionResult;
import xx.mvc.util.FormUtil;

/**
 *
 * @author zjl2084149
 */
public class AdminSysAnnouncement {

    public void onLoad(Map mapRequest, Map mapResponse) throws Exception {
        SysService sysService = new SysServiceImpl();
        try {
            List<Map> sysMap = new ArrayList();
            List<SysAnnouncement> sysAnnounce = sysService.getAllSysAnnouncement();//系统公告
            if (sysAnnounce == null || sysAnnounce.isEmpty()) {
                throw new Exception(LanguageNational.getValue("wf0002"));
            } else {
                for (int i = 0; i < 15 && i < sysAnnounce.size(); i++) {
                    SysAnnouncement sysAnc = sysAnnounce.get(i);
                    Map newMap = new HashMap();
                    newMap.put("title", sysAnc.getTitle());
                    newMap.put("content", sysAnc.getContent().replaceAll("&nbsp;&nbsp;", " ").replaceAll("<br/>", "\n"));
                    newMap.put("created_by", sysAnc.getCreated_by());
                    String time = new SimpleDateFormat("yyyy-MM-dd").format(sysAnc.getCreation_date());
                    newMap.put("creation_date", time);
                    newMap.put("strContextId", sysAnc.getStrContextId());
                    sysMap.add(newMap);
                }
                mapRequest.put("purSysAnc", sysMap);
            }
        } catch (SQLException e) {
            mapRequest.put("error", e.getMessage());
            Logger.getLogger(AdminSysAnnouncement.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    public String update(Map mapRequest, Map mapSession) throws SQLException {
        String ids = FormUtil.getStr("ids", mapRequest);
        return ActionResult.REDIRECT + "UpdateSysAnnouncement.jsp?strContextId=" + ids;
    }

    public void setInvalid(Map mapRequest, Map mapSession) {
        String ids = FormUtil.getStr("ids", mapRequest);
        SysService announce = new SysServiceImpl();
        UserBPMService userService = new UserBPMServiceImpl();
        try {
//            String userNo = userService.getBPMUsername("liudexing");//本地调试用
            String userNo = "59200";
    //       String srmLogin = IService.getService(IUserContext.class).getPersonalInfo().getUserID();
    //       userno = userService.getBPMUsername(srmLogin);//服务器
            int id = Integer.parseInt(userNo);
            Map map = new HashMap();
            map.put("strContextId", ids);
            map.put("status", "invalid");
            map.put("last_updated_by", id);
            announce.updateSysAnnouncement(map);
        } catch (Exception ex) {
            Logger.getLogger(AdminSysAnnouncement.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
