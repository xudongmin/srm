/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package srm.entity;

import java.util.Date;

/**
 *
 * @author zac2078106
 * 招标公告
 */
public class CUX_ZB_HEADERS_ALL {
    private int zb_header_id;//项目ID
    private String zb_project_description;//项目名称
    private String zb_project_city;//项目所属地区
    private Date zb_project_date;//购买招标/采购文件时间
    private String zb_project_address;//购买招标/采购文件地点
    private String zb_flie_je;//招标文件售价
    private String zb_vendor_bond;//投标保证金
    private String zb_corporation;//法人名称
    private String zb_buyer;//资源开发/采购专责
    private String zb_contactor;//联系人
    private String zb_tel;//联系电话
    private String zb_mail;//邮箱
    private Date zb_answer_date;//答疑开始时间
    private Date zb_bid_start_date;//投标开始时间
    private Date zb_bid_end_date;//投标截止时间
    private Date zb_open_date;//开标时间
    private Date zb_appeal_date;//申诉时间
    private Date zb_enrol_end_date;//报名截止时间
    private String zb_memo;//备注
    private String zb_status;//状态
    private int zb_created_by;//创建人ID
    private Date zb_creation_date;//创建时间
    private int zb_last_updated_by;//最后更新人ID
    private Date zb_last_update_date;//最后更新时间
    private int approve_by;//审批人ID
    private String attribute1;//备选字段1
    private String attribute2;//备选字段2
    private String attribute3;//备选字段3
    private String attribute4;//备选字段4
    private String attribute5;//备选字段5
    private String attribute6;//备选字段6
    private String attribute7;//备选字段7
    private String attribute8;//备选字段8
    private String attribute9;//备选字段9
    private String zb_project_no;//项目编号
    private String zb_last_person;//最后更新人姓名
    private String zb_start_person;//创建人姓名
    private String zb_approve_person;//审批人姓名
    private String zb_type;//招标类型

    public int getZb_header_id() {
        return zb_header_id;
    }

    public void setZb_header_id(int zb_header_id) {
        this.zb_header_id = zb_header_id;
    }

    public String getZb_project_description() {
        return zb_project_description;
    }

    public void setZb_project_description(String zb_project_description) {
        this.zb_project_description = zb_project_description;
    }

    public String getZb_project_city() {
        return zb_project_city;
    }

    public void setZb_project_city(String zb_project_city) {
        this.zb_project_city = zb_project_city;
    }

    public Date getZb_project_date() {
        return zb_project_date;
    }

    public void setZb_project_date(Date zb_project_date) {
        this.zb_project_date = zb_project_date;
    }

    public String getZb_project_address() {
        return zb_project_address;
    }

    public void setZb_project_address(String zb_project_address) {
        this.zb_project_address = zb_project_address;
    }

    public String getZb_flie_je() {
        return zb_flie_je;
    }

    public void setZb_flie_je(String zb_flie_je) {
        this.zb_flie_je = zb_flie_je;
    }

    public String getZb_vendor_bond() {
        return zb_vendor_bond;
    }

    public void setZb_vendor_bond(String zb_vendor_bond) {
        this.zb_vendor_bond = zb_vendor_bond;
    }

    public String getZb_corporation() {
        return zb_corporation;
    }

    public void setZb_corporation(String zb_corporation) {
        this.zb_corporation = zb_corporation;
    }

    public String getZb_buyer() {
        return zb_buyer;
    }

    public void setZb_buyer(String zb_buyer) {
        this.zb_buyer = zb_buyer;
    }

    public String getZb_contactor() {
        return zb_contactor;
    }

    public void setZb_contactor(String zb_contactor) {
        this.zb_contactor = zb_contactor;
    }

    public String getZb_tel() {
        return zb_tel;
    }

    public void setZb_tel(String zb_tel) {
        this.zb_tel = zb_tel;
    }

    public String getZb_mail() {
        return zb_mail;
    }

    public void setZb_mail(String zb_mail) {
        this.zb_mail = zb_mail;
    }

    public Date getZb_answer_date() {
        return zb_answer_date;
    }

    public void setZb_answer_date(Date zb_answer_date) {
        this.zb_answer_date = zb_answer_date;
    }

    public Date getZb_bid_start_date() {
        return zb_bid_start_date;
    }

    public void setZb_bid_start_date(Date zb_bid_start_date) {
        this.zb_bid_start_date = zb_bid_start_date;
    }

    public Date getZb_bid_end_date() {
        return zb_bid_end_date;
    }

    public void setZb_bid_end_date(Date zb_bid_end_date) {
        this.zb_bid_end_date = zb_bid_end_date;
    }

    public Date getZb_open_date() {
        return zb_open_date;
    }

    public void setZb_open_date(Date zb_open_date) {
        this.zb_open_date = zb_open_date;
    }

    public Date getZb_appeal_date() {
        return zb_appeal_date;
    }

    public void setZb_appeal_date(Date zb_appeal_date) {
        this.zb_appeal_date = zb_appeal_date;
    }

    public Date getZb_enrol_end_date() {
        return zb_enrol_end_date;
    }

    public void setZb_enrol_end_date(Date zb_enrol_end_date) {
        this.zb_enrol_end_date = zb_enrol_end_date;
    }

    public String getZb_memo() {
        return zb_memo;
    }

    public void setZb_memo(String zb_memo) {
        this.zb_memo = zb_memo;
    }

    public String getZb_status() {
        return zb_status;
    }

    public void setZb_status(String zb_status) {
        this.zb_status = zb_status;
    }

    public int getZb_created_by() {
        return zb_created_by;
    }

    public void setZb_created_by(int zb_created_by) {
        this.zb_created_by = zb_created_by;
    }

    public Date getZb_creation_date() {
        return zb_creation_date;
    }

    public void setZb_creation_date(Date zb_creation_date) {
        this.zb_creation_date = zb_creation_date;
    }

    public int getZb_last_updated_by() {
        return zb_last_updated_by;
    }

    public void setZb_last_updated_by(int zb_last_updated_by) {
        this.zb_last_updated_by = zb_last_updated_by;
    }

    public Date getZb_last_update_date() {
        return zb_last_update_date;
    }

    public void setZb_last_update_date(Date zb_last_update_date) {
        this.zb_last_update_date = zb_last_update_date;
    }

    public int getApprove_by() {
        return approve_by;
    }

    public void setApprove_by(int approve_by) {
        this.approve_by = approve_by;
    }

    public String getAttribute1() {
        return attribute1;
    }

    public void setAttribute1(String attribute1) {
        this.attribute1 = attribute1;
    }

    public String getAttribute2() {
        return attribute2;
    }

    public void setAttribute2(String attribute2) {
        this.attribute2 = attribute2;
    }

    public String getAttribute3() {
        return attribute3;
    }

    public void setAttribute3(String attribute3) {
        this.attribute3 = attribute3;
    }

    public String getAttribute4() {
        return attribute4;
    }

    public void setAttribute4(String attribute4) {
        this.attribute4 = attribute4;
    }

    public String getAttribute5() {
        return attribute5;
    }

    public void setAttribute5(String attribute5) {
        this.attribute5 = attribute5;
    }

    public String getAttribute6() {
        return attribute6;
    }

    public void setAttribute6(String attribute6) {
        this.attribute6 = attribute6;
    }

    public String getAttribute7() {
        return attribute7;
    }

    public void setAttribute7(String attribute7) {
        this.attribute7 = attribute7;
    }

    public String getAttribute8() {
        return attribute8;
    }

    public void setAttribute8(String attribute8) {
        this.attribute8 = attribute8;
    }

    public String getAttribute9() {
        return attribute9;
    }

    public void setAttribute9(String attribute9) {
        this.attribute9 = attribute9;
    }

    public String getZb_project_no() {
        return zb_project_no;
    }

    public void setZb_project_no(String zb_project_no) {
        this.zb_project_no = zb_project_no;
    }

    public String getZb_last_person() {
        return zb_last_person;
    }

    public void setZb_last_person(String zb_last_person) {
        this.zb_last_person = zb_last_person;
    }

    public String getZb_start_person() {
        return zb_start_person;
    }

    public void setZb_start_person(String zb_start_person) {
        this.zb_start_person = zb_start_person;
    }

    public String getZb_approve_person() {
        return zb_approve_person;
    }

    public void setZb_approve_person(String zb_approve_person) {
        this.zb_approve_person = zb_approve_person;
    }

    public String getZb_type() {
        return zb_type;
    }

    public void setZb_type(String zb_type) {
        this.zb_type = zb_type;
    }

    
    
}
