/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package forms.administrator;

import byd.platform.IUserContext;
import byd.platform.service.IService;
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
import srm.entity.PurBidAnnouncement;
import srm.service.PurBidService;
import srm.service.PurBidServiceImpl;
import srm.service.UserBPMService;
import srm.service.UserBPMServiceImpl;
import xx.mvc.util.FormUtil;

/**
 *
 * @author zjl2084149
 */
public class AdminPurBidAnnouncement {

    public void onLoad(Map mapRequest, Map mapResponse) throws Exception {
        PurBidService purBidService = new PurBidServiceImpl();
        try {
            List<Map> purBidMap = new ArrayList();
            List<PurBidAnnouncement> purBidAnnounce = purBidService.getAllPurBidAnnouncement();//采购招标公告
            if (purBidAnnounce == null || purBidAnnounce.isEmpty()) {
                throw new Exception(LanguageNational.getValue("wf0001"));
            } else {
                for (int i = 0; i < 15 && i < purBidAnnounce.size(); i++) {
                    PurBidAnnouncement purBidAnc = purBidAnnounce.get(i);
                    Map newMap = new HashMap();
                    newMap.put("title", purBidAnc.getTitle());
                    newMap.put("content", purBidAnc.getContent().replaceAll("&nbsp;&nbsp;", " ").replaceAll("<br/>", "\n"));
                    newMap.put("created_by", purBidAnc.getCreated_by());
                    String time = new SimpleDateFormat("yyyy-MM-dd").format(purBidAnc.getCreation_date());
                    newMap.put("creation_date", time);
                    newMap.put("strContextId", purBidAnc.getStrContextId());
                    purBidMap.add(newMap);
                }
                mapRequest.put("purBidAnc", purBidMap);
            }
        } catch (SQLException e) {
            mapRequest.put("error", e.getMessage());
            Logger.getLogger(AdminPurBidAnnouncement.class.getName()).log(Level.SEVERE, null, e);
        }
    }

//    public String update(Map mapRequest, Map mapSession) throws SQLException {
//        String ids = FormUtil.getStr("ids", mapRequest);
//        return ActionResult.REDIRECT + "UpdatePurBidAnnouncement.jsp?strContextId=" + ids;
//    }
    public void setInvalid(Map mapRequest, Map mapSession) {
        String ids = FormUtil.getStr("ids", mapRequest);
        PurBidService announce = new PurBidServiceImpl();
        UserBPMService userService = new UserBPMServiceImpl();
        try {
//            String userNo = userService.getBPMUsername("liudexing");//本地调试用
            String userNo = "59200";
//            String srmLogin = IService.getService(IUserContext.class).getPersonalInfo().getUserID();
//            userno = userService.getBPMUsername(srmLogin);//服务器
            int id = Integer.parseInt(userNo);
            Map map = new HashMap();
            map.put("strContextId", ids);
            map.put("status", "invalid");
            map.put("last_updated_by", id);
            boolean result = announce.updatePurBidAnnouncement(map);
            if(result){
                
            }
        } catch (Exception ex) {
            Logger.getLogger(AdminPurBidAnnouncement.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
