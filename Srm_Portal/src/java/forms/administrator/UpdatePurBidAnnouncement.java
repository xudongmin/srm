/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package forms.administrator;

import common.AjaxResponse;
import common.LanguageNational;
import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
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
public class UpdatePurBidAnnouncement {

    public void onLoad(Map mapRequest, Map mapResponse) throws Exception {
        String strContextId = FormUtil.getStr("strContextId", mapRequest);
        mapRequest.put("strContextId", strContextId);
        if (strContextId == null) {
            mapRequest.put("title", null);
            mapRequest.put("content", null);
        } else {
            int contextId = Integer.parseInt(strContextId);
            Map map = new HashMap();
            try {
                map.put("strContextId", contextId);
                PurBidService service = new PurBidServiceImpl();
                List<PurBidAnnouncement> announce = service.getPurBidAnnouncement(map);
                if (announce == null || announce.isEmpty()) {
                    throw new Exception(LanguageNational.getValue("wf0001"));
                } else {
                    PurBidAnnouncement anc = announce.get(0);
                    mapRequest.put("title", anc.getTitle());
                    mapRequest.put("content", anc.getContent().replaceAll("&nbsp;&nbsp;", " ").replaceAll("<br/>", "\n"));
                    mapRequest.put("announcer", anc.getAnnouncer());
                }
            } catch (Exception e) {
                mapRequest.put("error", e.getMessage());
                System.out.println("=====================================" + e.getMessage());
            }
        }
    }

    public void submit(Map mapRequest, Map mapResponse) throws IOException {
        String strContextId = FormUtil.getStr("strContextId", mapRequest);
        String title = FormUtil.getStr("title", mapRequest);
        String content = FormUtil.getStr("content", mapRequest);
        UserBPMService userService = new UserBPMServiceImpl();
        Map map = new HashMap();
        PurBidService announce = new PurBidServiceImpl();
        try {
//            String userNo = userService.getBPMUsername("liudexing");//本地调试用
            String userNo = "59200";
    //       String srmLogin = IService.getService(IUserContext.class).getPersonalInfo().getUserID();
            //       userno = userService.getBPMUsername(srmLogin);//服务器
            int last_updated_by = Integer.parseInt(userNo);
            int last_update_login = Integer.parseInt(userNo);
            map.put("strContextId", strContextId);
            map.put("title", title);
            map.put("content", content.replaceAll(" ", "&nbsp;&nbsp;").replaceAll("\n", "<br/>"));
            map.put("last_updated_by", last_updated_by);
            map.put("last_update_login", last_update_login);
            boolean result = announce.updatePurBidAnnouncement(map);
            if (result) {
                AjaxResponse.writeOutString("<script>alert('" + LanguageNational.getValue("wf0006") + "');window.opener=null;window.close();</script>");
            } else {
                throw new Exception(LanguageNational.getValue("wf0005"));//更新失败！
            }
        } catch (SQLException ex) {
            Logger.getLogger(UpdatePurBidAnnouncement.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(UpdatePurBidAnnouncement.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
