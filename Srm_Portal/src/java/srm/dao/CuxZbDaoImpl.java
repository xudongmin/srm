/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package srm.dao;

import com.ibatis.sqlmap.client.SqlMapClient;
import db.Ibatis_nofilter;
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
public class CuxZbDaoImpl implements CuxZbDao{
    //    private SqlExecutor sqlMapClient=Ibatis.getClient();
    private SqlMapClient sqlMapClient = Ibatis_nofilter.getSQLMap();//本地测试
    /**
     * 从表中查询招标公告
     * @return
     * @throws SQLException 
     */
    public List<CUX_ZB_HEADERS_ALL> getZbHeadersAll() throws SQLException {
        return sqlMapClient.queryForList("CUX_ZB_HEADERS_ALL.getZbHeadersAll");
    }
    /**
     * //通过ID查询招标公告信息
     * @return
     * @throws SQLException 
     */
    public List<CUX_ZB_HEADERS_ALL> getZbHeadersAllById(Map map) throws SQLException {
        return sqlMapClient.queryForList("CUX_ZB_HEADERS_ALL.getZbHeadersAllById",map);
    }
    /**
     * 创建招标公告并插入表中
     * @param map
     * @throws SQLException 
     */
    public void insertZbHeadersAll(CUX_ZB_HEADERS_ALL map) throws SQLException {
        sqlMapClient.insert("CUX_ZB_HEADERS_ALL.insertZbHeadersAll", map);
    }
    /**
     * 
     * @return
     * @throws SQLException 
     */
    public List<CUX_PON_ZB_HEADERS_ALL> getPonZbHeadersAll() throws SQLException {
        return sqlMapClient.queryForList("CUX_PON_ZB_HEADERS_ALL.getPonZbHeadersAll");
    }
    /**
     * 插入招标报名信息到表中
     * @param map
     * @throws SQLException 
     */
    public void insertPonZbHeadersAll(CUX_PON_ZB_HEADERS_ALL map) throws SQLException {
        sqlMapClient.insert("CUX_PON_ZB_HEADERS_ALL.insertPonZbHeadersAll", map);
    }
    /**
     * 查询投诉与反馈的信息
     * @return
     * @throws SQLException 
     */
    public List<CUX_TS_HEADERS_ALL> getTsHeadersAll() throws SQLException {
        return sqlMapClient.queryForList("CUX_TS_HEADERS_ALL.getCuxTsHeadersAll");
    }
    /**
     * 插入投诉信息
     * @param headers
     * @throws SQLException 
     */
    public void insertTsHeadersAll(CUX_TS_HEADERS_ALL headers) throws SQLException {
        sqlMapClient.insert("CUX_TS_HEADERS_ALL.insertCuxTsHeadersAllL", headers);
    }
    /**
     * 根据条件查询投诉与反馈的信息
     * @param map
     * @return
     * @throws SQLException 
     */
    public List<CUX_TS_HEADERS_ALL> getTsHeaders(Map map) throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    /**
     * 查询通知公告信息
     * @return
     * @throws SQLException 
     */
    public List<CUX_TZ_HEADERS_ALL> getTzHeadersAll() throws SQLException {
        return sqlMapClient.queryForList("CUX_TZ_HEADERS_ALL.getTzHeadersAll");
    }
    /**
     * 获取投诉信息表序列ID
     * @return
     * @throws SQLException 
     */
    public String getTsHeadersID() throws SQLException {
        return (String)sqlMapClient.queryForObject("CUX_TS_HEADERS_ALL.getTsHeadersID");
    }
    /**
     * 通过ID查询报名信息
     * @param map
     * @return
     * @throws SQLException 
     */
    public List<CUX_PON_ZB_HEADERS_ALL> getPonZbHeadersAllById(Map map) throws SQLException {
        return sqlMapClient.queryForList("CUX_PON_ZB_HEADERS_ALL.getPonZbHeadersAllById", map);
    }
    /**
     * 回复投诉内容
     * @param map
     * @throws SQLException 
     */
    public void updateCuxTsHeadersAllByID(Map map) throws SQLException {
        sqlMapClient.update("CUX_TS_HEADERS_ALL.updateCuxTsHeadersAllByID", map);
    }
    /**
     * 根据ID删除招标公告
     * @param map
     * @throws SQLException 
     */
    public void deleteZbHeadersAllById(Map map) throws SQLException {
        sqlMapClient.delete("CUX_ZB_HEADERS_ALL.deleteZbHeadersAllById", map);
    }
    /**
     * 根据ID删除招标报名信息
     * @param map
     * @throws SQLException 
     */
    public void deletePonZbHeadersAllById(Map map) throws SQLException {
        sqlMapClient.delete("CUX_PON_ZB_HEADERS_ALL.deletePonZbHeadersAllById", map);
    }
    /**
     * 通过供应商名称查找供应商编码
     * @param str
     * @return
     * @throws SQLException 
     */
    public String getSupCodeBySupName(String str) throws SQLException {
        return (String)sqlMapClient.queryForObject("CUX_PON_ZB_HEADERS_ALL.getSupCodeBySupName", str);
    }
	
	/**
     * 条件查询投诉信息
     * @param map
     * @return
     * @throws SQLException 
     */
	 public List<CUX_TS_HEADERS_ALL> findTsHeadersListByItems(Map map) throws SQLException {
        return sqlMapClient.queryForList("CUX_TS_HEADERS_ALL.findTsHeadersListByItems",map);
    }
    
    /**
     * //通过条件查询采购招标公告信息
     * @param map
     * @return
     * @throws SQLException 
     */
    public List<CUX_ZB_HEADERS_ALL> findZbHeadersListByItems(Map map) throws SQLException {
        return sqlMapClient.queryForList("CUX_ZB_HEADERS_ALL.findZbHeadersListByItems",map);
    }
    /**
     * 获取招标信息表序列ID
     * @return
     * @throws SQLException 
     */
    public String getZbHeadersID() throws SQLException {
        return (String)sqlMapClient.queryForObject("CUX_ZB_HEADERS_ALL.getZbHeadersID");
    }
    /**
     * 获取附件表信息ID
     * @return
     * @throws SQLException 
     */
    public String getFileID() throws SQLException {
        return (String)sqlMapClient.queryForObject("CUX_SRM_ATTACHMENT.getFileID");
    }

    public List<CUX_SRM_ATTACHMENT> getSrmAtt(Map map) throws SQLException {
        return sqlMapClient.queryForList("CUX_SRM_ATTACHMENT.getSrmAtt",map);
    }

    public void insertSrmAtt(CUX_SRM_ATTACHMENT att) throws SQLException {
        sqlMapClient.insert("CUX_SRM_ATTACHMENT.insertSrmAtt", att);
    }
    /**
     * 通过ID获取附件存储路径
     * @param str
     * @return
     * @throws SQLException 
     */
    @Override
    public String getSrmAttPath(String str) throws SQLException {
        return (String)sqlMapClient.queryForObject("CUX_SRM_ATTACHMENT.getSrmAttPath",str);
    }
    
}
