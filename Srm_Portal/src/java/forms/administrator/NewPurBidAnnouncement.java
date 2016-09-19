/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package forms.administrator;

import common.AjaxResponse;
import common.LanguageNational;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import srm.service.PurBidService;
import srm.service.PurBidServiceImpl;
import srm.service.UserBPMService;
import srm.service.UserBPMServiceImpl;
import xx.mvc.util.FormUtil;

/**
 *
 * @author zjl2084149
 */
public class NewPurBidAnnouncement {

    public void onLoad(Map mapRequest, Map mapResponse) {
        System.out.println("1");
    }
    
    public void submit(Map mapRequest, Map mapResponse) {
        UserBPMService userService = new UserBPMServiceImpl();
        try {
            String title = FormUtil.getStr("title", mapRequest);
            String content = FormUtil.getStr("content", mapRequest);
            String announcer = "liudexing";
//            String userNo = userService.getBPMUsername("liudexing");//本地调试用
            String userNo = "59200";
    //       String srmLogin = IService.getService(IUserContext.class).getPersonalInfo().getUserID();
    //       userno = userService.getBPMUsername(srmLogin);//服务器
            int created_by = Integer.parseInt(userNo);
            int last_updated_by = Integer.parseInt(userNo);
            int last_update_login = Integer.parseInt(userNo);
            Map map = new HashMap();
            map.put("title", title);
            map.put("content", content.replaceAll(" ", "&nbsp;&nbsp;").replaceAll("\n", "<br/>"));
            map.put("announcer", announcer);
            map.put("created_by", created_by);
            map.put("last_updated_by", last_updated_by);
            map.put("last_update_login", last_update_login);
            PurBidService announce = new PurBidServiceImpl();
            boolean result = announce.insertPurBidAnnouncement(map);
            if (result) {
                AjaxResponse.writeOutString("<script>alert('" + LanguageNational.getValue("wf0003") + "');window.opener=null;window.close();</script>");
            }
        }catch(Exception e){
            mapRequest.put("error", LanguageNational.getValue("wf0004"));
            System.out.println(e.getMessage());
        }
    }
}
