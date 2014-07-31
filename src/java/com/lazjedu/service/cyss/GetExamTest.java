/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lazjedu.service.cyss;

import com.lazjedu.frame.exception.CustomException;
import com.lazjedu.frame.service.UniversalService;
import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Service;

/**
 * S24004
 *
 * @author cyss210
 */
@Service
public class GetExamTest extends UniversalService {

    @Override
    public void execute(Map<String, Object> in, Map<String, Object> inHead, Map<String, Object> out, Map<String, Object> outHead) throws CustomException {
        List menus = queryList("get_pl_menu");
        out.put("menus", menus);
    }
}
