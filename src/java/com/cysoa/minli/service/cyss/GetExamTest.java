/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cysoa.minli.service.cyss;

import com.cysoa.frame.exception.CustomException;
import com.cysoa.frame.service.UniversalService;
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
