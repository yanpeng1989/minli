/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cysoa.frame.util;

import com.cysoa.frame.beans.FrameServiceBean;
import com.cysoa.frame.beans.DBTableBean;
import com.cysoa.frame.service.impl.FrameService;
import java.util.HashMap;
import java.util.Map;
import org.springframework.web.context.WebApplicationContext;

/**
 *
 * @author cyss210
 */
public class GlobalUtil {
    public static final String sysConfigPath = "/WEB-INF/system.properties";
    public static final String pageServicePath = "/WEB-INF/pageService.properties";
    public static final String sysJspPath = "/WEB-INF/jsp";
    public static Map<String, String> sysConfig = new HashMap<String, String>();
    
    public static final String sqlFileDir = "/WEB-INF/sql";
    
    public static final String session_tag = "user_info";
    
    public static final String login_tag = "username";
    
    public static final String validate_code_tag = "check_num";
    
    public static Map<String, String> allSqls = new HashMap<String, String>();
    
    public static Map<String, FrameServiceBean> allServices = new HashMap<String, FrameServiceBean>();
    
    public static Map<String, String> allErrorMsg = new HashMap<String, String>();
    
    public static Map<String, Map> allJsonConfig = new HashMap<String, Map>();
    
    public static Map<String, String[]> allPageServices = new HashMap<String, String[]>();
    
    public static Map<String, DBTableBean> dbTables = new HashMap<String, DBTableBean>();
    
    public static final String AUTO_PAGE_TAG = "_auto_args";
    
    public static String DB_TYPE = "mysql";
    
    public static String DB_IFNULL = "ifnull";
    
    public static WebApplicationContext webSpringContext;
    public static FrameService frameService;
    
    public static String getSysConfig(String key) {
        if(sysConfig.containsKey(key)) {
            return sysConfig.get(key);
        }
        return null;
    }
}
