/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package srm.entity;
import java.util.Date;
/**
 *
 * @author xdm2556561
 */
public class CUX_DJ_ADDRESS_ALL {
    private int dj_header_id;//通知编号
    private String dj_title;//标题
    private Date dj_publish_date;//发布时间
    private String dj_utl;//UTL联接地址
    private String status;//状态
    private String attr1;//备选字段1
    private String attr2;//备选字段2
    private String attr3;//备选字段3
    private String attr4;//备选字段4
    private String attr5;//备选字段5

    public int getDj_header_id() {
        return dj_header_id;
    }

    public void setDj_header_id(int dj_header_id) {
        this.dj_header_id = dj_header_id;
    }

    public String getDj_title() {
        return dj_title;
    }

    public void setDj_title(String dj_title) {
        this.dj_title = dj_title;
    }

    public Date getDj_publish_date() {
        return dj_publish_date;
    }

    public void setDj_publish_date(Date dj_publish_date) {
        this.dj_publish_date = dj_publish_date;
    }

    public String getDj_utl() {
        return dj_utl;
    }

    public void setDj_utl(String dj_utl) {
        this.dj_utl = dj_utl;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getAttr1() {
        return attr1;
    }

    public void setAttr1(String attr1) {
        this.attr1 = attr1;
    }

    public String getAttr2() {
        return attr2;
    }

    public void setAttr2(String attr2) {
        this.attr2 = attr2;
    }

    public String getAttr3() {
        return attr3;
    }

    public void setAttr3(String attr3) {
        this.attr3 = attr3;
    }

    public String getAttr4() {
        return attr4;
    }

    public void setAttr4(String attr4) {
        this.attr4 = attr4;
    }

    public String getAttr5() {
        return attr5;
    }

    public void setAttr5(String attr5) {
        this.attr5 = attr5;
    }

    
}
