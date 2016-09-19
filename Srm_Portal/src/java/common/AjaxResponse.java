/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package common;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import net.sf.json.JSONObject;
import xx.mvc.context.ActionContext;

/**
 *
 * @author zjl2084149
 */
public class AjaxResponse {

    public static void jsonTOView(Object obj) {
        PrintWriter out = null;
        try {
            JSONObject ja = JSONObject.fromObject(obj);
            out = ActionContext.getResponse().getWriter();
            String json = ja.toString();
            out.write(json);
        } catch (Exception ex) {
            Logger.getLogger(AjaxResponse.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if (out != null) {
                out.flush();
                out.close();
            }
        }
    }

    public static void writeOutString(String strOut) throws IOException {
        PrintWriter writer = ActionContext.getResponse().getWriter();
        writer.write(strOut);
        writer.close();
    }
}