/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package srm.entity;

import java.util.Date;

/**
 *供应商注册的相关信息
 * @author zac2078106
 */
public class SupplierRegisterInfo {
    private long id;
    private long supregId;//关联SupplierRegister
    private String registered_comapny_name;//供应商注册名称
    private String contancts_name;//业务联系人名
    private String contancts_position;//业务联系人职务
    private String contancts_office_phone;//业务联系人办公电话
    private String contancts_email;//业务联系人电子邮件
    private String contancts_phone;//业务联系人手机
    private int created_by;//创建人
    private Date creation_date;//创建时间
    private int last_updated_by;//最后修改人
    private Date last_update_date;//最后修改时间
    private int last_update_login;//最后修改的登陆ID
    private String attribute_category;
    private String attribute1;
    private String attribute2;
    private String attribute3;
    private String attribute4;
    private String attribute5;
    private String attribute6;
    private String attribute7;
    private String attribute8;
    private String attribute9;
    private String attribute10;
    private String attribute11;
    private String attribute12;
    private String attribute13;
    private String attribute14;
    private String attribute15;

    public long getSupregId() {
        return supregId;
    }

    public void setSupregId(long supregId) {
        this.supregId = supregId;
    }

    public String getRegistered_comapny_name() {
        return registered_comapny_name;
    }

    public void setRegistered_comapny_name(String registered_comapny_name) {
        this.registered_comapny_name = registered_comapny_name;
    }
    
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getContancts_name() {
        return contancts_name;
    }

    public void setContancts_name(String contancts_name) {
        this.contancts_name = contancts_name;
    }

    public String getContancts_position() {
        return contancts_position;
    }

    public void setContancts_position(String contancts_position) {
        this.contancts_position = contancts_position;
    }

    public String getContancts_office_phone() {
        return contancts_office_phone;
    }

    public void setContancts_office_phone(String contancts_office_phone) {
        this.contancts_office_phone = contancts_office_phone;
    }

    public String getContancts_email() {
        return contancts_email;
    }

    public void setContancts_email(String contancts_email) {
        this.contancts_email = contancts_email;
    }

    public String getContancts_phone() {
        return contancts_phone;
    }

    public void setContancts_phone(String contancts_phone) {
        this.contancts_phone = contancts_phone;
    }

    public int getCreated_by() {
        return created_by;
    }

    public void setCreated_by(int created_by) {
        this.created_by = created_by;
    }

    public int getLast_updated_by() {
        return last_updated_by;
    }

    public void setLast_updated_by(int last_updated_by) {
        this.last_updated_by = last_updated_by;
    }

    public Date getCreation_date() {
        return creation_date;
    }

    public void setCreation_date(Date creation_date) {
        this.creation_date = creation_date;
    }

    public Date getLast_update_date() {
        return last_update_date;
    }

    public void setLast_update_date(Date last_update_date) {
        this.last_update_date = last_update_date;
    }

    public int getLast_update_login() {
        return last_update_login;
    }

    public void setLast_update_login(int last_update_login) {
        this.last_update_login = last_update_login;
    }

    public String getAttribute_category() {
        return attribute_category;
    }

    public void setAttribute_category(String attribute_category) {
        this.attribute_category = attribute_category;
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

    public String getAttribute10() {
        return attribute10;
    }

    public void setAttribute10(String attribute10) {
        this.attribute10 = attribute10;
    }

    public String getAttribute11() {
        return attribute11;
    }

    public void setAttribute11(String attribute11) {
        this.attribute11 = attribute11;
    }

    public String getAttribute12() {
        return attribute12;
    }

    public void setAttribute12(String attribute12) {
        this.attribute12 = attribute12;
    }

    public String getAttribute13() {
        return attribute13;
    }

    public void setAttribute13(String attribute13) {
        this.attribute13 = attribute13;
    }

    public String getAttribute14() {
        return attribute14;
    }

    public void setAttribute14(String attribute14) {
        this.attribute14 = attribute14;
    }

    public String getAttribute15() {
        return attribute15;
    }

    public void setAttribute15(String attribute15) {
        this.attribute15 = attribute15;
    }

}
