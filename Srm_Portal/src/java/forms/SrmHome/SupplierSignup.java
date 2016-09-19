/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package forms.SrmHome;

import common.AjaxResponse;
import common.LanguageNational;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import srm.entity.CUX_PON_ZB_HEADERS_ALL;
import srm.entity.CUX_SRM_ATTACHMENT;
import srm.entity.CUX_ZB_HEADERS_ALL;
import srm.service.CuxZbService;
import srm.service.CuxZbServiceImpl;
import xx.mvc.util.FormUtil;

/**
 *采购招标信息页面
 * @author zac2078106
 */
public class SupplierSignup {
    
    private final CuxZbService zbService = new CuxZbServiceImpl();
    
    public void onLoad(Map mapRequest, Map mapResponse) {
        Map map = new HashMap();
        String zb_header_id = FormUtil.getStr("id", mapRequest);//获取ID
        map.put("zb_header_id", zb_header_id);
        try {
            List<CUX_ZB_HEADERS_ALL> zbHeaders = zbService.getZbHeadersAllById(map);
            if (zbHeaders == null || zbHeaders.isEmpty()) {
                    throw new Exception(LanguageNational.getValue("获取采购招标公告失败"));
                } else {
                    mapRequest.put("zbHeaders", zbHeaders);
                }
        } catch (Exception ex) {
            Logger.getLogger(SupplierSignup.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    /**
     * 提交报名招标信息
     *
     * @param mapRequest
     * @param mapResponse
     */
    public void submit_signup(Map mapRequest, Map mapResponse) {
        String zb_header_id = FormUtil.getStr("zb_header_id", mapRequest);//项目ID,与CUX_ZB_HEADERS_ALL表关联
        String zb_project_description = FormUtil.getStr("zb_project_description", mapRequest);//项目名称
        String segment1 = FormUtil.getStr("segment1", mapRequest);//供应商编码
        String description = FormUtil.getStr("description", mapRequest);//供应商名称
        String contactor = FormUtil.getStr("contactor", mapRequest);//联系人
        String tel = FormUtil.getStr("tel", mapRequest);//联系电话
        String mail = FormUtil.getStr("mail", mapRequest);//邮箱
        String register = FormUtil.getStr("register", mapRequest);//是否已注册比亚迪SRM系统
        String item_type = FormUtil.getStr("item_type", mapRequest);//物料类型
        String memo = FormUtil.getStr("memo", mapRequest);//备注
        String status = FormUtil.getStr("status", mapRequest);//是否给BYD供过货

        CUX_PON_ZB_HEADERS_ALL pon = new CUX_PON_ZB_HEADERS_ALL();
        
        //上传附件信息
        String[] filenames = FormUtil.getStrArr("filenamelist", mapRequest);//文件名称
        String[] file_ids = FormUtil.getStrArr("fileidlist", mapRequest);//文件自增ID
        List<CUX_SRM_ATTACHMENT> srmAtts = new ArrayList<CUX_SRM_ATTACHMENT>();
        
        pon.setZb_header_id(Integer.valueOf(zb_header_id));
        pon.setZb_project_description(zb_project_description);
        pon.setSegment1(segment1);
        pon.setDescription(description);
        pon.setContactor(contactor);
        pon.setTel(tel);
        pon.setMail(mail);
        pon.setRegister(register);
        pon.setItem_type(item_type);
        pon.setMemo(memo);
        pon.setStatus(status);
        
        if(file_ids != null && file_ids.length > 0){
                for(int j=0;j<file_ids.length;j++){
                    CUX_SRM_ATTACHMENT srmAtt = new CUX_SRM_ATTACHMENT();
                    String newfilename = file_ids[j] + filenames[j].substring(filenames[j].indexOf("."));
                    String path = "D:\\srm_upload\\ponfile\\" + newfilename;
                    srmAtt.setAttribute1(segment1);
                    srmAtt.setId(Integer.valueOf(file_ids[j]));
                    srmAtt.setRealfilename(filenames[j]);
                    srmAtt.setHeader_id(Integer.valueOf(zb_header_id));
                    srmAtt.setDel(0);
                    srmAtt.setFiletype("PON_FILE");//文件类型为招标报名文件
                    srmAtt.setCreated_by(59200);
                    srmAtt.setCreation_date(new Date());
                    srmAtt.setLast_updated_by(1);
                    srmAtt.setLast_update_date(new Date());
                    srmAtt.setFilename(newfilename);//新文件名
                    srmAtt.setFilepath(path);//文件路径
                    srmAtts.add(srmAtt);
                }
            }
        try {
            boolean flag = zbService.insertPonZbHeadersAll(pon,srmAtts);
            if (flag) {
                AjaxResponse.writeOutString("<script>window.opener=null;window.close();</script>");
            } else {
//                AjaxResponse.writeOutString("<script>window.location.href='../SrmHome/Login.jsp';</script>");
                throw new Exception("提交报名信息失败");
            }
        } catch (Exception ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    /**
     * 根据供应商名称查询供应商编码
     *
     * @param mapRequest
     * @param mapResponse
     */
    public void getSupCode(Map mapRequest, Map mapResponse) {
        String vendor_name = FormUtil.getStr("vendor_name", mapRequest).trim();
        String ts_header_id = FormUtil.getStr("ts_header_id", mapRequest);
        Map map = new HashMap();
        try {
            String segment1 = zbService.getSupCodeBySupName(vendor_name);
            if (segment1 == null || segment1.isEmpty()) {
                throw new Exception("该供应商无供应商编码");
            } else {
                map.put("vendor_name", vendor_name);
                map.put("segment1", segment1);
                boolean flag = judgeIsApply(vendor_name, ts_header_id);
                map.put("isNot", flag);//判断是否报名的标识
                AjaxResponse.jsonTOView(map);
            }
        } catch (Exception ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    /**
     * 根据供应商名字判断是否已经对此公告报过名
     * @param vendor_name
     * @param zb_header_id 
     * @return boolean
     */
    public boolean judgeIsApply(String vendor_name,String zb_header_id) {
        boolean flag = false;
        try {
            Map map = new HashMap();
            map.put("zb_header_id", zb_header_id);
            List<CUX_PON_ZB_HEADERS_ALL> pon_lists = zbService.getPonZbHeadersAllById(map);
            if (pon_lists == null || pon_lists.isEmpty()) {
                throw new Exception(LanguageNational.getValue("获取投诉信息失败"));
            } else {
                for (CUX_PON_ZB_HEADERS_ALL pon_list : pon_lists) {
                    String description = pon_list.getDescription();
                    if (!description.equals("")){
                        if(description.equals(vendor_name)) {
                            //有供应商，则表示已经报名过此招标项目
                            flag = true;
                            break;
                        }
                    }
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(SupplierSignup.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(SupplierSignup.class.getName()).log(Level.SEVERE, null, ex);
        }
        return flag;
    }
}
