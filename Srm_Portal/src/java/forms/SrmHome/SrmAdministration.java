/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package forms.SrmHome;

import common.AjaxResponse;
import common.LanguageNational;
import java.io.OutputStream;
import java.sql.SQLException;
import java.text.ParseException;
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
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFRichTextString;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import srm.entity.CUX_PON_ZB_HEADERS_ALL;
import srm.entity.CUX_SRM_ATTACHMENT;
import srm.entity.CUX_TS_HEADERS_ALL;
import srm.entity.CUX_ZB_HEADERS_ALL;
import srm.service.CuxZbService;
import srm.service.CuxZbServiceImpl;
import xx.mvc.context.ActionContext;
import xx.mvc.file.MultipartFile;
import xx.mvc.util.FormUtil;

/**
 * 管理员界面
 *
 * @author zac2078106
 */
public class SrmAdministration {

    private final CuxZbService zbService = new CuxZbServiceImpl();

    public void onLoad(Map mapRequest, Map mapResponse) {
        try {
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
                map.put("type", type);
                map.put("comp_feed_type", comp_feed_type);
                map.put("title", title);
                map.put("people", people);
                map.put("date", new SimpleDateFormat("yyyy-MM-dd").format(date));
                map.put("reply", reply);
                map.put("reply_contact", reply_contact);
                map.put("reply_date", new SimpleDateFormat("yyyy-MM-dd").format(reply_date));
                map.put("description", description);
                list_tsHeaders.add(map);
            }
            mapRequest.put("json_tsHeaders", JSONArray.fromObject(list_tsHeaders));
            //查询招标公告信息
            List<CUX_ZB_HEADERS_ALL> zbHeaders = zbService.getZbHeadersAll();
            if (zbHeaders == null || zbHeaders.isEmpty()) {
                AjaxResponse.jsonTOView(" ");
            } else {
                mapRequest.put("zbHeaders", zbHeaders);
            }
            List<Map> list_ponHeaders = new ArrayList();
            for (int i = 0; i < zbHeaders.size(); i++) {
                Map map = new HashMap();
                Map ponMap = new HashMap();
                int zb_header_id = zbHeaders.get(i).getZb_header_id();
                map.put("zb_header_id", zb_header_id);
                List<CUX_PON_ZB_HEADERS_ALL> ponHeaders = zbService.getPonZbHeadersAllById(map);
                ponMap.put("zb_header_id", zb_header_id);
                ponMap.put("ponHeaders", ponHeaders);
                list_ponHeaders.add(ponMap);
            }
            mapRequest.put("json_ponHeaders", JSONArray.fromObject(list_ponHeaders));

            List<Map> list_zbHeaders = new ArrayList();
            for (int i = 0; i < zbHeaders.size(); i++) {
                Map map = new HashMap();
                int zb_header_id = zbHeaders.get(i).getZb_header_id();//id
                int num = 0;
                String zb_type = zbHeaders.get(i).getZb_type();//公告类型
                String zb_project_description = zbHeaders.get(i).getZb_project_description();//项目名称
                String zb_project_no = zbHeaders.get(i).getZb_project_no();//项目编号
                String zb_project_address = zbHeaders.get(i).getZb_project_address();//招标地区
                Date zb_enrol_end_date = zbHeaders.get(i).getZb_enrol_end_date();//报名截止时间
                Date zb_creation_date = zbHeaders.get(i).getZb_creation_date();//公告发布时间
                String zb_buyer = zbHeaders.get(i).getZb_buyer();//资源开发
                String zb_status = zbHeaders.get(i).getZb_status();//状态

                map.put("zb_header_id", zb_header_id);
                map.put("num", num);
                map.put("zb_type", zb_type);
                map.put("zb_project_description", zb_project_description);
                map.put("zb_project_no", zb_project_no);
                map.put("zb_project_address", zb_project_address);
                map.put("zb_enrol_end_date", new SimpleDateFormat("yyyy-MM-dd").format(zb_enrol_end_date));
                map.put("zb_creation_date", new SimpleDateFormat("yyyy-MM-dd").format(zb_creation_date));
                map.put("zb_buyer", zb_buyer);
                map.put("zb_status", zb_status);
                list_zbHeaders.add(map);
            }
            JSONArray json_zbHeaders = JSONArray.fromObject(list_zbHeaders);
            //传递招标公告json格式到页面
            mapRequest.put("json_zbHeaders", json_zbHeaders);
        } catch (Exception ex) {
            Logger.getLogger(SrmAdministration.class.getName()).log(Level.SEVERE, null, ex);
        }
    }


    /**
     * 提交发布公告
     *
     * @param mapRequest
     * @param mapResponse
     */
    public void submit_publish(Map mapRequest, Map mapResponse) {
        String zb_type = FormUtil.getStr("zb_type", mapRequest);//公告类型
        String zb_project_description = FormUtil.getStr("zb_project_description", mapRequest);//项目名称
        String zb_project_no = FormUtil.getStr("zb_project_no", mapRequest);//项目编号
        String zb_project_city = FormUtil.getStr("zb_project_city", mapRequest);//项目所属地区
        String zb_project_date = FormUtil.getStr("zb_project_date", mapRequest);//招标/采购文件时间
        String zb_project_address = FormUtil.getStr("zb_project_address", mapRequest);//招标/采购文件地点
        String zb_flie_je = FormUtil.getStr("zb_flie_je", mapRequest);//招标文件售价
        String zb_vendor_bond = FormUtil.getStr("zb_vendor_bond", mapRequest);//投标保证金
        String zb_corporation = FormUtil.getStr("zb_corporation", mapRequest);//法人名称
        String zb_buyer = FormUtil.getStr("zb_buyer", mapRequest);//资源开发/采购专责
        String zb_contactor = FormUtil.getStr("zb_contactor", mapRequest);//联系人
        String zb_tel = FormUtil.getStr("zb_tel", mapRequest);//联系电话
        String zb_mail = FormUtil.getStr("zb_mail", mapRequest);//邮箱
        String zb_answer_date = FormUtil.getStr("zb_answer_date", mapRequest);//答疑开始时间
        String zb_bid_start_date = FormUtil.getStr("zb_bid_start_date", mapRequest);//投标开始时间
        String zb_bid_end_date = FormUtil.getStr("zb_bid_end_date", mapRequest);//投标截止时间
        String zb_open_date = FormUtil.getStr("zb_open_date", mapRequest);//开标时间
        String zb_appeal_date = FormUtil.getStr("zb_appeal_date", mapRequest);//申诉时间
        String zb_enrol_end_date = FormUtil.getStr("zb_enrol_end_date", mapRequest);//报名截止时间
        String zb_memo = FormUtil.getStr("zb_memo", mapRequest);//备注

        //上传附件信息
        String[] filenames = FormUtil.getStrArr("filenamelist", mapRequest);//文件名称
        String[] file_ids = FormUtil.getStrArr("fileidlist", mapRequest);//文件自增ID
        
        CUX_ZB_HEADERS_ALL zbheaders = new CUX_ZB_HEADERS_ALL();
        List<CUX_SRM_ATTACHMENT> srmAtts = new ArrayList<CUX_SRM_ATTACHMENT>();
        try {
            String seq_id = zbService.getZbHeadersID();//招标信息表序列ID
            int zb_header_id = Integer.valueOf(seq_id);
            zbheaders.setZb_header_id(zb_header_id);
            zbheaders.setZb_type(zb_type);//公告类型
            zbheaders.setZb_project_description(zb_project_description);//项目名称
            zbheaders.setZb_project_no(zb_project_no);//项目编号
            zbheaders.setZb_project_city(zb_project_city);//项目所属地区
            zbheaders.setZb_project_date(new SimpleDateFormat("yyyy-MM-dd HH:mm").parse(zb_project_date));////招标/采购文件时间
            zbheaders.setZb_project_address(zb_project_address);//招标/采购文件地点
            zbheaders.setZb_flie_je(zb_flie_je);//招标文件售价
            zbheaders.setZb_vendor_bond(zb_vendor_bond);//投标保证金
            zbheaders.setZb_corporation(zb_corporation);//法人名称
            zbheaders.setZb_buyer(zb_buyer);//资源开发/采购专责
            zbheaders.setZb_contactor(zb_contactor);//联系人
            zbheaders.setZb_tel(zb_tel);//联系电话
            zbheaders.setZb_mail(zb_mail);//邮箱
            zbheaders.setZb_answer_date(new SimpleDateFormat("yyyy-MM-dd HH:mm").parse(zb_answer_date));//答疑开始时间
            zbheaders.setZb_bid_start_date(new SimpleDateFormat("yyyy-MM-dd HH:mm").parse(zb_bid_start_date));//投标开始时间
            zbheaders.setZb_bid_end_date(new SimpleDateFormat("yyyy-MM-dd HH:mm").parse(zb_bid_end_date));//投标截止时间
            zbheaders.setZb_open_date(new SimpleDateFormat("yyyy-MM-dd HH:mm").parse(zb_open_date));//开标时间
            zbheaders.setZb_appeal_date(new SimpleDateFormat("yyyy-MM-dd HH:mm").parse(zb_appeal_date));//申诉时间
            zbheaders.setZb_enrol_end_date(new SimpleDateFormat("yyyy-MM-dd HH:mm").parse(zb_enrol_end_date));//报名截止时间
            zbheaders.setZb_memo(zb_memo);//备注
            
            zbheaders.setZb_created_by(1);
            zbheaders.setZb_creation_date(new Date());
            zbheaders.setZb_last_updated_by(1);
            zbheaders.setZb_last_update_date(new Date());
            zbheaders.setApprove_by(0);
            
            if(file_ids != null && file_ids.length > 0){
                for(int j=0;j<file_ids.length;j++){
                    CUX_SRM_ATTACHMENT srmAtt = new CUX_SRM_ATTACHMENT();
                    String newfilename = file_ids[j] + filenames[j].substring(filenames[j].indexOf("."));
                    String path = "D:\\srm_upload\\zbfile\\" + newfilename;
                    srmAtt.setId(Integer.valueOf(file_ids[j]));
                    srmAtt.setRealfilename(filenames[j]);
                    srmAtt.setHeader_id(zb_header_id);
                    srmAtt.setDel(0);
                    srmAtt.setFiletype("ZB_FILE");//文件类型为招标公告文件
                    srmAtt.setCreated_by(59200);
                    srmAtt.setCreation_date(new Date());
                    srmAtt.setLast_updated_by(1);
                    srmAtt.setLast_update_date(new Date());
                    srmAtt.setFilename(newfilename);//新文件名
                    srmAtt.setFilepath(path);//文件路径
                    srmAtts.add(srmAtt);
                }
            }
        } catch (Exception ex) {
            Logger.getLogger(SrmAdministration.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            boolean flag = zbService.insertZbHeadersAll(zbheaders,srmAtts);
            if (flag) {
                AjaxResponse.writeOutString("<script>window.location.href='../SrmHome/SrmAdministration.jsp';</script>");
            } else {
                AjaxResponse.writeOutString("<script>window.location.href='../SrmHome/SrmAdministration.jsp';</script>");
                throw new Exception("招标公告发布失败");
            }
        } catch (Exception ex) {
            Logger.getLogger(SrmAdministration.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
    /**
     * 删除招标信息以及关联的报名信息
     * @param mapRequest
     * @param mapResponse 
     */
    public void delete_zbHeaders(Map mapRequest,Map mapResponse){
        String zb_header_id = FormUtil.getStr("id", mapRequest);//获取ID
        Map map = new HashMap();
        map.put("zb_header_id", Integer.parseInt(zb_header_id));
        try {
            boolean flag = zbService.deleteCuxHeadersAll(map);
            if(!flag){
                throw new Exception("删除失败");
            }
        } catch (Exception ex) {
            Logger.getLogger(SrmAdministration.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    /**
     * 获取招标公告等信息json格式
     * @param mapRequest
     * @param mapResponce 
     */
    public void get_jsonHeaders(Map mapRequest,Map mapResponce){
        try {
            Map map = new HashMap();
            List<CUX_ZB_HEADERS_ALL> zbHeaders = zbService.getZbHeadersAll();
            List<Map> list_ponHeaders = new ArrayList();
            for (int i = 0; i < zbHeaders.size(); i++) {
                Map map1 = new HashMap();
                Map ponMap = new HashMap();
                int zb_header_id = zbHeaders.get(i).getZb_header_id();
                map1.put("zb_header_id", zb_header_id);
                List<CUX_PON_ZB_HEADERS_ALL> ponHeaders = zbService.getPonZbHeadersAllById(map1);
                ponMap.put("zb_header_id", zb_header_id);
                ponMap.put("ponHeaders", ponHeaders);
                list_ponHeaders.add(ponMap);
            }
            map.put("list_ponHeaders", list_ponHeaders);
            List<Map> list_zbHeaders = new ArrayList();
            for (int i = 0; i < zbHeaders.size(); i++) {
                Map mapa = new HashMap();
                int zb_header_id = zbHeaders.get(i).getZb_header_id();//id
                int num = 0;
                String zb_type = zbHeaders.get(i).getZb_type();//公告类型
                String zb_project_description = zbHeaders.get(i).getZb_project_description();//项目名称
                String zb_project_no = zbHeaders.get(i).getZb_project_no();//项目编号
                String zb_project_address = zbHeaders.get(i).getZb_project_address();//招标地区
                Date zb_enrol_end_date = zbHeaders.get(i).getZb_enrol_end_date();//报名截止时间
                Date zb_creation_date = zbHeaders.get(i).getZb_creation_date();//公告发布时间
                String zb_buyer = zbHeaders.get(i).getZb_buyer();//资源开发
                String zb_status = zbHeaders.get(i).getZb_status();//状态

                mapa.put("zb_header_id", zb_header_id);
                mapa.put("num", num);
                mapa.put("zb_type", zb_type);
                mapa.put("zb_project_description", zb_project_description);
                mapa.put("zb_project_no", zb_project_no);
                mapa.put("zb_project_address", zb_project_address);
                mapa.put("zb_enrol_end_date", new SimpleDateFormat("yyyy-MM-dd").format(zb_enrol_end_date));
                mapa.put("zb_creation_date", new SimpleDateFormat("yyyy-MM-dd").format(zb_creation_date));
                mapa.put("zb_buyer", zb_buyer);
                mapa.put("zb_status", zb_status);
                list_zbHeaders.add(mapa);
            }
            map.put("list_zbHeaders", list_zbHeaders);
            AjaxResponse.jsonTOView(map);
        } catch (Exception ex) {
            Logger.getLogger(SrmAdministration.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    /**
     * 提交回复投诉信息
     *
     * @param mapRequest
     * @param mapResponse
     */
    public void reply_complaint(Map mapRequest, Map mapResponse) {
        String ts_header_id = FormUtil.getStr("ts_header_id", mapRequest);//ID
        String ts_reply_contact = FormUtil.getStr("ts_reply_contact", mapRequest);//回复内容
        Map map = new HashMap();
        map.put("ts_header_id", ts_header_id);
        map.put("ts_reply_contact", ts_reply_contact);
        map.put("ts_to_time", new Date());
        map.put("last_update_date", new Date());
        map.put("ts_reply", "是");
        map.put("created_by", 1);
        map.put("reply_person", "sysadmin");
        try{
            boolean flag = zbService.updateCuxTsHeadersAllByID(map);
            if(!flag){
                throw new Exception("回复投诉内容失败！");
            }
        }catch(Exception ex){
            Logger.getLogger(SrmAdministration.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    /**
     * 根据条件查询投诉情况的列表
     * @param mapRequest
     * @param mapResponse
     * 
     */
    public void findTsHeadersListByItems(Map mapRequest, Map mapResponse) {
        try {
            String ts_type = FormUtil.getStr("ts_type", mapRequest).trim();
            String ts_title = FormUtil.getStr("ts_title", mapRequest).trim();
            String ts_reply = FormUtil.getStr("ts_reply", mapRequest).trim();
            String ts_contact = FormUtil.getStr("ts_contact", mapRequest).trim();
            String create_start = FormUtil.getStr("ts_create_start", mapRequest).trim();
            String ts_code = FormUtil.getStr("ts_code", mapRequest).trim();
            Date tcreate_start = null;
            if (!create_start.isEmpty()) {
                tcreate_start = new SimpleDateFormat("yyyy-MM-dd").parse(create_start);
            }
            String create_end = FormUtil.getStr("ts_create_end", mapRequest).trim();
            Date tcreate_end = null;
            if (!create_end.isEmpty()) {
                tcreate_end = new SimpleDateFormat("yyyy-MM-dd").parse(create_end);
            }
            Map map = new HashMap();
            map.put("ts_type", ts_type);
            map.put("ts_title", ts_title);
            map.put("ts_reply", ts_reply);
            map.put("ts_contact", ts_contact); 
            map.put("create_start", tcreate_start);     
            map.put("create_end", tcreate_end); 
            map.put("ts_code",ts_code); 
            List<CUX_TS_HEADERS_ALL> tsListByItems = zbService.findTsHeadersListByItems(map);
            if (tsListByItems == null || tsListByItems.isEmpty()) {
                AjaxResponse.jsonTOView("");
                //throw new Exception(LanguageNational.getValue("查询投诉信息失败"));
            }
            List<Map> list_tsHeadersItems = new ArrayList();
            for (CUX_TS_HEADERS_ALL tslist : tsListByItems) {
                Map ts_Lists = new HashMap();
                int ts_headers_id = tslist.getTs_header_id();//ID
                String comp_feed_type = tslist.getComp_feed_type();//投诉反馈类型
                String tsType = tslist.getTs_type();//投诉类型
                String tsTitle = tslist.getTs_title();//投诉标题
                String tsDescription = tslist.getTs_description();//投诉内容
                String tsTel = tslist.getTs_tel();//联系电话
                String tsContact = tslist.getTs_contact();//投诉方联系人
                String tsDate = new SimpleDateFormat("yyyy-MM-dd").format(tslist.getTs_date());//投诉日期
                String tsCreate = new SimpleDateFormat("yyyy-MM-dd").format(tslist.getCreate_date());//发布日期
                String tsReply = tslist.getTs_reply();//是否回复
                String tsReply_contact = tslist.getTs_reply_contact();//回复情况
                String tsCompany = tslist.getTs_company();//公司名称
                String tsMail = tslist.getTs_mail();//E-mail
                String tsTotime = new SimpleDateFormat("yyyy-MM-dd").format(tslist.getTs_to_time());//回复时间
                ts_Lists.put("ts_type", tsType);
                ts_Lists.put("ts_headers_id", ts_headers_id);
                ts_Lists.put("comp_feed_type", comp_feed_type);
                ts_Lists.put("ts_contact", tsContact);
                ts_Lists.put("ts_title", tsTitle);
                ts_Lists.put("ts_description", tsDescription);
                ts_Lists.put("ts_tel", tsTel);
                ts_Lists.put("ts_date", tsDate);
                ts_Lists.put("ts_create", tsCreate);
                if(tsReply==null) {
                     ts_Lists.put("ts_reply", "否");
                 }else{
                     ts_Lists.put("ts_reply", tsReply);
                 }
                ts_Lists.put("ts_reply_contact", tsReply_contact);
                ts_Lists.put("ts_company", tsCompany);
                ts_Lists.put("ts_mail", tsMail);
                ts_Lists.put("ts_to_time", tsTotime);
                list_tsHeadersItems.add(ts_Lists);
            }
            Map tsMap = new HashMap();
            tsMap.put("list_tsHeadersItems", list_tsHeadersItems);
             AjaxResponse .jsonTOView(tsMap);
        } catch (SQLException ex) {
            Logger.getLogger(SrmAdministration.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ParseException ex) {
            Logger.getLogger(SrmAdministration.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(SrmAdministration.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    /**
     * 根据条件查询采购招标公告信息数据
     * @param mapRequest
     * @param mapResponse 
     */
    public void findZbHeadersListByItems (Map mapRequest, Map mapResponse) {
        try {
            String zb_type = FormUtil.getStr("zb_type", mapRequest).trim();//公告类型
            String zb_project_description = FormUtil.getStr("zb_project_description", mapRequest).trim();//项目名称
            String zb_project_no = FormUtil.getStr("zb_project_no", mapRequest).trim();//项目编号
            String zb_enrol_end_date = "";
            zb_enrol_end_date = FormUtil.getStr("zb_enrol_end_date", mapRequest).trim();//报名截止时间
            Date enrol_end_date = null;
            if (!zb_enrol_end_date.isEmpty()) {
                    enrol_end_date = new SimpleDateFormat("yyyy-MM-dd").parse(zb_enrol_end_date);
            }
            String zb_creation_date = "";
            zb_creation_date = FormUtil.getStr("zb_creation_date", mapRequest).trim();//公告发布时间
            Date creation_date = null;
            if (!zb_creation_date.isEmpty()) {
                creation_date = new SimpleDateFormat("yyyy-MM-dd").parse(zb_creation_date);
            }
            String zb_project_address = FormUtil.getStr("zb_project_address", mapRequest).trim();//招标地区
            String zb_start_person = FormUtil.getStr("zb_start_person", mapRequest).trim();//发布人
            String zb_buyer = FormUtil.getStr("zb_buyer", mapRequest).trim();//资源开发/采购专责
            Map map = new HashMap();
            map.put("zb_type", zb_type); 
            map.put("zb_project_description", zb_project_description);
            map.put("zb_project_no", zb_project_no);
            map.put("zb_enrol_end_date", zb_enrol_end_date); 
            map.put("zb_creation_date", zb_creation_date);     
            map.put("zb_project_address", zb_project_address); 
            map.put("zb_start_person", zb_start_person); 
            map.put("zb_buyer", zb_buyer); 
            List<CUX_ZB_HEADERS_ALL> zbHeadersByItems = zbService.findZbHeadersListByItems(map);
            if (zbHeadersByItems == null || zbHeadersByItems.isEmpty()) {
                AjaxResponse.jsonTOView("");
            }
            List<Map> list_zbHeadersByItems = new ArrayList();
            for (CUX_ZB_HEADERS_ALL zblist : zbHeadersByItems) {
                Map zb_lists = new HashMap();
                int tzb_headers_id = zblist.getZb_header_id();
                String tzb_type = zblist.getZb_type();
                String tzb_project_description = zblist.getZb_project_description();
                String tzb_project_no = zblist.getZb_project_no();
                String tzb_project_address = zblist.getZb_project_address();
                String tzb_enrol_end_date = new SimpleDateFormat("yyyy-MM-dd HH:mm").format(zblist.getZb_enrol_end_date());
                String tzb_creation_date = new SimpleDateFormat("yyyy-MM-dd HH:mm").format(zblist.getZb_creation_date());
                String tzb_buyer = zblist.getZb_buyer();
                String tzb_status = zblist.getZb_status();
                zb_lists.put("zb_headers_id", tzb_headers_id);
                zb_lists.put("zb_type", tzb_type);
                zb_lists.put("zb_project_description", tzb_project_description);
                zb_lists.put("zb_project_no", tzb_project_no);
                zb_lists.put("zb_project_address", tzb_project_address);
                zb_lists.put("zb_enrol_end_date", tzb_enrol_end_date);
                zb_lists.put("zb_creation_date", tzb_creation_date);
                zb_lists.put("zb_buyer", tzb_buyer);
                zb_lists.put("zb_status", tzb_status);
                list_zbHeadersByItems.add(zb_lists);
            }
            Map zbMap = new HashMap();
            zbMap.put("list_zbHeadersByItems", list_zbHeadersByItems);
            AjaxResponse.jsonTOView(zbMap);
        } catch (ParseException ex) {
            Logger.getLogger(SrmAdministration.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(SrmAdministration.class.getName()).log(Level.SEVERE, null, ex);
        } catch (java.lang.Exception ex) {
            Logger.getLogger(SrmAdministration.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    /**
     * 招标上传附件
     * @param mapRequest
     * @param mapResponse 
     */
    public void upload_zbFile(Map mapRequest,Map mapResponse){
        MultipartFile singleFile = ((MultipartFile[]) mapRequest.get("zbfileinput"))[0];//文档
        Map map = new HashMap();
        if(singleFile != null){
            try {
                String filename = singleFile.getOriginalFilename();
                String file_id = zbService.getFileID();//获取自增ID
                singleFile.saveTo("D:\\srm_upload\\zbfile\\" + file_id + filename.substring(filename.indexOf(".")));
                map.put("filename", filename);
                map.put("file_id", file_id);
                AjaxResponse.jsonTOView(map);
            } catch (Exception ex) {
                Logger.getLogger(SrmAdministration.class.getName()).log(Level.SEVERE, null, ex);
            }
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
                    String code = srmatt.getAttribute1();//获得供应商编码，区分附件归属
                    int id = srmatt.getId();
                    maptp.put("filepath",filepath);
                    maptp.put("realfilename", realfilename);
                    maptp.put("filename", filename);
                    maptp.put("code", code);
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
     * 导出excel表格
     * @param mapRequest
     * @param mapResponse
     * @throws Exception 
     */
    public void exportExcel (Map mapRequest,Map mapResponse) throws Exception 
    {
        HttpServletResponse response;
        OutputStream outStream = null;
        String zb_header_id = FormUtil.getStr("id", mapRequest);
        Map map = new HashMap();
        map.put("zb_header_id", zb_header_id);
        try{
            List<CUX_PON_ZB_HEADERS_ALL> ponHeaders = zbService.getPonZbHeadersAllById(map);
            //如果报名信息不为空，生成excel表格
            if(ponHeaders !=null && ponHeaders.size() > 0){
                HSSFWorkbook wb = new HSSFWorkbook();//新建一个工作薄
                HSSFSheet sheet = null;
                HSSFCellStyle style = wb.createCellStyle();
                style.setBorderBottom(HSSFCellStyle.BORDER_THIN);
                style.setBorderLeft(HSSFCellStyle.BORDER_THIN);
                style.setBorderRight(HSSFCellStyle.BORDER_THIN);
                style.setBorderTop(HSSFCellStyle.BORDER_THIN);
                sheet = wb.createSheet();
                //建一个插页
                //插入头部信息，如果是新建的Excel
                HSSFRow rowTable = sheet.createRow(0);//生成第一行
                rowTable.createCell((short) 0).setCellValue(new HSSFRichTextString("项目名称"));
                rowTable.createCell((short) 1).setCellValue(new HSSFRichTextString("项目编号"));
                rowTable.createCell((short) 2).setCellValue(new HSSFRichTextString("供应商名称"));
                rowTable.createCell((short) 3).setCellValue(new HSSFRichTextString("联系人"));
                rowTable.createCell((short) 4).setCellValue(new HSSFRichTextString("联系电话"));
                rowTable.createCell((short) 5).setCellValue(new HSSFRichTextString("联系邮箱"));
                rowTable.createCell((short) 6).setCellValue(new HSSFRichTextString("是否给BYD供过货"));
                rowTable.createCell((short) 7).setCellValue(new HSSFRichTextString("所供产品物料类型"));
                rowTable.createCell((short) 8).setCellValue(new HSSFRichTextString("备注"));
//                rowTable.createCell((short) 9).setCellValue(new HSSFRichTextString("附件"));

                //开始插入数据
                int START_ROW_NUMBER = 1;//从第2行开始写正式数据
                for(int i=0;i<ponHeaders.size();i++){
                    CUX_PON_ZB_HEADERS_ALL pon = ponHeaders.get(i);
                    //插入多行，并加入数据
                    HSSFRow rowIndex = sheet.createRow(START_ROW_NUMBER + i);
                    HSSFCell zb_project_description = rowIndex.createCell((short) 0);
                    zb_project_description.setCellStyle(style);
                    zb_project_description.setCellValue(new HSSFRichTextString(pon.getZb_project_description()));//项目名称
                    HSSFCell zb_project_no = rowIndex.createCell((short) 1);
                    zb_project_no.setCellStyle(style);
                    zb_project_no.setCellValue(new HSSFRichTextString(pon.getZb_project_no()));//项目编号
                    HSSFCell description = rowIndex.createCell((short) 2);
                    description.setCellStyle(style);
                    description.setCellValue(new HSSFRichTextString(pon.getDescription()));//供应商名称
                    HSSFCell contactor = rowIndex.createCell((short) 3);
                    contactor.setCellStyle(style);
                    contactor.setCellValue(new HSSFRichTextString(pon.getContactor()));//联系人
                    HSSFCell tel = rowIndex.createCell((short) 4);
                    tel.setCellStyle(style);
                    tel.setCellValue(new HSSFRichTextString(pon.getTel()));//联系电话
                    HSSFCell mail = rowIndex.createCell((short) 5);
                    mail.setCellStyle(style);
                    mail.setCellValue(new HSSFRichTextString(pon.getMail()));//联系邮箱
                    HSSFCell status = rowIndex.createCell((short) 6);
                    status.setCellStyle(style);
                    status.setCellValue(new HSSFRichTextString(pon.getStatus()));//是否给BYD供过货
                    HSSFCell item_type = rowIndex.createCell((short) 7);
                    item_type.setCellStyle(style);
                    item_type.setCellValue(new HSSFRichTextString(pon.getItem_type()));//所供产品物料类型
                    HSSFCell memo = rowIndex.createCell((short) 8);
                    memo.setCellStyle(style);
                    memo.setCellValue(new HSSFRichTextString(pon.getMemo()));//备注
//                    HSSFCell attachemnt = rowIndex.createCell((short) 9);
//                    attachemnt.setCellStyle(style);
//                    attachemnt.setCellValue(new HSSFRichTextString("无"));//附件

                }
                response = ActionContext.getResponse();
                response.reset();
                response.setContentType("application/vnd.ms-excel;charset=utf-8");
                response.setHeader("Content-Disposition", "attachment;Filename=applicationform.xls");//设置返回的文件名
                response.setHeader("Pragma", "public");
                response.setHeader("Cache-Control", "max-age=30");
                outStream = response.getOutputStream();//得到输出流
                wb.write(outStream);// 写 数据流
            }
        }
        finally
        {
            if (outStream != null)
            {
                outStream.close();
            }
        }
        
//        return null;
    }
    /**
     * 日期格式转换：String date ----> Date date
     *
     * @param date_string
     * @return Date
     * @throws Exception
     */
    public Date parseStringToDate(String date_string) throws Exception {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        return sdf.parse(date_string);
    }
}
