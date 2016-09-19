/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package common;

import java.util.Locale;
import java.util.ResourceBundle;
import xx.mvc.context.ActionContext;

/**
 *
 * @author zjl2084149
 */
public class LanguageNational {
    private static String language;         // Is this right? --ty

    public LanguageNational(String lan) {
        language = lan;
    }

    /**
     * @param language the language to set
     */
    public void setLanguage(String language2) {
        language = language2;
    }

    /**
     * 获取当前用户选择的语言。
     * @return
     */
    private static String getLanguage() {
        return language;
    }

    /**
     * 获取通用资源包
     * @param key
     * @param lang
     * @return
     */
//    public static String getValue(String key) {
//        Locale locale = null;
//        String language2 = getLanguage();
//        if (language2 == null) {
//            locale = Locale.getDefault();
//        } else {
//            String[] strs = language2.split("_");
//            if (strs.length > 1) {
//                locale = new Locale(strs[0], strs[1]);
//            } else {
//                locale = new Locale(strs[0]);
//            }
//        }
//        ResourceBundle bundle = ResourceBundle.getBundle("xiaoxi", locale);
//        if (bundle.containsKey(key)) {
//            return bundle.getString(key);
//        } else {
//            return null;
//        }
//    }

    
    /**
     * 获取通用资源包  2011-08-18 --ty modified
     * @param key
     * @param lang
     * @return
     */
    public static String getValue(String key) {
        Locale locale = null;
        String language2 = null;
        if (ActionContext.getRequest() != null) {
            language2 = (ActionContext.getRequest().getSession(false) != null
                    && ActionContext.getRequest().getSession(false).getAttribute("language") != null)
                    ? ActionContext.getRequest().getSession(false).getAttribute("language").toString()
                    : null;
        }
        if (language2 == null) {
            locale = Locale.getDefault();
        } else {
            String[] strs = language2.split("_");
            if (strs.length > 1) {
                locale = new Locale(strs[0], strs[1]);
            } else {
                locale = new Locale(strs[0]);
            }
        }
        ResourceBundle bundle = ResourceBundle.getBundle("xiaoxi", locale);
        if (bundle.containsKey(key)) {
            return bundle.getString(key);
        } else {
            return null;
        }
    }

    /**    
     * 获取通用资源包
     * @param key
     * @param lang
     * @return
     */
    public static String getValue(String key,Object... params) {
        String value = LanguageNational.getValue(key);
        return LanguageNational.parsePropertyTokens(value, params);
    }

    public static String parsePropertyTokens(String string, Object... params) {
        final String OPEN = "${";
        final String CLOSE = "}";
        String newString = string;

        if (newString != null && !newString.isEmpty() && params != null && params.length > 0) {
            int start = newString.indexOf(OPEN);
            int end = newString.indexOf(CLOSE);
            int num = params.length;
            int i = 0;

            while (start > -1 && end > start && i < num) {

                String prepend = newString.substring(0, start);
                String append = newString.substring(end + CLOSE.length());
                Object propValue =  params[i++];
                if (propValue == null) {
                    newString = prepend + append;
                } else {
                    newString = prepend + String.valueOf(propValue) + append;
                }
                start = newString.indexOf(OPEN);
                end = newString.indexOf(CLOSE);
            }
        }
        return newString;
    }
}
