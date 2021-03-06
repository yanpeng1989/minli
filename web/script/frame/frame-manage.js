var BaseUrl = "/minli/";

var logLevel = "DEBUG";

var inputElement = "input[type='text'],input[type='password'],textarea";

var _uniqueTag = 0;

//是否限制表单提交
var isLimitForm = false;

var userAgent = navigator.userAgent.toLowerCase();
// Figure out what browser is being used 
jQuery.browser = {
    version: (userAgent.match(/.+(?:rv|it|ra|ie)[\/: ]([\d.]+)/) || [])[1],
    safari: /webkit/.test(userAgent),
    opera: /opera/.test(userAgent),
    msie: /msie/.test(userAgent) && !/opera/.test(userAgent),
    mozilla: /mozilla/.test(userAgent) && !/(compatible|webkit)/.test(userAgent)
};

var scriptUrl = (String)(window.location);
scriptUrl = scriptUrl.substr(0, scriptUrl.indexOf(".do") + 1) + "js";
scriptUrl = scriptUrl.replace(BaseUrl, BaseUrl + "script/");
//if (scriptUrl.indexOf("auto/page.do") != -1) {
//    document.write("<script src='" + scriptUrl + "'></script>");
//}
$.getScript(scriptUrl);

function getUniqueCode() {
    if (_uniqueTag == 99) {
        _uniqueTag = 0;
    } else {
        _uniqueTag++;
    }
    var code = new Date().getTime();
    code += _uniqueTag;
    return code;
}

function previewImage(id, showId, opts) {
    var options = {
        "width": "auto",
        "height": "auto",
        "scale": "image"
    };
    if (opts)
        for (var key in opts) {
            options[key] = opts[key];
        }
    var file = $(id)[0];
//    $(showId);
    if (file["files"] && file["files"][0]) {
        $(showId).empty();
        var reader = new FileReader();
        reader.onload = function(evt) {
            $("<img />").attr("src", evt.target.result).css({
                "width": options["width"],
                "height": options["height"]
            }).appendTo(showId);
        };
        reader.readAsDataURL(file.files[0]);
    } else {
        if (options["width"] === "auto") {
            options["width"] = 200;
        }
        if (options["height"] === "auto") {
            options["height"] = 200;
        }
        file.select();
        var path = document.selection.createRange().text;
        $(showId).css({
            "width": options["width"] + "px",
            "height": options["height"] + "px",
            "overflow": "hidden",
            "filter": "progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled='true',sizingMethod='image',src=\"" + path + "\")"
        }).hide();
        //" + options["scale"] + "
        var width = $(showId).width();
        var height = $(showId).height();
        var scaleWH = width / height;
        var _width = 0, _height = 0;
        if (scaleWH > options["width"] / options["height"]) {
            _width = options["width"];
            _height = _width * height / width;
        } else {
            _height = options["height"];
            _width = _height * width / height;
        }
        $(showId).css({
            "width": _width + "px",
            "height": _height + "px",
            "overflow": "hidden",
            "filter": "progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled='true',sizingMethod='" + options["scale"] + "',src=\"" + path + "\")"
        }).show();
    }
}

function uploadImage(id, opts) {
    var obj = $(id);
    var _id = obj.attr("id");
    var options = {
        "service_code": "S10004",
        "type": "ajax_",
        "channel": "P"
    };
    if (opts) {
        if (opts["uploadpath"]) {
            options["uploadpath"] = opts["uploadpath"];
        }
        if (opts["service_code"]) {
            options["custom_code"] = opts["service_code"];
        }
    } else {
        opts = {};
    }
    $.ajaxFileUpload({
        url: BaseUrl + "multipart/form.do",
        "data": options,
        fileElementId: _id,
        dataType: "json",
        success: function(data) {
            var o = eval("(" + data + ")");
            var head = o.head;
            if (head["res_code"] === "000000") {
                if (opts.sus) {
                    opts.sus(o);
                }
            } else {
                if (opts.fal) {
                    opts.fal(head["res_code"], head["res_desc"]);
                }
            }
        },
        error: function(data, status, e) {
            if (opts.fal) {
                opts.fal("-0001", e.message);
            }
        }
    });
}

function showMsg(type, opts) {
    var modal = $("#_frame_modal_");
    if (opts) {
        if (opts["title"]) {
            $(".modal-title", modal).html(opts["title"]);
        }
        if (opts["content"]) {
            $("label", modal).html(opts["content"]);
        }
//        _frame_makesure_modal_
        if (opts["okCall"]) {
            $("#_frame_makesure_modal_").unbind("click");
            $("#_frame_makesure_modal_").bind("click", function() {
                if (opts["okCall"])
                    opts["okCall"]();
                modal.modal("toggle");
            });

        }
    }
    if (type === "confirm") {
        modal.modal("toggle");
    }
}

function clearForm(id) {
    $("input,textarea", $(id)).each(function() {
        $(this).val("");
    });
}

function fillData(id, obj) {
    for (var key in obj) {
        var _key = key.toLowerCase();
        $("input[name='" + _key + "'], #" + _key + ",textarea[name='" + _key + "'],select[name='" + _key + "']", $(id)).val(obj[key]);
    }
}

/**
 * 
 * @param {type} serviceCode 服务码
 * @param {type} toPage 跳转到页面
 * @param {type} args 参数,参考AjaxOpts
 * @returns {undefined}
 */
function onlyCutPage(serviceCode, toPage, args) {
    var o = new AjaxOpts(serviceCode);
    for (var k in args) {
        if (typeof(args[k]) === "string")
            o.put(k, args[k]);
    }
    if (args["sus"])
        o.sus = args["sus"];
    if (args["fail"])
        o.fal = args["fal"];
    o.put("_to_page", toPage);
    $.ajax(o);
}

$(function() {
    //判断浏览器
    if ($.browser.msie && (Number)($.browser.version) < 10) {
        var input = $(".input-hint-text");
        input.addClass("input-hint-text-ie");
        input.each(function() {
            var hint = $(this).attr("placeholder");
            var div = $("<div/>").addClass("input-hint-text-div").css({
                height: input.height() + "px"
            });
            $(this).wrap(div);
            $(this).after($("<label/>").addClass("input-hint-text-label").html(hint));
            $(this).focus(function() {
                $(this).next().hide();
            });
            $(this).blur(function() {
                if ($(this).val() !== "") {
                    $(this).next().hide();
                } else {
                    $(this).next().show();
                }
            });
        });
    }
    //添加系统模态框，用于showMsg
    var modalDiv = $("<div/>").attr({
        "id": "_frame_modal_",
        "tabindex": "99",
        "role": "dialog"
    }).appendTo($("body")).addClass("modal fade");
    var mDiv = $("<div/>").addClass("modal-content").appendTo($("<div/>").addClass("modal-dialog modal-sm").appendTo(modalDiv));
    var mHeader = $("<div/>").addClass("modal-header").appendTo(mDiv);
    $("<button/>").addClass("close").attr("data-dismiss", "modal").append($("<span/>").html("close").addClass("sr-only")).append($("<span/>").html("x").attr("aria-hidden", "true")).appendTo(mHeader);
    $("<h4/>").addClass("modal-title").html("提示").appendTo(mHeader);
    $("<label/>").css({
        "text-align": "center",
        "margin-top": "8px",
        "width": "100%"
    }).appendTo(mDiv);
    var mFooter = $("<div/>").addClass("modal-footer").appendTo(mDiv);
    $("<button/>").attr({
        "type": "button",
        "data-dismiss": "modal",
        "id": "_frame_close_modal_"
    }).addClass("btn btn-default").html("关闭").appendTo(mFooter);
    $("<button/>").attr({
        "type": "button",
        "id": "_frame_makesure_modal_"
    }).addClass("btn btn-primary").html("确定").appendTo(mFooter);
    //验证码点击
    $("._validate_code").click(function() {
        var src = $(this).attr("src");
        $(this).attr("src", src + "?temp_id=" + getUniqueCode());
    });
    setTimeout(function() {
        $("form").submit(function() {
            return !isLimitForm;
        });
        $(inputElement).keydown(function(e) {
            if (e.keyCode === 13) {
                var parent = $(this).parent();
                var tagName = parent[0].tagName;
                while (tagName) {
                    if (tagName === "form" || tagName === "FORM") {
                        log("click" + parent.find("input[type='button']:eq(0),button:eq(0)").attr("id"));
                        parent.find("input[type='button']:eq(0),button:eq(0)").click();
                        break;
                    }
                    parent = parent.parent();
                    tagName = parent[0].tagName;
                }
            }
        });
        $("input[data-role='date']").datetimepicker({
            format: "yyyy-mm-dd",
            autoclose: true,
            minView: 2,
            todayHighLight: true,
            language: "zh-CN"
        }, 300);
    });

    $("._cut_page_index").click(function() {
        var toPage = $(this).attr("topage");
        var form = $(this).parents("form");
        form.attr("method", "post");
        $("<input/>").attr({
            "type": "hidden",
            "value": toPage,
            "name": "_to_page"
        }).appendTo(form);
        form.submit();
    });
});

var CyTable = function() {
    this.result;
    this.table;
    this.options;
    this.relKeys;
    this.rowKey;
    this.serviceCode;
    this.hasInit = false;
    this.nowPage = 1;
    this.selectedData;
    this.maxPage;
    var that = this;

    this.getSelectedData = function() {
        return this.selectedData;
    };
    this.init = function(table, options) {
        this.table = table;
        this.serviceCode = options["service_code"];
        this.options = options;
        var o;
        if (options["_form"]) {
            o = new AjaxOpts(options["_form"]);
        } else {
            o = new AjaxOpts(this.serviceCode);
        }
        for (var key in this.options) {
            if (key === "_form") {
                continue;
            }
            o.put(key, options[key]);
        }
        o.sus = function(data) {
            $("tbody", table).empty();
            result = data.result;
            relKeys = [];
            rowKey = $("thead tr", table).attr("row-key");
            $("thead tr th", table).each(function() {
                var relKey = $(this).attr("rel-key");
                relKeys.push(relKey);
            });
            var body = $("tbody", table);
            for (var i in data.result) {
                var tr = $("<tr/>").attr({"_id": data.result[i][rowKey]}).css({"cursor": "pointer"}).appendTo(body);
                for (var j in relKeys) {
                    $("<td/>").appendTo(tr).html(data.result[i][relKeys[j]]);
                }
            }

            $("tbody tr", table).click(function() {
                var key = $(this).attr("_id");
                $("tbody tr", table).removeClass("active");
                $(this).addClass("active");
                for (var i in result) {
                    if (key === result[i][rowKey]) {
                        that.selectedData = result[i];
                        table.trigger("rowSelected", [result[i], key]);
                    }
                }
            });

            var pagePara = data["_page_para"];
            var toPage = pagePara["to_page"];
            var totalNum = pagePara["total_num"];
            that.maxPage = pagePara["max_page"];
            var pageDiv, divCol1, divCol2, divGoPage;
            var pageUL;
            var pageTipLabel, inputPage, goPageBtn;
            if (that.hasInit) {
                pageDiv = that.table.next();
                pageTipLabel = pageDiv.find("label");
                inputPage = pageDiv.find("input");
                goPageBtn = pageDiv.find("button");
                divGoPage = pageDiv.find("div:last-child").find("div:last-child");
                pageDiv.find("ul").remove();
            } else {
                pageDiv = $("<div/>").addClass("container col-sm-12 well well-sm");
                divCol1 = $("<div/>").addClass("row col-sm-4").appendTo(pageDiv);
                divCol2 = $("<div/>").addClass("row col-sm-8").appendTo(pageDiv);
                divGoPage = $("<div/>").addClass("row col-sm-4 input-group input-group-sm");
                inputPage = $("<input/>").addClass("form-control").attr("type", "text").appendTo(divGoPage);
                var span = $("<span/>").addClass("input-group-btn").appendTo(divGoPage);
                goPageBtn = $("<button/>").addClass("btn btn-default").html("Go").appendTo(span);
                pageTipLabel = $("<label/>").appendTo(divCol1).css({"margin-top": "6px"});
                $(table).after(pageDiv);
                divCol2.append(divGoPage);
                inputPage.keydown(function(e) {
                    if (e.keyCode === 13) {
                        goPageBtn.click();
                    }
                });
                goPageBtn.click(function() {
                    var toPage = inputPage.val();
                    if (S(toPage).isNumeric() && (Number)(toPage) <= that.maxPage) {
                        that.showPage(toPage);
                    } else {
                        showAlertMsg("输入页码应是数字并小于" + that.maxPage, "error");
                    }
                });
            }
            pageUL = $("<ul/>").addClass("pagination-sm pagination row col-sm-8").css({"margin": "0px"});
            divGoPage.before(pageUL);
            pageTipLabel.html("本页" + result.length + "条，共" + that.maxPage + "页，" + totalNum + "条");
            var beginPage = toPage - 5;
            if (beginPage < 1) {
                beginPage = 1;
            }
            var endPage = beginPage + 9;
            var index = 0;
            for (var i = beginPage; i <= endPage; i++) {
                if (i > that.maxPage) {
                    break;
                }
                var li;

                li = $("<li/>").append($("<a/>").attr({
                    "href": "#this",
                    "to_page": i
                }).html(i).click(function() {
                    var toPageVal = $(this).attr("to_page");
                    that.showPage(toPageVal);
                })).appendTo(pageUL);

                if (toPage === i) {
                    li.addClass("active");
                } else {
                    li.removeClass("active");
                }
                index++;
            }
            if (!that.hasInit) {
                that.hasInit = true;
            }
        };
        $.ajax(o);
    };
    this.getTableData = function() {
        return this.data;
    };
    this.showPage = function(toPage) {
        this.nowPage = toPage;
        this.options["_to_page"] = toPage;
        this.init(this.table, this.options);
    };
    return this;
};

$.fn.extend({
    cytable: function(method, args) {
        this.each(function() {
            var table = $(this);
            var cytable = table.data("cytable");
            if (!cytable) {
                cytable = new CyTable();
                table.data("cytable", cytable);
            }
            if (typeof(method) === "string") {
                cytable[method](args);
            } else if (typeof(method) === "object") {
                cytable.init(table, method);
            }
        });
        return this;
    }
});
function log(msg) {
    if (window.console && logLevel && logLevel === "DEBUG") {
        console.log(msg);
    }
}

function showLoading() {
    $("input[type='button'],button").button("loading");
}

function hideLoading() {
    $("input[type='button'],button").button("reset");
}

function showAlertMsg(msg, type) {
    if (type === "error") {
        type = "danger";
    }
    var count = $(".cy_alert").length;
    var css = {
        "width": "90%",
        "top": "6%",
        "left": "5%",
        "position": "fixed",
        "z-index": "999999"
    };
    if (count !== 0) {
        var child = $(".cy_alert:last-child");
        css.top = child.scrollTop() + 115;
    }
    var div = $("<div/>").addClass("alert")
            .addClass("alert-" + type)
            .addClass("cy_alert").css(css);
    $("<button/>").appendTo(div).attr({
        "type": "button",
        "class": "close",
        "data-dismiss": "alert"
    }).append($("<span/>").attr("aria-hidden", "true").html("&times;"))
            .append($("<span/>").addClass("sr-only").html("Close"));
    div.append(msg);
    div.appendTo("body");
    if (type === "danger" || type === "warning" || type === "success") {
        setTimeout(function() {
            div.fadeOut(2000, function() {
                div.remove();
            });
        }, 1200);
    }
}

var AjaxOpts = function(obj) {
    this.data = {};
    this.url = BaseUrl + "ajax.do";
    this.isLoading = true;
    this.isAlert = true;
    this.type = "post";
    this.dataType = "json";
    this.contentType = "application/x-www-form-urlencoded; charset=utf-8";
    this.timeout = 10000;
    this.reqType = "ajax_";
    this.channel = "P";
    this.dataTemp;

    if (obj) {
        if (typeof(obj) === "object") {
            for (var key in obj) {
                this.data[key] = obj[key];
            }
        } else if (typeof(obj) === "string") {
            var firstCode = obj.substr(0, 1);
            if (firstCode === "#" || obj === "form") {
                this.dataTemp = $(obj).serialize();
            } else if (firstCode === "P" || firstCode === "S") {
                this.data["service_code"] = obj;
            }
        }
    }

    this.beforeSend = function(xhr) {
        this.data += "&_url=" + window.location + "&type=" + this.reqType + "&channel=" + this.channel;
        if (this.dataTemp) {
            this.data += "&" + this.dataTemp;
        }
        log(this.data);
        $(inputElement).attr("disabled", "disabled");

        if (this.isLoading) {
            showLoading();
        }
        return true;
    };

    this.success = function(json) {
        log(JSON.stringify(json));
        var head = json.head;
        if ("000000" === head["res_code"]) {
            this.sus(json);
        } else {
            if (this.isAlert)
                showAlertMsg(head["res_desc"], "error");
            this.fal(head["res_code"], head["res_desc"]);
        }
    };

    this.error = function(xhr, errMsg, e) {
        var code = "error", msg;
        if (errMsg) {
            msg = errMsg;
        } else {
            msg = e.message;
        }
        log(msg);
        if (this.isAlert)
            showAlertMsg(head["res_desc"], "error");
        this.fal(code, msg);
    };

    this.complete = function(xhr, ts) {
        $(inputElement).removeAttr("disabled");

        if (this.isLoading) {
            hideLoading();
        }
    };

    this.put = function(key, val) {
        if (val && val !== "") {
            this.data[key] = val;
        }
    };

    this.sus = function(data) {
    };

    this.fal = function(code, msg) {

    };

    return this;
};
