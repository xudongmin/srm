/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package util;

import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author zjl2084149
 */
public class FileUtil {
    public static String parsePropertiesValue(String fileName,String paramString) throws Exception {
        Map<String, String> propertyMap = new HashMap<String, String>();
        Properties props = new Properties();
        InputStream in = null;
        try {
            in = FileUtil.class.getClassLoader().getResourceAsStream(fileName+".properties");
            props.load(in);
            Enumeration en = props.propertyNames();
            while (en.hasMoreElements()) {
                String key = (String) en.nextElement();
                String property = props.getProperty(key);
                propertyMap.put(key, property);
            }
            return propertyMap.get(paramString);
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        } finally{
            try {
                in.close();
            } catch (IOException ex) {
                Logger.getLogger(FileUtil.class.getName()).log(Level.SEVERE, null, ex);
                throw new Exception(ex);
            }
        }
    }

    public static Map getProperty(String fileName) throws Exception{
        Map propertyMap = new HashMap();
        Properties props = new Properties();
        InputStream in = null;
        try {
            in = FileUtil.class.getClassLoader().getResourceAsStream(fileName+".properties");
            props.load(in);
            Enumeration en = props.propertyNames();
            while (en.hasMoreElements()) {
                String key = (String) en.nextElement();
                String property = props.getProperty(key);
                propertyMap.put(key, property);
            }
            return propertyMap;
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        } finally{
            try {
                in.close();
            } catch (IOException ex) {
                Logger.getLogger(FileUtil.class.getName()).log(Level.SEVERE, null, ex);
                throw new Exception(ex);
            }
        }
        
    }
}
