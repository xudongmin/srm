/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package srm.entity;

import java.util.Date;

/**
 *供应商注册
 * @author zac2078106
 */
public class SupplierRegister {
    private long id;
    //品类信息
    private String business_category;//业务类型
    private String material_category;//物料大类
    private String registered_comapny_name;//公司注册名称
    private String registered_comapny_enname;//公司名称(英文)
    
    //公司基本信息
    private String company_description;//公司简介
    private String company_type;//公司类型
//    private String business_type;//经营性质
    private String manufacturers_supplier;//是否生产厂商'Y'是;'N'否
    private String agent_supplier;//是否代理商'Y'是;'N'否
    private String outsourcingcompany_supplier;//是否委外加工厂商'Y'是;'N'否
    private String retailer_supplier;//是否贸易商'Y'是;'N'否
    private String serviceprovider_supplier;//是否服务商'Y'是;'N'否
    private String logisticscarriers_supplier;//是否物流商'Y'是;'N'否
    private String reclaimingagents_supplier;//是否回收商'Y'是;'N'否
    private String company_previous_name;//公司曾用名
    private String parent_company;//所属集团/公司
    private String register_address_country;//公司注册地_国家
    private String register_address_province;//公司注册地_省
    private String register_address_city;//公司注册地_市
    private String register_address_town;//公司注册地_县
    private String register_address_road;//公司注册地_区
    private String register_address_postalcode;//公司注册地_邮政编码
    private String office_address_country;//公司办公地址_国家
    private String office_address_province;//公司办公地址_省
    private String office_address_city;//公司办公地址_市
    private String office_address_town;//公司办公地址_县
    private String office_address_road;//公司办公地址_区
    private String office_address_postalcode;//公司办公地址_邮政编码
    private String company_web;//公司网址
    private String currency;//币种
    private double register_capital;//注册资金
    private String unit;//单位
    private long worker;//员工数量
    private double factory_area;//工厂面积
    private String factory_property;//工厂产权
    private String business_license_number;//营业执照号码
    private String tax_register_number;//税务登记号
    private String organization_code;//组织机构代码
    private String tax_type;//开票方式
    private Date company_register_date;//公司注册日期
    private double tax_rate;//税率
    private String corporate_representative;//法人代表
    
    //公司负责人信息
    private String general_manager_name;//公司负责人_姓名
    private String general_manager_position;//公司负责人_职务
    private String general_manager_office_phone;//公司负责人_办公电话
    private String general_manager_email;//公司负责人_电子邮件
    private String general_manager_phone;//公司负责人_手机
    
    //填表人信息
    private String completed_name;//填表人_姓名
    private String completed_position;//填表人_职务
    private String completed_email;//填表人_电子邮件
    private String completed_phone;//填表人_手机
    
    //原厂信息--代理商必须
    private String original_factory;//原厂
    private String original_factory_web;//原厂网址
    private String original_factory_name;//原厂名称
    private String original_factory_position;//原厂部门及职务
    private String original_factory_email;//原厂电子邮件
    private String original_factory_phone;//原厂手机
    
    //公司详细信息
    private String company_rank;//公司行业排名是否前5：Y1(是,国内);Y2(是,国际);N(否)
    private String company_property;//公司是否为国外知名企业的分公司或设立的独资合资公司: Y(是);N(否)
    private String quality_standard;//质量执行标准
    private String safe_quality_certificate;//是否通过安全或质量验证;Y(是);N(否)'
    private double business_destribution_domestic;//业务分部比例-国内
    private double business_destribution_occident;//业务分部比例-欧美
    private double business_destribution_asian;//业务分部比例-亚洲
    private double business_destribution_other;//业务分部比例-其他
    private String business_area;//业务范围
    
    private String year1;//年度1
    private double annual_turnover1;//营业额1
    private String year2;//年度2
    private double annual_turnover2;//营业额2
    private String year3;//年度3
    private double annual_turnover3;//营业额3
    
    private String customer_name1;//主要客户1
    private double three_year_turnover1;//近三年交易额1
    private String business_range1;//合作范围1
    private String customer_name2;//主要客户2
    private double three_year_turnover2;//近三年交易额2
    private String business_range2;//合作范围2
    private String customer_name3;//主要客户3
    private double three_year_turnover3;//近三年交易额3
    private String business_range3;//合作范围3
    
    private String factory_address1;//公司出货地址1
    private String material1;//对应物料1
    private String factory_address2;//公司出货地址2
    private String material2;//对应物料2
    private String factory_address3;//公司出货地址3
    private String material3;//对应物料3
    
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

    public String getManufacturers_supplier() {
        return manufacturers_supplier;
    }

    public void setManufacturers_supplier(String manufacturers_supplier) {
        this.manufacturers_supplier = manufacturers_supplier;
    }

    public String getAgent_supplier() {
        return agent_supplier;
    }

    public void setAgent_supplier(String agent_supplier) {
        this.agent_supplier = agent_supplier;
    }

    public String getOutsourcingcompany_supplier() {
        return outsourcingcompany_supplier;
    }

    public void setOutsourcingcompany_supplier(String outsourcingcompany_supplier) {
        this.outsourcingcompany_supplier = outsourcingcompany_supplier;
    }

    public String getRetailer_supplier() {
        return retailer_supplier;
    }

    public void setRetailer_supplier(String retailer_supplier) {
        this.retailer_supplier = retailer_supplier;
    }

    public String getServiceprovider_supplier() {
        return serviceprovider_supplier;
    }

    public void setServiceprovider_supplier(String serviceprovider_supplier) {
        this.serviceprovider_supplier = serviceprovider_supplier;
    }

    public String getLogisticscarriers_supplier() {
        return logisticscarriers_supplier;
    }

    public void setLogisticscarriers_supplier(String logisticscarriers_supplier) {
        this.logisticscarriers_supplier = logisticscarriers_supplier;
    }

    public String getReclaimingagents_supplier() {
        return reclaimingagents_supplier;
    }

    public void setReclaimingagents_supplier(String reclaimingagents_supplier) {
        this.reclaimingagents_supplier = reclaimingagents_supplier;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getBusiness_category() {
        return business_category;
    }

    public void setBusiness_category(String business_category) {
        this.business_category = business_category;
    }

    public String getMaterial_category() {
        return material_category;
    }

    public void setMaterial_category(String material_category) {
        this.material_category = material_category;
    }

    public String getRegistered_comapny_name() {
        return registered_comapny_name;
    }

    public void setRegistered_comapny_name(String registered_comapny_name) {
        this.registered_comapny_name = registered_comapny_name;
    }

    public String getRegistered_comapny_enname() {
        return registered_comapny_enname;
    }

    public void setRegistered_comapny_enname(String registered_comapny_enname) {
        this.registered_comapny_enname = registered_comapny_enname;
    }

    public String getCompany_description() {
        return company_description;
    }

    public void setCompany_description(String company_description) {
        this.company_description = company_description;
    }

    public String getCompany_type() {
        return company_type;
    }

    public void setCompany_type(String company_type) {
        this.company_type = company_type;
    }

//    public String getBusiness_type() {
//        return business_type;
//    }
//
//    public void setBusiness_type(String business_type) {
//        this.business_type = business_type;
//    }

    public String getCompany_previous_name() {
        return company_previous_name;
    }

    public void setCompany_previous_name(String company_previous_name) {
        this.company_previous_name = company_previous_name;
    }

    public String getParent_company() {
        return parent_company;
    }

    public void setParent_company(String parent_company) {
        this.parent_company = parent_company;
    }

    public String getRegister_address_country() {
        return register_address_country;
    }

    public void setRegister_address_country(String register_address_country) {
        this.register_address_country = register_address_country;
    }

    public String getRegister_address_province() {
        return register_address_province;
    }

    public void setRegister_address_province(String register_address_province) {
        this.register_address_province = register_address_province;
    }

    public String getRegister_address_city() {
        return register_address_city;
    }

    public void setRegister_address_city(String register_address_city) {
        this.register_address_city = register_address_city;
    }

    public String getRegister_address_town() {
        return register_address_town;
    }

    public void setRegister_address_town(String register_address_town) {
        this.register_address_town = register_address_town;
    }

    public String getRegister_address_road() {
        return register_address_road;
    }

    public void setRegister_address_road(String register_address_road) {
        this.register_address_road = register_address_road;
    }

    public String getRegister_address_postalcode() {
        return register_address_postalcode;
    }

    public void setRegister_address_postalcode(String register_address_postalcode) {
        this.register_address_postalcode = register_address_postalcode;
    }

    public String getOffice_address_country() {
        return office_address_country;
    }

    public void setOffice_address_country(String office_address_country) {
        this.office_address_country = office_address_country;
    }

    public String getOffice_address_province() {
        return office_address_province;
    }

    public void setOffice_address_province(String office_address_province) {
        this.office_address_province = office_address_province;
    }

    public String getOffice_address_city() {
        return office_address_city;
    }

    public void setOffice_address_city(String office_address_city) {
        this.office_address_city = office_address_city;
    }

    public String getOffice_address_town() {
        return office_address_town;
    }

    public void setOffice_address_town(String office_address_town) {
        this.office_address_town = office_address_town;
    }

    public String getOffice_address_road() {
        return office_address_road;
    }

    public void setOffice_address_road(String office_address_road) {
        this.office_address_road = office_address_road;
    }

    public String getOffice_address_postalcode() {
        return office_address_postalcode;
    }

    public void setOffice_address_postalcode(String office_address_postalcode) {
        this.office_address_postalcode = office_address_postalcode;
    }

    public String getCompany_web() {
        return company_web;
    }

    public void setCompany_web(String company_web) {
        this.company_web = company_web;
    }

    public String getCurrency() {
        return currency;
    }

    public void setCurrency(String currency) {
        this.currency = currency;
    }

    public double getRegister_capital() {
        return register_capital;
    }

    public void setRegister_capital(double register_capital) {
        this.register_capital = register_capital;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public long getWorker() {
        return worker;
    }

    public void setWorker(long worker) {
        this.worker = worker;
    }

    public double getFactory_area() {
        return factory_area;
    }

    public void setFactory_area(double factory_area) {
        this.factory_area = factory_area;
    }

    public String getFactory_property() {
        return factory_property;
    }

    public void setFactory_property(String factory_property) {
        this.factory_property = factory_property;
    }

    public String getBusiness_license_number() {
        return business_license_number;
    }

    public void setBusiness_license_number(String business_license_number) {
        this.business_license_number = business_license_number;
    }

    public String getTax_register_number() {
        return tax_register_number;
    }

    public void setTax_register_number(String tax_register_number) {
        this.tax_register_number = tax_register_number;
    }

    public String getOrganization_code() {
        return organization_code;
    }

    public void setOrganization_code(String organization_code) {
        this.organization_code = organization_code;
    }

    public String getTax_type() {
        return tax_type;
    }

    public void setTax_type(String tax_type) {
        this.tax_type = tax_type;
    }

    public Date getCompany_register_date() {
        return company_register_date;
    }

    public void setCompany_register_date(Date company_register_date) {
        this.company_register_date = company_register_date;
    }

    public double getTax_rate() {
        return tax_rate;
    }

    public void setTax_rate(double tax_rate) {
        this.tax_rate = tax_rate;
    }

    public String getCorporate_representative() {
        return corporate_representative;
    }

    public void setCorporate_representative(String corporate_representative) {
        this.corporate_representative = corporate_representative;
    }

    public String getGeneral_manager_name() {
        return general_manager_name;
    }

    public void setGeneral_manager_name(String general_manager_name) {
        this.general_manager_name = general_manager_name;
    }

    public String getGeneral_manager_position() {
        return general_manager_position;
    }

    public void setGeneral_manager_position(String general_manager_position) {
        this.general_manager_position = general_manager_position;
    }

    public String getGeneral_manager_office_phone() {
        return general_manager_office_phone;
    }

    public void setGeneral_manager_office_phone(String general_manager_office_phone) {
        this.general_manager_office_phone = general_manager_office_phone;
    }

    public String getGeneral_manager_email() {
        return general_manager_email;
    }

    public void setGeneral_manager_email(String general_manager_email) {
        this.general_manager_email = general_manager_email;
    }

    public String getGeneral_manager_phone() {
        return general_manager_phone;
    }

    public void setGeneral_manager_phone(String general_manager_phone) {
        this.general_manager_phone = general_manager_phone;
    }

    public String getCompleted_name() {
        return completed_name;
    }

    public void setCompleted_name(String completed_name) {
        this.completed_name = completed_name;
    }

    public String getCompleted_position() {
        return completed_position;
    }

    public void setCompleted_position(String completed_position) {
        this.completed_position = completed_position;
    }

    public String getCompleted_email() {
        return completed_email;
    }

    public void setCompleted_email(String completed_email) {
        this.completed_email = completed_email;
    }

    public String getCompleted_phone() {
        return completed_phone;
    }

    public void setCompleted_phone(String completed_phone) {
        this.completed_phone = completed_phone;
    }

    public String getOriginal_factory() {
        return original_factory;
    }

    public void setOriginal_factory(String original_factory) {
        this.original_factory = original_factory;
    }

    public String getOriginal_factory_web() {
        return original_factory_web;
    }

    public void setOriginal_factory_web(String original_factory_web) {
        this.original_factory_web = original_factory_web;
    }

    public String getOriginal_factory_name() {
        return original_factory_name;
    }

    public void setOriginal_factory_name(String original_factory_name) {
        this.original_factory_name = original_factory_name;
    }

    public String getOriginal_factory_position() {
        return original_factory_position;
    }

    public void setOriginal_factory_position(String original_factory_position) {
        this.original_factory_position = original_factory_position;
    }

    public String getOriginal_factory_email() {
        return original_factory_email;
    }

    public void setOriginal_factory_email(String original_factory_email) {
        this.original_factory_email = original_factory_email;
    }

    public String getOriginal_factory_phone() {
        return original_factory_phone;
    }

    public void setOriginal_factory_phone(String original_factory_phone) {
        this.original_factory_phone = original_factory_phone;
    }

    public String getCompany_rank() {
        return company_rank;
    }

    public void setCompany_rank(String company_rank) {
        this.company_rank = company_rank;
    }

    public String getCompany_property() {
        return company_property;
    }

    public void setCompany_property(String company_property) {
        this.company_property = company_property;
    }

    public String getQuality_standard() {
        return quality_standard;
    }

    public void setQuality_standard(String quality_standard) {
        this.quality_standard = quality_standard;
    }

    public String getSafe_quality_certificate() {
        return safe_quality_certificate;
    }

    public void setSafe_quality_certificate(String safe_quality_certificate) {
        this.safe_quality_certificate = safe_quality_certificate;
    }

    public double getBusiness_destribution_domestic() {
        return business_destribution_domestic;
    }

    public void setBusiness_destribution_domestic(double business_destribution_domestic) {
        this.business_destribution_domestic = business_destribution_domestic;
    }

    public double getBusiness_destribution_occident() {
        return business_destribution_occident;
    }

    public void setBusiness_destribution_occident(double business_destribution_occident) {
        this.business_destribution_occident = business_destribution_occident;
    }

    public double getBusiness_destribution_asian() {
        return business_destribution_asian;
    }

    public void setBusiness_destribution_asian(double business_destribution_asian) {
        this.business_destribution_asian = business_destribution_asian;
    }

    public double getBusiness_destribution_other() {
        return business_destribution_other;
    }

    public void setBusiness_destribution_other(double business_destribution_other) {
        this.business_destribution_other = business_destribution_other;
    }

    public String getBusiness_area() {
        return business_area;
    }

    public void setBusiness_area(String business_area) {
        this.business_area = business_area;
    }

    public String getYear1() {
        return year1;
    }

    public void setYear1(String year1) {
        this.year1 = year1;
    }

    public double getAnnual_turnover1() {
        return annual_turnover1;
    }

    public void setAnnual_turnover1(double annual_turnover1) {
        this.annual_turnover1 = annual_turnover1;
    }

    public String getYear2() {
        return year2;
    }

    public void setYear2(String year2) {
        this.year2 = year2;
    }

    public double getAnnual_turnover2() {
        return annual_turnover2;
    }

    public void setAnnual_turnover2(double annual_turnover2) {
        this.annual_turnover2 = annual_turnover2;
    }

    public String getYear3() {
        return year3;
    }

    public void setYear3(String year3) {
        this.year3 = year3;
    }

    public double getAnnual_turnover3() {
        return annual_turnover3;
    }

    public void setAnnual_turnover3(double annual_turnover3) {
        this.annual_turnover3 = annual_turnover3;
    }

    public String getCustomer_name1() {
        return customer_name1;
    }

    public void setCustomer_name1(String customer_name1) {
        this.customer_name1 = customer_name1;
    }

    public double getThree_year_turnover1() {
        return three_year_turnover1;
    }

    public void setThree_year_turnover1(double three_year_turnover1) {
        this.three_year_turnover1 = three_year_turnover1;
    }

    public String getBusiness_range1() {
        return business_range1;
    }

    public void setBusiness_range1(String business_range1) {
        this.business_range1 = business_range1;
    }

    public String getCustomer_name2() {
        return customer_name2;
    }

    public void setCustomer_name2(String customer_name2) {
        this.customer_name2 = customer_name2;
    }

    public double getThree_year_turnover2() {
        return three_year_turnover2;
    }

    public void setThree_year_turnover2(double three_year_turnover2) {
        this.three_year_turnover2 = three_year_turnover2;
    }

    public String getBusiness_range2() {
        return business_range2;
    }

    public void setBusiness_range2(String business_range2) {
        this.business_range2 = business_range2;
    }

    public String getCustomer_name3() {
        return customer_name3;
    }

    public void setCustomer_name3(String customer_name3) {
        this.customer_name3 = customer_name3;
    }

    public double getThree_year_turnover3() {
        return three_year_turnover3;
    }

    public void setThree_year_turnover3(double three_year_turnover3) {
        this.three_year_turnover3 = three_year_turnover3;
    }

    public String getBusiness_range3() {
        return business_range3;
    }

    public void setBusiness_range3(String business_range3) {
        this.business_range3 = business_range3;
    }

    public String getFactory_address1() {
        return factory_address1;
    }

    public void setFactory_address1(String factory_address1) {
        this.factory_address1 = factory_address1;
    }

    public String getMaterial1() {
        return material1;
    }

    public void setMaterial1(String material1) {
        this.material1 = material1;
    }

    public String getFactory_address2() {
        return factory_address2;
    }

    public void setFactory_address2(String factory_address2) {
        this.factory_address2 = factory_address2;
    }

    public String getMaterial2() {
        return material2;
    }

    public void setMaterial2(String material2) {
        this.material2 = material2;
    }

    public String getFactory_address3() {
        return factory_address3;
    }

    public void setFactory_address3(String factory_address3) {
        this.factory_address3 = factory_address3;
    }

    public String getMaterial3() {
        return material3;
    }

    public void setMaterial3(String material3) {
        this.material3 = material3;
    }

    public int getCreated_by() {
        return created_by;
    }

    public void setCreated_by(int created_by) {
        this.created_by = created_by;
    }

    public Date getCreation_date() {
        return creation_date;
    }

    public void setCreation_date(Date creation_date) {
        this.creation_date = creation_date;
    }

    public int getLast_updated_by() {
        return last_updated_by;
    }

    public void setLast_updated_by(int last_updated_by) {
        this.last_updated_by = last_updated_by;
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
