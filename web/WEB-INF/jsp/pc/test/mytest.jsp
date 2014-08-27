<%-- 
    Document   : mytest
    Created on : 2014-7-31, 14:43:32
    Author     : cyss210
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <jsp:include page="../head.jsp" />
    <body>
        <jsp:include page="../top.jsp" />
        <div>
            <form method="post" action="<c:url value='/multipart/form.do' />" enctype="multipart/form-data">
                <input id="file" name="image" type="file" />
                <br />
                <input name="service_code" value="S10004" type="hidden" />
                <input name="type" value="oo" type="hidden" />
                <input name="uploadpath" value="/oo/e" type="hidden" />
                <input name="channel" value="P" type="hidden" />
                <input id="d" type="submit" value="上传" />
            </form>
        </div>
                <hr/>
        <div class="container">
            <input id="image" name="my_img" type="file" />
            <br />
            <input id="u" type="button" value="上传11" />
            <label id="loading" style="display: none">loading</label>
        </div>
        <div id="log">

        </div>
        <jsp:include page="../foot.jsp" />
    </body>
</html>
<script type="text/javascript">
    $(function() {
//        $("#pick_file").change(function() {
//            previewImage("#pick_file", "#thumb", {
//                "width": 600,
//                "height": "auto",
//                "scale": "scale"
//            });
//        });
        $("#u").click(function() {
            uploadImage("#image", {
                "uploadpath": "rii/gfd/sdf",
                "sus": function(data) {
                    $("#log").html(data.img_url);
                },
                "service_code": "S24004"
            });
        });
    });
</script>
