/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package forms.SrmHome;

import common.AjaxResponse;
import common.LanguageNational;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLEncoder;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletResponse;
import net.sf.json.JSONArray;
import srm.entity.CUX_PON_ZB_HEADERS_ALL;
import srm.entity.CUX_SRM_ATTACHMENT;
import srm.entity.CUX_TS_HEADERS_ALL;
import srm.entity.CUX_TZ_HEADERS_ALL;
import srm.entity.CUX_ZB_HEADERS_ALL;
import srm.entity.PurBidAnnouncement;
import srm.entity.SysAnnouncement;
import srm.exception.FileNotExistExcetion;
import srm.service.CuxZbService;
import srm.service.CuxZbServiceImpl;
import srm.service.PurBidService;
import srm.service.PurBidServiceImpl;
import srm.service.ServerService;
import srm.service.ServerServiceImpl;
import srm.service.SysService;
import srm.service.SysServiceImpl;
import xx.mvc.context.ActionContext;
import xx.mvc.extend.BaseForm;
import xx.mvc.file.MultipartFile;
import xx.mvc.util.FormUtil;

/**
 *
 * @author zjl2084149
 */
public class Login extends BaseForm{

    private final CuxZbService zbService = new CuxZbServiceImpl();

    public void onLoad(Map mapRequest, Map mapResponse) {
        PurBidService purBidService = new PurBidServiceImpl();
        SysService sysService = new SysServiceImpl();
        ServerService serService = new ServerServiceImpl();
        try {
            String serverName = serService.getServerName();
            mapRequest.put("serverName", serverName);//FileUtil.parsePropertiesValue("configs", "serverName")
            try {
                List<CUX_ZB_HEADERS_ALL> zbHeaders = zbService.getZbHeadersAll();
                if (zbHeaders == null || zbHeaders.isEmpty()) {
                    AjaxResponse.jsonTOView(" ");
                } else {
                    mapRequest.put("zbHeaders", zbHeaders);
                }
                List<Map> list_zbHeaders = new ArrayList();
                for (int i = 0; i < zbHeaders.size(); i++) {
                    Map map = new HashMap();
                    String title = zbHeaders.get(i).getZb_project_description();
                    Date date = zbHeaders.get(i).getZb_creation_date();
                    int id = zbHeaders.get(i).getZb_header_id();
                    map.put("id", id);
                    map.put("title", title);
                    map.put("date", new SimpleDateFormat("yyyy-MM-dd").format(date));
                    list_zbHeaders.add(map);
                }
//                Map zbMap = new HashMap();
//                zbMap.put("list_zbHeaders", list_zbHeaders);
//                AjaxResponse.jsonTOView(zbMap);
                
                JSONArray json_zbHeaders = JSONArray.fromObject(list_zbHeaders);
                //传递招标公告名称和创建时间的json格式到页面
                mapRequest.put("json_zbHeaders", json_zbHeaders);
                
                List<CUX_TZ_HEADERS_ALL> tzHeaders = zbService.getTzHeadersAll();
                if (tzHeaders == null || tzHeaders.isEmpty()) {
                    AjaxResponse.jsonTOView(" ");
                } else {
                    mapRequest.put("tzHeaders", tzHeaders);
                }
                List<Map> list_tzHeaders = new ArrayList();
                for (int i = 0; i < tzHeaders.size(); i++) {
                    Map map = new HashMap();
                    String title = tzHeaders.get(i).getTz_title();
                    Date date = tzHeaders.get(i).getCreate_date();
                    int id = tzHeaders.get(i).getTz_header_id();
                    map.put("id", id);
                    map.put("title", title);
                    map.put("date", new SimpleDateFormat("yyyy-MM-dd").format(date));
                    list_tzHeaders.add(map);
                }
                //传递通知公告的标题和时间的json格式到页面
//                Map tzMap = new HashMap();
//                tzMap.put("list_tzHeaders",list_tzHeaders);
//                AjaxResponse.jsonTOView(zbMap);
                
                JSONArray json_tzHeaders = JSONArray.fromObject(list_tzHeaders);
                mapRequest.put("json_tzHeaders", json_tzHeaders);

                List<CUX_TS_HEADERS_ALL> tsHeaders = zbService.getTsHeadersAll();
                if (tsHeaders == null || tsHeaders.isEmpty()) {
                    AjaxResponse.jsonTOView(" ");
                } else {
                    mapRequest.put("tsHeaders", tsHeaders);
                }
                List<Map> list_tsHeaders = new ArrayList();
                for (int i = 0; i < tsHeaders.size(); i++) {
                    Map map = new HashMap();
                    int id = tsHeaders.get(i).getTs_header_id();
                    String type = tsHeaders.get(i).getTs_type();//类型
                    String comp_feed_type = tsHeaders.get(i).getComp_feed_type();//投诉与反馈类型
                    String title = tsHeaders.get(i).getTs_title();//标题
                    String people = tsHeaders.get(i).getTs_contact();//投诉人
                    Date date = tsHeaders.get(i).getTs_date();//日期
                    String reply = tsHeaders.get(i).getTs_reply();//是否恢复
                    String reply_contact = tsHeaders.get(i).getTs_reply_contact();//恢复情况
                    Date reply_date = tsHeaders.get(i).getTs_to_time();//回复时间
                    String description = tsHeaders.get(i).getTs_description();//投诉内容
                    map.put("id", id);
                    map.put("comp_feed_type", comp_feed_type);
                    map.put("type", type);
                    map.put("title", title);
                    map.put("people", people);
                    map.put("date", new SimpleDateFormat("yyyy-MM-dd").format(date));
                    map.put("reply", reply);
                    map.put("reply_contact", reply_contact);
                    map.put("reply_date", new SimpleDateFormat("yyyy-MM-dd").format(reply_date));
                    map.put("description", description);
                    list_tsHeaders.add(map);
                }
//                Map tsMap = new HashMap();
//                tsMap.put(list_tsHeaders, list_tsHeaders);
//                AjaxResponse.jsonTOView(tsMap);
                
                mapRequest.put("json_tsHeaders", JSONArray.fromObject(list_tsHeaders));

                List<Map> purBidMap = new ArrayList();
                List<PurBidAnnouncement> purBidAnnounce = purBidService.getAllPurBidAnnouncement();//采购招标公告
                if (purBidAnnounce == null || purBidAnnounce.isEmpty()) {
                    throw new Exception(LanguageNational.getValue("wf0001"));
                } else {
                    for (int i = 0; i < 10 && i < purBidAnnounce.size(); i++) {
                        PurBidAnnouncement purBidAnc = purBidAnnounce.get(i);
                        Map newMap = new HashMap();
                        newMap.put("title", purBidAnc.getTitle());//标题
                        newMap.put("content", purBidAnc.getContent());//公告内容
                        newMap.put("created_by", purBidAnc.getCreated_by());//发布人
                        String time = new SimpleDateFormat("yyyy-MM-dd").format(purBidAnc.getCreation_date());
                        newMap.put("creation_date", time);//发布时间
                        newMap.put("strContextId", purBidAnc.getStrContextId());
                        purBidMap.add(newMap);
                    }
                    mapRequest.put("purBidAnc", purBidMap);
                }
            } catch (Exception e) {
                mapRequest.put("error", e.getMessage());
            }
            try {
                List<Map> sysMap = new ArrayList();
                List<SysAnnouncement> sysAnnounce = sysService.getAllSysAnnouncement();//系统公告
                if (sysAnnounce == null || sysAnnounce.isEmpty()) {
                    throw new Exception(LanguageNational.getValue("wf0001"));
                } else {
                    for (int i = 0; i < 6 && i < sysAnnounce.size(); i++) {
                        SysAnnouncement sysAnc = sysAnnounce.get(i);
                        Map newMap = new HashMap();
                        newMap.put("title", sysAnc.getTitle());
                        newMap.put("content", sysAnc.getContent());
                        newMap.put("created_by", sysAnc.getCreated_by());
                        String time = new SimpleDateFormat("yyyy-MM-dd").format(sysAnc.getCreation_date());
                        newMap.put("creation_date", time);
                        newMap.put("strContextId", sysAnc.getStrContextId());
                        sysMap.add(newMap);
                    }
                    mapRequest.put("sysAnc", sysMap);
                }
            } catch (Exception ex) {
                mapRequest.put("error", ex.getMessage());
            }
        } catch (Exception e) {
            mapRequest.put("error", e.getMessage());
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    public void submit(Map mapRequest, Map mapResponse) {
        String rand = (String) ActionContext.getRequest().getSession(true).getAttribute("rand");
        String code = FormUtil.getStr("checkNode", mapRequest);
        String userName = FormUtil.getStr("userName", mapRequest);
        String password = FormUtil.getStr("password", mapRequest);
        if (!rand.equals(code)) {
            mapRequest.put("codeResult", "0");
        } else {
            mapRequest.put("codeResult", "1");
        }
    }

    /**
     * 招标报名上传附件
     * @param mapRequest
     * @param mapResponse 
     */
    public void upload_ponFile(Map mapRequest,Map mapResponse){
        MultipartFile singleFile = ((MultipartFile[]) mapRequest.get("ponfileinput"))[0];//文档
        Map map = new HashMap();
        if(singleFile != null){
            try {
                String filename = singleFile.getOriginalFilename();
                String file_id = zbService.getFileID();//获取自增ID
                singleFile.saveTo("D:\\srm_upload\\ponfile\\" + file_id + filename.substring(filename.indexOf(".")));
                map.put("filename", filename);
                map.put("file_id", file_id);
                AjaxResponse.jsonTOView(map);
            } catch (Exception ex) {
                Logger.getLogger(SrmAdministration.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
    /**
     * 投诉上传附件
     * @param mapRequest
     * @param mapResponse 
     */
    public void upload_tsFile(Map mapRequest,Map mapResponse){
        MultipartFile singleFile = ((MultipartFile[]) mapRequest.get("tsfileinput"))[0];//文档
        Map map = new HashMap();
        if(singleFile != null){
            try {
                String filename = singleFile.getOriginalFilename();
                String file_id = zbService.getFileID();//获取自增ID
                singleFile.saveTo("D:\\srm_upload\\tsfile\\" + file_id + filename.substring(filename.indexOf(".")));
                map.put("filename", filename);
                map.put("file_id", file_id);
                AjaxResponse.jsonTOView(map);
            } catch (Exception ex) {
                Logger.getLogger(SrmAdministration.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
    /**
     * 提交投诉与反馈信息
     *
     * @param mapRequest
     * @param mapResponse
     */
    public void submit_complaint(Map mapRequest, Map mapResponse) {
        String ts_type = FormUtil.getStr("ts_type", mapRequest);//类型
        String comp_feed_type = FormUtil.getStr("comp_feed_type", mapRequest);//投诉与反馈类型
        String ts_title = FormUtil.getStr("ts_title", mapRequest);//标题
        String ts_description = FormUtil.getStr("ts_description", mapRequest);//内容
        String ts_company = FormUtil.getStr("ts_company", mapRequest);//公司名称
        String ts_contact = FormUtil.getStr("ts_contact", mapRequest);//联系人
        String ts_tel = FormUtil.getStr("ts_tel", mapRequest);//联系电话
        String ts_mail = FormUtil.getStr("ts_mail", mapRequest);//Email
        CUX_TS_HEADERS_ALL tsHeaders = new CUX_TS_HEADERS_ALL();
        
        //上传附件信息
        String[] filenames = FormUtil.getStrArr("filenamelist", mapRequest);//文件名称
        String[] file_ids = FormUtil.getStrArr("fileidlist", mapRequest);//文件自增ID
        List<CUX_SRM_ATTACHMENT> srmAtts = new ArrayList<CUX_SRM_ATTACHMENT>();
        try {
            String seq_id = zbService.getTsHeadersID();//投诉信息表序列ID
            int ts_header_id = Integer.valueOf(seq_id);
            tsHeaders.setTs_header_id(ts_header_id);
            tsHeaders.setComp_feed_type(comp_feed_type);
            tsHeaders.setTs_type(ts_type);
            tsHeaders.setTs_title(ts_title);
            tsHeaders.setTs_description(ts_description);
            tsHeaders.setTs_company(ts_company);
            tsHeaders.setTs_contact(ts_contact);
            tsHeaders.setTs_tel(ts_tel);
            tsHeaders.setTs_mail(ts_mail);

            tsHeaders.setCreate_date(new Date());
            tsHeaders.setTs_date(new Date());
            tsHeaders.setLast_update_date(new Date());
            tsHeaders.setTs_to_time(new Date());
            tsHeaders.setCreated_by(1);

            if(file_ids != null && file_ids.length > 0){
                for(int j=0;j<file_ids.length;j++){
                    CUX_SRM_ATTACHMENT srmAtt = new CUX_SRM_ATTACHMENT();
                    String newfilename = file_ids[j] + filenames[j].substring(filenames[j].indexOf("."));
                    String path = "D:\\srm_upload\\tsfile\\" + newfilename;
                    srmAtt.setId(Integer.valueOf(file_ids[j]));
                    srmAtt.setRealfilename(filenames[j]);
                    srmAtt.setHeader_id(ts_header_id);
                    srmAtt.setDel(0);
                    srmAtt.setFiletype("TS_FILE");//文件类型为投诉反馈文件
                    srmAtt.setCreated_by(59200);
                    srmAtt.setCreation_date(new Date());
                    srmAtt.setLast_updated_by(1);
                    srmAtt.setLast_update_date(new Date());
                    srmAtt.setFilename(newfilename);//新文件名
                    srmAtt.setFilepath(path);//文件路径
                    srmAtts.add(srmAtt);
                }
            }
            boolean flag = zbService.insertTsHeadersAll(tsHeaders,srmAtts);
            if (flag) {
                Map idmap = new HashMap();
                idmap.put("ts_id", seq_id);
                AjaxResponse.jsonTOView(idmap);
                //AjaxResponse.writeOutString("<script>window.location.href='../SrmHome/Login.jsp';</script>");
            } else {
                AjaxResponse.writeOutString("<script>window.location.href='../SrmHome/Login.jsp';</script>");
                throw new Exception("提交投诉与反馈信息失败");
            }
        } catch (Exception ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * 通过表ID和文件类型查找附件
     * @param mapRequest
     * @param mapResponse 
     */
    public void getSrmAttachment(Map mapRequest,Map mapResponse){
        String header_id = FormUtil.getStr("header_id", mapRequest);
        String filetype = FormUtil.getStr("filetype", mapRequest);
        Map map = new HashMap();
        map.put("header_id", header_id);
        map.put("filetype", filetype);
        try {
            List<CUX_SRM_ATTACHMENT> srmatts = zbService.getSrmAtt(map);
            if(srmatts != null && !srmatts.isEmpty()){
                mapRequest.put("srmatts", srmatts);
                List srmattslist = new ArrayList();
                for(CUX_SRM_ATTACHMENT srmatt:srmatts){
                    Map maptp = new HashMap();
                    String filepath = srmatt.getFilepath();
                    String realfilename = srmatt.getRealfilename();
                    String filename = srmatt.getFilename();
                    int id = srmatt.getId();
                    maptp.put("filepath",filepath);
                    maptp.put("realfilename", realfilename);
                    maptp.put("filename", filename);
                    maptp.put("id", id);
//                    maptp.put("header_id",header_id);
                    srmattslist.add(maptp);
                }
                Map attmap = new HashMap();
                attmap.put("srmattslist", srmattslist);
                attmap.put("header_id", header_id);
                AjaxResponse.jsonTOView(attmap);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    /**
     * 附件下载
     * @param mapRequest
     * @param mapSesion 
     */
    public String DownloadFile(Map mapRequest, Map mapSesion) throws FileNotExistExcetion {
        BufferedInputStream bufIn = null;
        BufferedOutputStream bufOut = null;
        try {
                String fileId = FormUtil.getStr("fileId", mapRequest);
                String path = zbService.getSrmAttPath(fileId);
                String filename =  path.substring(path.lastIndexOf('\\')+1);
                
                mapRequest.put("fileName", filename);
                
                File file = new File(path);
                HttpServletResponse response = ActionContext.getResponse();
                response.reset();
                bufIn = new BufferedInputStream(new FileInputStream(file));
                bufOut = new BufferedOutputStream(response.getOutputStream());
                response.setContentType("application/x-download");
                String Agent = ActionContext.getRequest().getHeader("User-Agent");
                if (null != Agent) {  
                    Agent = Agent.toLowerCase();  
                    if (Agent.indexOf("firefox") != -1) {  
                        filename = new String(filename.getBytes(),"iso8859-1");  
                    } else if (Agent.indexOf("msie") != -1) {  
                        filename = URLEncoder.encode(filename,"UTF-8");  
                    } else {  
                        filename = URLEncoder.encode(filename,"UTF-8");  
                    }  
                }
                response.setHeader("Content-disposition", "attachment;filename=" + filename);
                response.addHeader("Content-type", "application/octet-stream");
                response.setContentLength((int) file.length());
                int len = 0;
                byte[] bs = new byte[20480];
                while ((len = bufIn.read(bs)) != -1) {
                    bufOut.write(bs, 0, len);
                }
                bufOut.flush();
        } catch (IOException ex) {
            mapRequest.put("error", "file operate error!" + ex.getMessage());
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
            return this.forward("../public/error/FileNotExist.jsp");
        } catch (Exception ex) {
            mapRequest.put("error", "other operate error!" + ex.getMessage());
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
            return this.forward("../public/error/FileNotExist.jsp");// throw new FileNotExistExcetion(ex.getMessage());
        } finally {
            try {
                if (bufOut != null) {
                    bufOut.close();
                }
                if (bufIn != null) {
                    bufIn.close();
                }
            } catch (IOException ex) {
                mapRequest.put("error", "close io error!" + ex.getMessage());
                Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
                return this.forward("../public/error/FileNotExist.jsp");//throw new FileNotExistExcetion(ex.getMessage());
            }
        }
        return null;
    }
}
