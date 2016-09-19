/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package forms.SrmHome;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletResponse;
import srm.service.CuxZbService;
import srm.service.CuxZbServiceImpl;
import xx.mvc.context.ActionContext;
import xx.mvc.extend.BaseForm;
import xx.mvc.util.FormUtil;

/**
 *附件下载
 * @author zac2078106
 */
            
public class Download extends BaseForm {
    private final CuxZbService zbService = new CuxZbServiceImpl();
    public void Download(Map mapRequest,Map mapSession)
    {
        BufferedInputStream bufIn = null;
        BufferedOutputStream bufOut = null;
        try {
                String fileId = FormUtil.getStr("fileId", mapRequest);
                String path = zbService.getSrmAttPath(fileId);
                String filename =  path.substring(path.lastIndexOf('\\')+1);
                
                mapRequest.put("fileName", filename);
                
                File file = new File(path);
                
                HttpServletResponse response = ActionContext.getResponse();
                response.reset();
                bufIn = new BufferedInputStream(new FileInputStream(file));
                bufOut = new BufferedOutputStream(response.getOutputStream());
                response.setContentType("application/x-download");
                String Agent = ActionContext.getRequest().getHeader("User-Agent");
                if (null != Agent) {  
                    Agent = Agent.toLowerCase();  
                    if (Agent.indexOf("firefox") != -1) {  
                        filename = new String(filename.getBytes(),"iso8859-1");  
                    } else if (Agent.indexOf("msie") != -1) {  
                        filename = URLEncoder.encode(filename,"UTF-8");  
                    } else {  
                        filename = URLEncoder.encode(filename,"UTF-8");  
                    }  
                }
                response.setHeader("Content-disposition", "attachment;filename=" + filename);
                response.addHeader("Content-type", "application/octet-stream");
                response.setContentLength((int) file.length());
                int len = 0;
                byte[] bs = new byte[20480];
                while ((len = bufIn.read(bs)) != -1) {
                    bufOut.write(bs, 0, len);
                }
                bufOut.flush();
        } catch (IOException ex) {
            mapRequest.put("error", "file operate error!" + ex.getMessage());
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
            mapRequest.put("error",ex.getMessage());
            this.redirect("../puglic/error/FileNotExist.jsp");
        } catch (Exception ex) {
            mapRequest.put("error", "other operate error!" + ex.getMessage());
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
           mapRequest.put("error",ex.getMessage());
        } finally {
            try {
                if (bufOut != null) {
                    bufOut.close();
                }
                if (bufIn != null) {
                    bufIn.close();
                }
            } catch (IOException ex) {
                mapRequest.put("error", "close io error!" + ex.getMessage());
                Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
                mapRequest.put("error",ex.getMessage());
            }
        }
    }
}
