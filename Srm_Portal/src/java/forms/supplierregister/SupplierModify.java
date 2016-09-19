/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package forms.supplierregister;

import common.AjaxResponse;
import common.LanguageNational;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import srm.entity.Country;
import srm.entity.Currency;
import srm.entity.Material;
import srm.entity.SupplierRegister;
import srm.entity.SupplierRegisterInfo;
import srm.service.SupplierRegisterService;
import srm.service.SupplierRegisterServiceImpl;
import xx.mvc.util.FormUtil;

/**
 *注册失败，信息更改
 * @author zac2078106
 */
public class SupplierModify {

    private final SupplierRegisterService supRegService = new SupplierRegisterServiceImpl();

    //加载供应商注册信息
    public void onLoad(Map mapRequest, Map mapResponse) {
        String id = FormUtil.getStr("id", mapRequest);
        mapRequest.put("sup_id", id);
        try {
            //加载国家
            List<Country> countrylist = supRegService .getCountry();
            if(countrylist == null || countrylist.isEmpty()){
                throw new Exception(LanguageNational.getValue("msg00001"));//加载国家失败
            }else{
                mapRequest.put("countrylist",countrylist);
            }
            //加载货币
            List<Currency> currencylist = supRegService.getCurrency();
            if(currencylist == null || currencylist.isEmpty()){
                throw new Exception(LanguageNational.getValue("msg00002"));//加载货币失败
            }else{
                mapRequest.put("currencylist",currencylist);
            }
            //加载物料大类
            List<Material> materials = supRegService.getMaterial();
            if(materials == null || materials.isEmpty()){
                throw new Exception(LanguageNational.getValue("msg00010"));//加载物料大类失败
            }else{
                mapRequest.put("materials", materials);
            }
            if (id == null || id.isEmpty()) {
                throw new Exception(LanguageNational.getValue("msg00004"));//获取id失败
            } else {
                Map map = new HashMap();
                map.put("id", id);
                map.put("supregId", id);
                List<SupplierRegister> supps = supRegService.getSupReg(map);
                if(supps == null || supps.isEmpty()){
                    throw new Exception(LanguageNational.getValue("msg00005"));//获取供应商信息失败
                }else{
                    SupplierRegister supp = supps.get(0);
                    mapRequest.put("supp", supp);
                    mapRequest.put("company_register_date", new SimpleDateFormat("yyyy-MM-dd").format(supp.getCompany_register_date()));
                    List<SupplierRegisterInfo> supinfolist = supRegService.getSupRegInfo(map);
                    if(supinfolist != null && !supinfolist.isEmpty()){
                        mapRequest.put("supinfolist", supinfolist);
                    }
                }
            }
            Map mapa = new HashMap();
            mapa.put("p_reg_id", id);
            mapa.put("p_error", "");
            mapa.put("p_error_msg", "");
            boolean msg = supRegService.supplier_register(mapa);
            if(msg){
                String p_error = (String)mapa.get("p_error");
                String p_error_msg = (String)mapa.get("p_error_msg");
                if("S".equals(p_error)){
                    AjaxResponse.writeOutString("<script>window.location.href='../supplierregister/RegisterSuccess.jsp';</script>");//注册成功之后跳转到提交成功页面
                }else{
                    throw new Exception(LanguageNational.getValue("msg00007")+p_error_msg);//注册失败:
                }
            }else{
                throw new Exception(LanguageNational.getValue("msg00008"));//调用注册接口失败
            }
        } catch (Exception ex) {
            mapRequest.put("error", ex.getMessage());
            Logger.getLogger(SupplierModify.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void update_submint(Map mapRequest, Map mapSesion) {
        String id = FormUtil.getStr("id", mapRequest);
        String business_category = FormUtil.getStr("business_category", mapRequest);//业务类型
        String[] material_categorys = FormUtil.getStrArr("material_category", mapRequest);//物料大类
        String registered_comapny_name = FormUtil.getStr("registered_comapny_name", mapRequest);//公司注册名称
        String registered_comapny_enname = FormUtil.getStr("registered_comapny_enname", mapRequest);//公司英文名称
        String company_description = FormUtil.getStr("company_description", mapRequest);//公司简介
        String company_type = FormUtil.getStr("company_type", mapRequest);//公司类型
        String[] business_types = FormUtil.getStrArr("business_type", mapRequest);//经营性质
        String company_previous_name = FormUtil.getStr("company_previous_name", mapRequest);//公司曾用名
        String parent_company = FormUtil.getStr("parent_company", mapRequest);//所属集团/公司
        String register_address_country = FormUtil.getStr("register_address_country", mapRequest);//公司注册地_国家
        String register_address_province = FormUtil.getStr("register_address_province", mapRequest);//公司注册地_省
        String register_address_city = FormUtil.getStr("register_address_city", mapRequest);//公司注册地_市
        String register_address_town = FormUtil.getStr("register_address_town", mapRequest);//公司注册地_县
        String register_address_road = FormUtil.getStr("register_address_road", mapRequest);//公司注册地_区
        String register_address_postalcode = FormUtil.getStr("register_address_postalcode", mapRequest);//公司注册地_邮政编码
        String office_address_country = FormUtil.getStr("office_address_country", mapRequest);//公司办公地址_国家
        String office_address_province = FormUtil.getStr("office_address_province", mapRequest);//公司办公地址_省
        String office_address_city = FormUtil.getStr("office_address_city", mapRequest);//公司办公地址_市
        String office_address_town = FormUtil.getStr("office_address_town", mapRequest);//公司办公地址_县
        String office_address_road = FormUtil.getStr("office_address_road", mapRequest);//公司办公地址_区
        String office_address_postalcode = FormUtil.getStr("office_address_postalcode", mapRequest);//公司办公地址_邮政编码
        String company_web = FormUtil.getStr("company_web", mapRequest);//公司网址
        String currency = FormUtil.getStr("currency", mapRequest);//币种
        String register_capital = FormUtil.getStr("register_capital", mapRequest);//注册资金
        String unit = FormUtil.getStr("unit", mapRequest);//单位
        String worker = FormUtil.getStr("worker", mapRequest);//员工数量
        String factory_area = FormUtil.getStr("factory_area", mapRequest);//工厂面积
        String factory_property = FormUtil.getStr("factory_property", mapRequest);//工厂产权
        String business_license_number = FormUtil.getStr("business_license_number", mapRequest);//营业执照号码
        String tax_register_number = FormUtil.getStr("tax_register_number", mapRequest);//税务登记号
        String organization_code = FormUtil.getStr("organization_code", mapRequest);//组织机构代码
        String tax_type = FormUtil.getStr("tax_type", mapRequest);//开票方式
        String company_register_date = FormUtil.getStr("company_register_date", mapRequest);//公司注册日期
        String tax_rate = FormUtil.getStr("tax_rate", mapRequest);//税率
        String corporate_representative = FormUtil.getStr("corporate_representative", mapRequest);//法人代表
        
        //公司负责人信息
        String general_manager_name = FormUtil.getStr("general_manager_name", mapRequest);//公司负责人_姓名
        String general_manager_position = FormUtil.getStr("general_manager_position", mapRequest);//公司负责人_职务
        String general_manager_office_phone = FormUtil.getStr("general_manager_office_phone", mapRequest);//公司负责人_办公电话
        String general_manager_email = FormUtil.getStr("general_manager_email", mapRequest);//公司负责人_电子邮件
        String general_manager_phone = FormUtil.getStr("general_manager_phone", mapRequest);//公司负责人_手机
        
        //填表人信息
        String completed_name = FormUtil.getStr("completed_name", mapRequest);//填表人_姓名
        String completed_position = FormUtil.getStr("completed_position", mapRequest);//填表人_职务
        String completed_email = FormUtil.getStr("completed_email", mapRequest);//填表人_电子邮件
        String completed_phone = FormUtil.getStr("completed_phone", mapRequest);//填表人_手机
        
        //原厂信息
        String original_factory = FormUtil.getStr("original_factory", mapRequest);//原厂
        String original_factory_web = FormUtil.getStr("original_factory_web", mapRequest);//原厂网址
        String original_factory_name = FormUtil.getStr("original_factory_name", mapRequest);//原厂名称
        String original_factory_position = FormUtil.getStr("original_factory_position", mapRequest);//原厂部门及职务
        String original_factory_email = FormUtil.getStr("original_factory_email", mapRequest);//原厂电子邮件
        String original_factory_phone = FormUtil.getStr("original_factory_phone", mapRequest);//原厂手机
        //公司详细信息
        String company_rank = FormUtil.getStr("company_rank", mapRequest);//公司行业排名是否前5:1(是,国内);2(是,国际);3(否)
        String company_property = FormUtil.getStr("company_property", mapRequest);//公司是否为国外知名企业的分公司或设立的独资合资公司:1(是);2(否)
        String quality_standard = FormUtil.getStr("quality_standard", mapRequest);//质量执行标准
        String safe_quality_certificate = FormUtil.getStr("safe_quality_certificate", mapRequest);//是否通过安全或质量验证;1(是);2(否)
        String business_destribution_domestic = FormUtil.getStr("business_destribution_domestic", mapRequest);//业务分部比例-国内
        String business_destribution_occident = FormUtil.getStr("business_destribution_occident", mapRequest);//业务分部比例-欧美
        String business_destribution_asian = FormUtil.getStr("business_destribution_asian", mapRequest);//业务分部比例-亚洲
        String business_destribution_other = FormUtil.getStr("business_destribution_other", mapRequest);//业务分部比例-其他
        String business_area = FormUtil.getStr("business_area", mapRequest);//业务范围
        String year1 = FormUtil.getStr("year1", mapRequest);//年度1
        String annual_turnover1 = FormUtil.getStr("annual_turnover1", mapRequest);//营业额1
        String year2 = FormUtil.getStr("year2", mapRequest);//年度2
        String annual_turnover2 = FormUtil.getStr("annual_turnover2", mapRequest);//营业额2
        String year3 = FormUtil.getStr("year3", mapRequest);//年度3
        String annual_turnover3 = FormUtil.getStr("annual_turnover3", mapRequest);//营业额4
        
        //主要客户信息
        String customer_name1 = FormUtil.getStr("customer_name1", mapRequest);//主要客户1
        String three_year_turnover1 = FormUtil.getStr("three_year_turnover1", mapRequest);//近三年交易额1
        String business_range1 = FormUtil.getStr("business_range1", mapRequest);//合作范围1
        String customer_name2 = FormUtil.getStr("customer_name2", mapRequest);//主要客户2
        String three_year_turnover2 = FormUtil.getStr("three_year_turnover2", mapRequest);//近三年交易额2
        String business_range2 = FormUtil.getStr("business_range2", mapRequest);//合作范围2
        String customer_name3 = FormUtil.getStr("customer_name3", mapRequest);//主要客户3
        String three_year_turnover3 = FormUtil.getStr("three_year_turnover3", mapRequest);//近三年交易额3
        String business_range3 = FormUtil.getStr("business_range3", mapRequest);//合作范围3
        
        //工厂信息
        String factory_address1 = FormUtil.getStr("factory_address1", mapRequest);//公司出货地址1
        String material1 = FormUtil.getStr("material1", mapRequest);//对应物料1
        String factory_address2 = FormUtil.getStr("factory_address2", mapRequest);//公司出货地址2
        String material2 = FormUtil.getStr("material2", mapRequest);//对应物料2
        String factory_address3 = FormUtil.getStr("factory_address3", mapRequest);//公司出货地址3
        String material3 = FormUtil.getStr("material3", mapRequest);//对应物料3
        try{
        SupplierRegister supReg = new SupplierRegister();
            supReg.setId(Long.valueOf(id));
            supReg.setBusiness_category(business_category);
            StringBuilder str = new StringBuilder();
            for (String material_category : material_categorys) {
                str.append(material_category);
                str.append(";");
            }
            String material_category = str.toString();
            supReg.setMaterial_category(material_category);//物料大类
            supReg.setRegistered_comapny_name(registered_comapny_name);
            supReg.setRegistered_comapny_enname(registered_comapny_enname);
            supReg.setCompany_description(company_description);
            supReg.setCompany_type(company_type);
            //经营性质:选中为'Y',未选中为'N'
            for (String business_type : business_types) {
                if(business_type.equals("N1")){
                    supReg.setManufacturers_supplier("Y");
                }
            }
            for (String business_type : business_types) {
                if(business_type.equals("N2")){
                    supReg.setAgent_supplier("Y");
                }
            }
            for (String business_type : business_types) {
                if(business_type.equals("N3")){
                    supReg.setOutsourcingcompany_supplier("Y");
                }
            }
            for (String business_type : business_types) {
                if(business_type.equals("N4")){
                    supReg.setRetailer_supplier("Y");
                }
            }
            for (String business_type : business_types) {
                if(business_type.equals("N5")){
                    supReg.setServiceprovider_supplier("Y");
                }
            }
            for (String business_type : business_types) {
                if(business_type.equals("N6")){
                    supReg.setLogisticscarriers_supplier("Y");
                }
            }
            for (String business_type : business_types) {
                if(business_type.equals("N7")){
                    supReg.setReclaimingagents_supplier("Y");
                }
            }
            supReg.setCompany_previous_name(company_previous_name);
            supReg.setParent_company(parent_company);
            supReg.setRegister_address_country(register_address_country);
            supReg.setRegister_address_province(register_address_province);
            supReg.setRegister_address_city(register_address_city);
            supReg.setRegister_address_town(register_address_town);
            supReg.setRegister_address_road(register_address_road);
            supReg.setRegister_address_postalcode(register_address_postalcode);
            supReg.setOffice_address_country(office_address_country);
            supReg.setOffice_address_province(office_address_province);
            supReg.setOffice_address_city(office_address_city);
            supReg.setOffice_address_town(office_address_town);
            supReg.setOffice_address_road(office_address_road);
            supReg.setOffice_address_postalcode(office_address_postalcode);
            supReg.setCompany_web(company_web);
            supReg.setCurrency(currency);
            supReg.setRegister_capital(strtodouble(register_capital));
            supReg.setUnit(unit);
            supReg.setWorker(Long.valueOf(worker));
            supReg.setFactory_area(strtodouble(factory_area));
            supReg.setFactory_property(factory_property);
            supReg.setBusiness_license_number(business_license_number);
            supReg.setTax_register_number(tax_register_number);
            supReg.setOrganization_code(organization_code);
            supReg.setTax_type(tax_type);
            supReg.setCompany_register_date(new SimpleDateFormat("yyyy-MM-dd").parse(company_register_date));
            supReg.setTax_rate(strtodouble(tax_rate));
            supReg.setCorporate_representative(corporate_representative);
            
            supReg.setGeneral_manager_name(general_manager_name);
            supReg.setGeneral_manager_position(general_manager_position);
            supReg.setGeneral_manager_office_phone(general_manager_office_phone);
            supReg.setGeneral_manager_email(general_manager_email.trim());
            supReg.setGeneral_manager_phone(general_manager_phone);
            
            supReg.setCompleted_name(completed_name);
            supReg.setCompleted_position(completed_position);
            supReg.setCompleted_email(completed_email.trim());
            supReg.setCompleted_phone(completed_phone);
//            if(business_type !=null && "agent".equals(business_type.trim())){
//            }
            supReg.setOriginal_factory(original_factory);
            supReg.setOriginal_factory_name(original_factory_name);
            supReg.setOriginal_factory_web(original_factory_web);
            supReg.setOriginal_factory_position(original_factory_position);
            supReg.setOriginal_factory_phone(original_factory_phone);
            supReg.setOriginal_factory_email(original_factory_email.trim());
            supReg.setCompany_rank(company_rank);
            supReg.setCompany_property(company_property);
            supReg.setQuality_standard(quality_standard);
            supReg.setSafe_quality_certificate(safe_quality_certificate);
            supReg.setBusiness_destribution_domestic(strtodouble(business_destribution_domestic));
            supReg.setBusiness_destribution_occident(strtodouble(business_destribution_occident));
            supReg.setBusiness_destribution_asian(strtodouble(business_destribution_asian));
            supReg.setBusiness_destribution_other(strtodouble(business_destribution_other));
            supReg.setBusiness_area(business_area);
            supReg.setYear1(year1);
            supReg.setAnnual_turnover1(strtodouble(annual_turnover1));
            supReg.setYear2(year2);
            supReg.setAnnual_turnover2(strtodouble(annual_turnover2));
            supReg.setYear3(year3);
            supReg.setAnnual_turnover3(strtodouble(annual_turnover3));
            supReg.setCustomer_name1(customer_name1);
            supReg.setBusiness_range1(business_range1);
            supReg.setThree_year_turnover1(strtodouble(three_year_turnover1));
            supReg.setCustomer_name2(customer_name2);
            supReg.setBusiness_range2(business_range2);
            supReg.setThree_year_turnover2(strtodouble(three_year_turnover2));
            supReg.setCustomer_name3(customer_name3);
            supReg.setThree_year_turnover3(strtodouble(three_year_turnover3));
            supReg.setBusiness_range3(business_range3);
            supReg.setFactory_address1(factory_address1);
            supReg.setMaterial1(material1);
            supReg.setFactory_address2(factory_address2);
            supReg.setMaterial2(material2);
            supReg.setFactory_address3(factory_address3);
            supReg.setMaterial3(material3);
            //供应商关联信息
            String[] idArray = FormUtil.getStrArr("supinfo_id", mapRequest);
            String[] contancts_name = FormUtil.getStrArr("contancts_name", mapRequest);
            String[] contancts_position = FormUtil.getStrArr("contancts_position", mapRequest);
            String[] contancts_office_phone = FormUtil.getStrArr("contancts_office_phone", mapRequest);
            String[] contancts_email = FormUtil.getStrArr("contancts_email", mapRequest);
            String[] contancts_phone = FormUtil.getStrArr("contancts_phone", mapRequest);
            List<Map> supinfoList = new ArrayList<Map>();
            if(contancts_name != null && contancts_name.length > 0){
                int i = contancts_name.length;
                for(int j=0;j<i;j++){
                    Map infomap = new HashMap();
                    infomap.put("id", Long.valueOf(idArray[j]));
                    infomap.put("registered_comapny_name", registered_comapny_name);
                    infomap.put("contancts_name", contancts_name[j]);
                    infomap.put("contancts_position", contancts_position[j]);
                    infomap.put("contancts_office_phone", contancts_office_phone[j]);
                    infomap.put("contancts_email", contancts_email[j].trim());
                    infomap.put("contancts_phone", contancts_phone[j]);
                    supinfoList.add(infomap);
                }
            }
            Map map = new HashMap();
            map.put("p_reg_id", id);
            map.put("p_error", "");
            map.put("p_error_msg", "");
            boolean isSuccess = supRegService.updateSupplier(supReg, supinfoList);
            if(isSuccess){
                boolean flag = supRegService.supplier_register(map);
                if(flag){
                    String p_error = (String)map.get("p_error");
                    String p_error_msg = (String)map.get("p_error_msg");
                    if("S".equals(p_error)){
                        AjaxResponse.writeOutString("<script>window.location.href='../supplierregister/RegisterSuccess.jsp';</script>");//注册成功之后跳转到提交成功页面
                    }else{
                        AjaxResponse.writeOutString("<script>window.location.href='../supplierregister/SupplierModify.jsp?id="+id+"';</script>");//注册失败，停留在供应商更改页面
                        throw new Exception(LanguageNational.getValue("msg00007")+p_error_msg);//注册失败:
                    }
                }else{
                    throw new Exception(LanguageNational.getValue("msg00008"));//调用注册接口失败
                }
            }else{
                throw new Exception(LanguageNational.getValue("msg00009"));//供应商信息更改失败
            }
        }catch(Exception ex){
            mapRequest.put("error", ex.getMessage());
            Logger.getLogger(SupplierModify.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
    //转换为double
    public double strtodouble(String str){
        double a;
        if(str == null || "".equals(str)){
            a = 0;
        }else{
            a = Double.valueOf(str);
        }
        return a;
    }
}
