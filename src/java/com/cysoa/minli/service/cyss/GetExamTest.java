/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cysoa.minli.service.cyss;

import com.cysoa.frame.exception.CustomException;
import com.cysoa.frame.service.UniversalService;
import com.cysoa.frame.util.GlobalUtil;
import java.util.Map;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

/**
 * S24004
 *
 * @author cyss210
 */
@Service
public class GetExamTest extends UniversalService {

    private static Logger log = Logger.getLogger(GetExamTest.class);

    @Override
    public void execute(Map<String, Object> in, Map<String, Object> inHead, Map<String, Object> out, Map<String, Object> outHead) throws CustomException {
        MultipartFile file = (MultipartFile) in.get("my_img");
        log.info(file.getContentType());
        String imgName = GlobalUtil.getUniqueNumber() + ".jpg";
        try {
            GlobalUtil.saveFile(imgName, file.getInputStream());
        } catch (Exception ex) {
            log.error(ex);
        }
        out.put("img_url", GlobalUtil.getSysConfig("root_name") + GlobalUtil.getSysConfig("fileupload_path") + "/" + imgName);
    }
}
