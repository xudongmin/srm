/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package srm.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import srm.entity.CUX_PON_ZB_HEADERS_ALL;
import srm.entity.CUX_SRM_ATTACHMENT;
import srm.entity.CUX_TS_HEADERS_ALL;
import srm.entity.CUX_TZ_HEADERS_ALL;
import srm.entity.CUX_ZB_HEADERS_ALL;

/**
 *
 * @author zac2078106
 */
public interface CuxZbDao {
    //从表中查询招标公告
    List<CUX_ZB_HEADERS_ALL> getZbHeadersAll()throws SQLException;
    //通过ID查询招标公告信息
    List<CUX_ZB_HEADERS_ALL> getZbHeadersAllById(Map map)throws SQLException;
    //创建招标公告并插入表中
    void insertZbHeadersAll(CUX_ZB_HEADERS_ALL headers) throws SQLException;
    //查询报名信息
    List<CUX_PON_ZB_HEADERS_ALL> getPonZbHeadersAll()throws SQLException;
    //插入招标报名信息到表中
    void insertPonZbHeadersAll(CUX_PON_ZB_HEADERS_ALL headers) throws SQLException;
    //查询附件信息
    List<CUX_SRM_ATTACHMENT> getSrmAtt(Map map) throws SQLException;
    //上传附件并插入表中
    void insertSrmAtt(CUX_SRM_ATTACHMENT att) throws SQLException;
    //投诉情况查询
    List<CUX_TS_HEADERS_ALL> getTsHeadersAll() throws SQLException;
    //插入投诉与反馈信息
    void insertTsHeadersAll(CUX_TS_HEADERS_ALL headers)throws SQLException;
    //根据条件查询投诉与反馈的信息
    List<CUX_TS_HEADERS_ALL> getTsHeaders(Map map)throws SQLException;
    //获取投诉信息表序列ID
    String getTsHeadersID()throws SQLException;
    //获取招标信息表序列ID
    String getZbHeadersID()throws SQLException;
    //获取附件表信息ID
    String getFileID()throws SQLException;
    //查询通知公告信息
    List<CUX_TZ_HEADERS_ALL> getTzHeadersAll()throws SQLException;
    //通过ID查询报名信息
    List<CUX_PON_ZB_HEADERS_ALL> getPonZbHeadersAllById(Map map)throws SQLException;
    //回复投诉信息
    void updateCuxTsHeadersAllByID(Map map)throws SQLException;
    //根据ID删除招标公告
    void deleteZbHeadersAllById(Map map)throws SQLException;
    //根据ID删除报名信息
    void deletePonZbHeadersAllById(Map map)throws SQLException;
    //通过供应商名称获取供应商编码
    String getSupCodeBySupName(String str)throws SQLException;
    //条件查询投诉信息
   List<CUX_TS_HEADERS_ALL> findTsHeadersListByItems(Map map) throws SQLException;
   //通过条件查询采购招标公告信息
    List<CUX_ZB_HEADERS_ALL> findZbHeadersListByItems(Map map) throws SQLException;
    //通过ID获取附件存储路径
    String getSrmAttPath(String str) throws SQLException;
}
