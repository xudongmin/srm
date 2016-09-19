/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package srm.entity;

import java.util.Date;

/**
 *系统通知公告
 * @author zac2078106
 */
public class CUX_TZ_HEADERS_ALL {
    private int tz_header_id;//通知编号
    private String tz_title;//标题
    private String tz_description;//内容
    private Date tz_date;//通知时间
    private Date create_date;//创建时间
    private int created_by;//创建人ID
    private String tz_created_person;//创建人姓名
    private int approve_by;//审批人ID
    private String tz_approve_person;//审批人姓名
    private Date tz_approve_date;//审批时间
    private String tz_approve_result;//审批结果
    private Date last_update_date;//最后更新时间
    private String attribute1;//备选字段1
    private String attribute2;//备选字段2
    private String attribute3;//备选字段3
    private String attribute4;//备选字段4
    private String attribute5;//备选字段5
    private String attribute6;//备选字段6
    private String attribute7;//备选字段7
    private String attribute8;//备选字段8
    private String attribute9;//备选字段9
    private int file_id;//附件ID

    public int getFile_id() {
        return file_id;
    }

    public void setFile_id(int file_id) {
        this.file_id = file_id;
    }
    
    

    public int getTz_header_id() {
        return tz_header_id;
    }

    public void setTz_header_id(int tz_header_id) {
        this.tz_header_id = tz_header_id;
    }

    public String getTz_title() {
        return tz_title;
    }

    public void setTz_title(String tz_title) {
        this.tz_title = tz_title;
    }

    public String getTz_description() {
        return tz_description;
    }

    public void setTz_description(String tz_description) {
        this.tz_description = tz_description;
    }

    public Date getTz_date() {
        return tz_date;
    }

    public void setTz_date(Date tz_date) {
        this.tz_date = tz_date;
    }

    public Date getCreate_date() {
        return create_date;
    }

    public void setCreate_date(Date create_date) {
        this.create_date = create_date;
    }

    public int getCreated_by() {
        return created_by;
    }

    public void setCreated_by(int created_by) {
        this.created_by = created_by;
    }

    public String getTz_created_person() {
        return tz_created_person;
    }

    public void setTz_created_person(String tz_created_person) {
        this.tz_created_person = tz_created_person;
    }

    public int getApprove_by() {
        return approve_by;
    }

    public void setApprove_by(int approve_by) {
        this.approve_by = approve_by;
    }

    public String getTz_approve_person() {
        return tz_approve_person;
    }

    public void setTz_approve_person(String tz_approve_person) {
        this.tz_approve_person = tz_approve_person;
    }

    public Date getTz_approve_date() {
        return tz_approve_date;
    }

    public void setTz_approve_date(Date tz_approve_date) {
        this.tz_approve_date = tz_approve_date;
    }

    public String getTz_approve_result() {
        return tz_approve_result;
    }

    public void setTz_approve_result(String tz_approve_result) {
        this.tz_approve_result = tz_approve_result;
    }

    public Date getLast_update_date() {
        return last_update_date;
    }

    public void setLast_update_date(Date last_update_date) {
        this.last_update_date = last_update_date;
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
    
    
}
