<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <%@ include file="../../static/head.jsp" %>
    <link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-select.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" charset="utf-8">
        window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
    </script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<style>
    .error {
        color: red;
    }
</style>
<body>
<!-- Pre Loader -->
<div class="loading">
    <div class="spinner">
        <div class="double-bounce1"></div>
        <div class="double-bounce2"></div>
    </div>
</div>
<!--/Pre Loader -->
<div class="wrapper">
    <!-- Page Content -->
    <div id="content">
        <!-- Top Navigation -->
        <%@ include file="../../static/topNav.jsp" %>
        <!-- Menu -->
        <div class="container menu-nav">
            <nav class="navbar navbar-expand-lg lochana-bg text-white">
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="ti-menu text-white"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul id="navUl" class="navbar-nav mr-auto">

                    </ul>
                </div>
            </nav>
        </div>
        <!-- /Menu -->
        <!-- Breadcrumb -->
        <!-- Page Title -->
        <div class="container mt-0">
            <div class="row breadcrumb-bar">
                <div class="col-md-6">
                    <h3 class="block-title">编辑关怀服务</h3>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="${pageContext.request.contextPath}/index.jsp">
                                <span class="ti-home"></span>
                            </a>
                        </li>
                        <li class="breadcrumb-item">关怀服务管理</li>
                        <li class="breadcrumb-item active">编辑关怀服务</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- /Page Title -->

        <!-- /Breadcrumb -->
        <!-- Main Content -->
        <div class="container">

            <div class="row">
                <!-- Widget Item -->
                <div class="col-md-12">
                    <div class="widget-area-2 lochana-box-shadow">
                        <h3 class="widget-title">关怀服务信息</h3>
                        <form id="addOrUpdateForm">
                            <div class="form-row">
                            <!-- 级联表的字段 -->
                                    <div class="form-group col-md-6 aaaaaa fuwurenyuan">
                                        <label>服务人员</label>
                                        <div>
                                            <select style="width: 450px" id="fuwurenyuanSelect" name="fuwurenyuanSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 fuwurenyuan">
                                        <label>服务人员编号</label>
                                        <input style="width: 450px" id="fuwurenyuanUuidNumber" name="fuwurenyuanUuidNumber" class="form-control"
                                               placeholder="服务人员编号" readonly>
                                    </div>
                                    <div class="form-group col-md-6 fuwurenyuan">
                                        <label>服务人员姓名</label>
                                        <input style="width: 450px" id="fuwurenyuanName" name="fuwurenyuanName" class="form-control"
                                               placeholder="服务人员姓名" readonly>
                                    </div>
                                    <div class="form-group col-md-6 fuwurenyuan">
                                        <label>服务人员手机号</label>
                                        <input style="width: 450px" id="fuwurenyuanPhone" name="fuwurenyuanPhone" class="form-control"
                                               placeholder="服务人员手机号" readonly>
                                    </div>
                                    <div class="form-group col-md-6 fuwurenyuan">
                                        <label>服务人员头像</label>
                                        <img id="fuwurenyuanPhotoImg" src="" width="100" height="100">
                                    </div>
                                    <div class="form-group col-md-6 fuwurenyuan">
                                        <label>服务人员电子邮箱</label>
                                        <input style="width: 450px" id="fuwurenyuanEmail" name="fuwurenyuanEmail" class="form-control"
                                               placeholder="服务人员电子邮箱" readonly>
                                    </div>
                                    <div class="form-group col-md-6 aaaaaa laoren">
                                        <label>老人</label>
                                        <div>
                                            <select style="width: 450px" id="laorenSelect" name="laorenSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 laoren">
                                        <label>老人编号</label>
                                        <input style="width: 450px" id="laorenUuidNumber" name="laorenUuidNumber" class="form-control"
                                               placeholder="老人编号" readonly>
                                    </div>
                                    <div class="form-group col-md-6 laoren">
                                        <label>老人姓名</label>
                                        <input style="width: 450px" id="laorenName" name="laorenName" class="form-control"
                                               placeholder="老人姓名" readonly>
                                    </div>
                                    <div class="form-group col-md-6 laoren">
                                        <label>老人手机号</label>
                                        <input style="width: 450px" id="laorenPhone" name="laorenPhone" class="form-control"
                                               placeholder="老人手机号" readonly>
                                    </div>
                                    <div class="form-group col-md-6 laoren">
                                        <label>老人照片</label>
                                        <img id="laorenPhotoImg" src="" width="100" height="100">
                                    </div>
                                    <div class="form-group col-md-6 laoren">
                                        <label>年龄</label>
                                        <input style="width: 450px" id="nianling" name="nianling" class="form-control"
                                               placeholder="年龄" readonly>
                                    </div>
                                    <div class="form-group col-md-6 laoren">
                                        <label>老人住址</label>
                                        <input style="width: 450px" id="laorenAddress" name="laorenAddress" class="form-control"
                                               placeholder="老人住址" readonly>
                                    </div>
                                    <div class="form-group col-md-6 laoren">
                                        <label>身份证号</label>
                                        <input style="width: 450px" id="laorenIdNumber" name="laorenIdNumber" class="form-control"
                                               placeholder="身份证号" readonly>
                                    </div>
                                    <div class="form-group col-md-6 laoren">
                                        <label>亲属姓名</label>
                                        <input style="width: 450px" id="qinshuxingming" name="qinshuxingming" class="form-control"
                                               placeholder="亲属姓名" readonly>
                                    </div>
                                    <div class="form-group col-md-6 laoren">
                                        <label>亲属联系方式</label>
                                        <input style="width: 450px" id="qinshuxingmingPhone" name="qinshuxingmingPhone" class="form-control"
                                               placeholder="亲属联系方式" readonly>
                                    </div>
                                    <div class="form-group col-md-6 laoren">
                                        <label>医疗卡号</label>
                                        <input style="width: 450px" id="yiliaokahao" name="yiliaokahao" class="form-control"
                                               placeholder="医疗卡号" readonly>
                                    </div>
                            <!-- 当前表的字段 -->
                                    <input id="updateId" name="id" type="hidden">
                                <input id="fuwurenyuanId" name="fuwurenyuanId" type="hidden">
                                <input id="laorenId" name="laorenId" type="hidden">
                                    <div class="form-group col-md-6 guanhuaifuwuUuidNumberDiv">
                                        <label>服务编号</label>
                                        <input style="width: 450px" id="guanhuaifuwuUuidNumber" name="guanhuaifuwuUuidNumber" class="form-control"
                                               placeholder="服务编号">
                                    </div>
                                    <div class="form-group col-md-6 guanhuaifuwuNameDiv">
                                        <label>服务名称</label>
                                        <input style="width: 450px" id="guanhuaifuwuName" name="guanhuaifuwuName" class="form-control"
                                               placeholder="服务名称">
                                    </div>
                                    <div class="form-group col-md-6 guanhuaifuwuTypesDiv">
                                        <label>服务类型</label>
                                        <select style="width: 450px" id="guanhuaifuwuTypesSelect" name="guanhuaifuwuTypes" class="form-control">
                                        </select>
                                    </div>
                                    <div class="form-group col-md-6 yujikaishiTimeDiv">
                                        <label>预计开始时间</label>
                                        <input style="width: 450px" id="yujikaishiTime-input" name="yujikaishiTime" type="text" class="form-control layui-input">
                                    </div>
                                    <div class="form-group col-md-6 yujijieshuTimeDiv">
                                        <label>预计结束时间</label>
                                        <input style="width: 450px" id="yujijieshuTime-input" name="yujijieshuTime" type="text" class="form-control layui-input">
                                    </div>
                                    <div class="form-group col-md-6 fuwuTimeDiv">
                                        <label>服务日期</label>
                                        <input style="width: 450px" id="fuwuTime-input" name="fuwuTime" type="text" class="form-control layui-input">
                                    </div>
                                    <div class="form-group  col-md-6 guanhuaifuwuContentDiv">
                                        <label>服务详情</label>
                                        <input id="guanhuaifuwuContentupload" name="file" type="file">
                                        <script id="guanhuaifuwuContentEditor" type="text/plain"
                                                style="width:100%;height:230px;"></script>
                                        <script type = "text/javascript" >
                                        //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
                                        //相见文档配置属于你自己的编译器
                                        var guanhuaifuwuContentUe = UE.getEditor('guanhuaifuwuContentEditor', {
                                            toolbars: [
                                                [
                                                    'undo', //撤销
                                                    'bold', //加粗
                                                    'redo', //重做
                                                    'underline', //下划线
                                                    'horizontal', //分隔线
                                                    'inserttitle', //插入标题
                                                    'cleardoc', //清空文档
                                                    'fontfamily', //字体
                                                    'fontsize', //字号
                                                    'paragraph', //段落格式
                                                    'inserttable', //插入表格
                                                    'justifyleft', //居左对齐
                                                    'justifyright', //居右对齐
                                                    'justifycenter', //居中对
                                                    'justifyjustify', //两端对齐
                                                    'forecolor', //字体颜色
                                                    'fullscreen', //全屏
                                                    'edittip ', //编辑提示
                                                    'customstyle', //自定义标题
                                                ]
                                            ]
                                        });
                                        </script>
                                        <input type="hidden" name="guanhuaifuwuContent" id="guanhuaifuwuContent-input">
                                    </div>
                                    <div class="form-group col-md-6 wanchengTypesDiv">
                                        <label>状态</label>
                                        <select style="width: 450px" id="wanchengTypesSelect" name="wanchengTypes" class="form-control">
                                        </select>
                                    </div>
                                    <div class="form-group col-md-6 pingjiaTypesDiv">
                                        <label>评价等级</label>
                                        <select style="width: 450px" id="pingjiaTypesSelect" name="pingjiaTypes" class="form-control">
                                        </select>
                                    </div>
                                    <div class="form-group col-md-6 pingjiaTextDiv">
                                        <label>评价结果</label>
                                        <textarea style="width: 450px"  id="pingjiaText" name="pingjiaText" class="form-control"placeholder="评价结果"></textarea>
                                    </div>
                                    <div class="form-group col-md-12 mb-3">
                                        <button id="submitBtn" type="button" class="btn btn-primary btn-lg">提交</button>
                                        <button id="exitBtn" type="button" class="btn btn-primary btn-lg">返回</button>
                                    </div>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- /Widget Item -->
            </div>
        </div>
        <!-- /Main Content -->
    </div>
    <!-- /Page Content -->
</div>
<!-- Back to Top -->
<a id="back-to-top" href="#" class="back-to-top">
    <span class="ti-angle-up"></span>
</a>
<!-- /Back to Top -->
<%@ include file="../../static/foot.jsp" %>
<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" charset="utf-8"
                 src="${pageContext.request.contextPath}/resources/js/bootstrap-select.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/laydate.js"></script>
<script>
    <%@ include file="../../utils/menu.jsp"%>
    <%@ include file="../../static/setMenu.js"%>
    <%@ include file="../../utils/baseUrl.jsp"%>

    var tableName = "guanhuaifuwu";
    var pageType = "add-or-update";
    var updateId = "";
    var crossTableId = -1;
    var crossTableName = '';
    var ruleForm = {};
    var crossRuleForm = {};


    // 下拉框数组
        <!-- 当前表的下拉框数组 -->
    var guanhuaifuwuTypesOptions = [];
    var wanchengTypesOptions = [];
    var pingjiaTypesOptions = [];
        <!-- 级联表的下拉框数组 -->
    var fuwurenyuanOptions = [];
    var laorenOptions = [];

    var ruleForm = {};


    // 文件上传
    function upload() {

        <!-- 当前表的文件上传 -->

        $('#guanhuaifuwuContentupload').fileupload({
            url: baseUrl + 'file/upload',
            headers: {token: window.sessionStorage.getItem("token")},
            dataType: 'json',
            done: function (e, data) {
                UE.getEditor('guanhuaifuwuContentEditor').execCommand('insertHtml', '<img src=\"' + baseUrl + 'upload/' + data.result.file + '\" width=900 height=560>');
            }
        });


    }

    // 表单提交
    function submit() {
        if (validform() == true && compare() == true) {
            let data = {};
            getContent();
            if(window.sessionStorage.getItem('role') != '服务人员'){//当前登录用户不为这个
                if($("#fuwurenyuanId") !=null){
                    var fuwurenyuanId = $("#fuwurenyuanId").val();
                    if(fuwurenyuanId == null || fuwurenyuanId =='' || fuwurenyuanId == 'null'){
                        alert("服务人员不能为空");
                        return;
                    }
                }
            }
            if(window.sessionStorage.getItem('role') != '老人'){//当前登录用户不为这个
                if($("#laorenId") !=null){
                    var laorenId = $("#laorenId").val();
                    if(laorenId == null || laorenId =='' || laorenId == 'null'){
                        alert("老人不能为空");
                        return;
                    }
                }
            }
            let value = $('#addOrUpdateForm').serializeArray();
            $.each(value, function (index, item) {
                data[item.name] = item.value;
            });
            let json = JSON.stringify(data);
            var urlParam;
            var successMes = '';
            if (updateId != null && updateId != "null" && updateId != '') {
                urlParam = 'update';
                successMes = '修改成功';
            } else {
                urlParam = 'save';
                    successMes = '添加成功';

            }
            httpJson("guanhuaifuwu/" + urlParam, "POST", data, (res) => {
                if(res.code == 0){
                    window.sessionStorage.removeItem('addguanhuaifuwu');
                    window.sessionStorage.removeItem('updateId');
                    let flag = true;
                    if (flag) {
                        alert(successMes);
                    }
                    if (window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true") {
                        window.sessionStorage.removeItem('onlyme');
                        window.sessionStorage.setItem("reload","reload");
                        window.parent.location.href = "${pageContext.request.contextPath}/index.jsp";
                    } else {
                        window.location.href = "list.jsp";
                    }
                }
            });
        } else {
            alert("表单未填完整或有错误");
        }
    }

    // 查询列表
        <!-- 查询当前表的所有列表 -->
        function guanhuaifuwuTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=guanhuaifuwu_types", "GET", {}, (res) => {
                if(res.code == 0){
                    guanhuaifuwuTypesOptions = res.data.list;
                }
            });
        }
        function wanchengTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=wancheng_types", "GET", {}, (res) => {
                if(res.code == 0){
                    wanchengTypesOptions = res.data.list;
                }
            });
        }
        function pingjiaTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=pingjia_types", "GET", {}, (res) => {
                if(res.code == 0){
                    pingjiaTypesOptions = res.data.list;
                }
            });
        }
        <!-- 查询级联表的所有列表 -->
        function fuwurenyuanSelect() {
            //填充下拉框选项
            http("fuwurenyuan/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    fuwurenyuanOptions = res.data.list;
                }
            });
        }

        function fuwurenyuanSelectOne(id) {
            http("fuwurenyuan/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                fuwurenyuanShowImg();
                fuwurenyuanShowVideo();
                fuwurenyuanDataBind();
            }
        });
        }
        function laorenSelect() {
            //填充下拉框选项
            http("laoren/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    laorenOptions = res.data.list;
                }
            });
        }

        function laorenSelectOne(id) {
            http("laoren/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                laorenShowImg();
                laorenShowVideo();
                laorenDataBind();
            }
        });
        }



    // 初始化下拉框
    <!-- 初始化当前表的下拉框 -->
        function initializationGuanhuaifuwutypesSelect(){
            var guanhuaifuwuTypesSelect = document.getElementById('guanhuaifuwuTypesSelect');
            if(guanhuaifuwuTypesSelect != null && guanhuaifuwuTypesOptions != null  && guanhuaifuwuTypesOptions.length > 0 ){
                for (var i = 0; i < guanhuaifuwuTypesOptions.length; i++) {
                    guanhuaifuwuTypesSelect.add(new Option(guanhuaifuwuTypesOptions[i].indexName,guanhuaifuwuTypesOptions[i].codeIndex));
                }
            }
        }
        function initializationWanchengtypesSelect(){
            var wanchengTypesSelect = document.getElementById('wanchengTypesSelect');
            if(wanchengTypesSelect != null && wanchengTypesOptions != null  && wanchengTypesOptions.length > 0 ){
                for (var i = 0; i < wanchengTypesOptions.length; i++) {
                    wanchengTypesSelect.add(new Option(wanchengTypesOptions[i].indexName,wanchengTypesOptions[i].codeIndex));
                }
            }
        }
        function initializationPingjiatypesSelect(){
            var pingjiaTypesSelect = document.getElementById('pingjiaTypesSelect');
            if(pingjiaTypesSelect != null && pingjiaTypesOptions != null  && pingjiaTypesOptions.length > 0 ){
                for (var i = 0; i < pingjiaTypesOptions.length; i++) {
                    pingjiaTypesSelect.add(new Option(pingjiaTypesOptions[i].indexName,pingjiaTypesOptions[i].codeIndex));
                }
            }
        }

        function initializationfuwurenyuanSelect() {
            var fuwurenyuanSelect = document.getElementById('fuwurenyuanSelect');
            if(fuwurenyuanSelect != null && fuwurenyuanOptions != null  && fuwurenyuanOptions.length > 0 ) {
                for (var i = 0; i < fuwurenyuanOptions.length; i++) {
                        fuwurenyuanSelect.add(new Option(fuwurenyuanOptions[i].fuwurenyuanName, fuwurenyuanOptions[i].id));
                }

                $("#fuwurenyuanSelect").change(function(e) {
                        fuwurenyuanSelectOne(e.target.value);
                });
            }

        }

        function initializationlaorenSelect() {
            var laorenSelect = document.getElementById('laorenSelect');
            if(laorenSelect != null && laorenOptions != null  && laorenOptions.length > 0 ) {
                for (var i = 0; i < laorenOptions.length; i++) {
                        laorenSelect.add(new Option(laorenOptions[i].laorenName, laorenOptions[i].id));
                }

                $("#laorenSelect").change(function(e) {
                        laorenSelectOne(e.target.value);
                });
            }

        }



    // 下拉框选项回显
    function setSelectOption() {

        <!-- 当前表的下拉框回显 -->

        var guanhuaifuwuTypesSelect = document.getElementById("guanhuaifuwuTypesSelect");
        if(guanhuaifuwuTypesSelect != null && guanhuaifuwuTypesOptions != null  && guanhuaifuwuTypesOptions.length > 0 ) {
            for (var i = 0; i < guanhuaifuwuTypesOptions.length; i++) {
                if (guanhuaifuwuTypesOptions[i].codeIndex == ruleForm.guanhuaifuwuTypes) {//下拉框value对比,如果一致就赋值汉字
                        guanhuaifuwuTypesSelect.options[i].selected = true;
                }
            }
        }

        var wanchengTypesSelect = document.getElementById("wanchengTypesSelect");
        if(wanchengTypesSelect != null && wanchengTypesOptions != null  && wanchengTypesOptions.length > 0 ) {
            for (var i = 0; i < wanchengTypesOptions.length; i++) {
                if (wanchengTypesOptions[i].codeIndex == ruleForm.wanchengTypes) {//下拉框value对比,如果一致就赋值汉字
                        wanchengTypesSelect.options[i].selected = true;
                }
            }
        }

        var pingjiaTypesSelect = document.getElementById("pingjiaTypesSelect");
        if(pingjiaTypesSelect != null && pingjiaTypesOptions != null  && pingjiaTypesOptions.length > 0 ) {
            for (var i = 0; i < pingjiaTypesOptions.length; i++) {
                if (pingjiaTypesOptions[i].codeIndex == ruleForm.pingjiaTypes) {//下拉框value对比,如果一致就赋值汉字
                        pingjiaTypesSelect.options[i].selected = true;
                }
            }
        }
        <!--  级联表的下拉框回显  -->
            var fuwurenyuanSelect = document.getElementById("fuwurenyuanSelect");
            if(fuwurenyuanSelect != null && fuwurenyuanOptions != null  && fuwurenyuanOptions.length > 0 ) {
                for (var i = 0; i < fuwurenyuanOptions.length; i++) {
                    if (fuwurenyuanOptions[i].id == ruleForm.fuwurenyuanId) {//下拉框value对比,如果一致就赋值汉字
                        fuwurenyuanSelect.options[i+1].selected = true;
                        $("#fuwurenyuanSelect" ).selectpicker('refresh');
                    }
                }
            }
            var laorenSelect = document.getElementById("laorenSelect");
            if(laorenSelect != null && laorenOptions != null  && laorenOptions.length > 0 ) {
                for (var i = 0; i < laorenOptions.length; i++) {
                    if (laorenOptions[i].id == ruleForm.laorenId) {//下拉框value对比,如果一致就赋值汉字
                        laorenSelect.options[i+1].selected = true;
                        $("#laorenSelect" ).selectpicker('refresh');
                    }
                }
            }
    }


    // 填充富文本框
    function setContent() {

        <!-- 当前表的填充富文本框 -->
        if (ruleForm.guanhuaifuwuContent != null && ruleForm.guanhuaifuwuContent != 'null' && ruleForm.guanhuaifuwuContent != '' && $("#guanhuaifuwuContentupload").length>0) {

            var guanhuaifuwuContentUeditor = UE.getEditor('guanhuaifuwuContentEditor');
            guanhuaifuwuContentUeditor.ready(function () {
                var mes = '';
                if(ruleForm.guanhuaifuwuContent != null){
                    mes = ''+ ruleForm.guanhuaifuwuContent;
                    // mes = mes.replace(/\n/g, "<br>");
                }
                guanhuaifuwuContentUeditor.setContent(mes);
            });
        }
    }
    // 获取富文本框内容
    function getContent() {

        <!-- 获取当前表的富文本框内容 -->
        if($("#guanhuaifuwuContentupload").length>0) {
            var guanhuaifuwuContentEditor = UE.getEditor('guanhuaifuwuContentEditor');
            if (guanhuaifuwuContentEditor.hasContents()) {
                $('#guanhuaifuwuContent-input').attr('value', guanhuaifuwuContentEditor.getContent());
            }
        }
    }
    //数字检查
        <!-- 当前表的数字检查 -->

    function exit() {
        window.sessionStorage.removeItem("updateId");
        window.sessionStorage.removeItem('addguanhuaifuwu');
        window.location.href = "list.jsp";
    }
    // 表单校验
    function validform() {
        return $("#addOrUpdateForm").validate({
            rules: {
                fuwurenyuanId: "required",
                laorenId: "required",
                guanhuaifuwuUuidNumber: "required",
                guanhuaifuwuName: "required",
                guanhuaifuwuTypes: "required",
                yujikaishiTime: "required",
                yujijieshuTime: "required",
                fuwuTime: "required",
                guanhuaifuwuContent: "required",
                wanchengTypes: "required",
                pingjiaTypes: "required",
                pingjiaText: "required",
            },
            messages: {
                fuwurenyuanId: "服务人员不能为空",
                laorenId: "老人不能为空",
                guanhuaifuwuUuidNumber: "服务编号不能为空",
                guanhuaifuwuName: "服务名称不能为空",
                guanhuaifuwuTypes: "服务类型不能为空",
                yujikaishiTime: "预计开始时间不能为空",
                yujijieshuTime: "预计结束时间不能为空",
                fuwuTime: "服务日期不能为空",
                guanhuaifuwuContent: "服务详情不能为空",
                wanchengTypes: "状态不能为空",
                pingjiaTypes: "评价等级不能为空",
                pingjiaText: "评价结果不能为空",
            }
        }).form();
    }

    // 获取当前详情
    function getDetails() {
        var addguanhuaifuwu = window.sessionStorage.getItem("addguanhuaifuwu");
        if (addguanhuaifuwu != null && addguanhuaifuwu != "" && addguanhuaifuwu != "null") {
            //注册表单验证
            $(validform());
            $("#guanhuaifuwuUuidNumber").val(new Date().getTime()+Math.ceil(Math.random()*10));//设置唯一号

            $('#submitBtn').text('新增');

        } else {
            $('#submitBtn').text('修改');
            var userId = window.sessionStorage.getItem('userId');
            updateId = userId;//先赋值登录用户id
            var uId  = window.sessionStorage.getItem('updateId');//获取修改传过来的id
            if (uId != null && uId != "" && uId != "null") {
                //如果修改id不为空就赋值修改id
                updateId = uId;
            }
            window.sessionStorage.removeItem('updateId');
            http("guanhuaifuwu/info/" + updateId, "GET", {}, (res) => {
                if(res.code == 0)
                {
                    ruleForm = res.data
                    // 是/否下拉框回显
                    setSelectOption();
                    // 设置图片src
                    showImg();
                    // 设置视频src
                    showVideo();
                    // 数据填充
                    dataBind();
                    // 富文本框回显
                    setContent();
                    //注册表单验证
                    $(validform());
                }

            });
        }
    }

    // 清除可能会重复渲染的selection
    function clear(className) {
        var elements = document.getElementsByClassName(className);
        for (var i = elements.length - 1; i >= 0; i--) {
            elements[i].parentNode.removeChild(elements[i]);
        }
    }

    function dateTimePick() {
        var yujikaishiTime = laydate.render({
            elem: '#yujikaishiTime-input'
            ,type: 'datetime'
        });
        var yujijieshuTime = laydate.render({
            elem: '#yujijieshuTime-input'
            ,type: 'datetime'
        });
        var fuwuTime = laydate.render({
            elem: '#fuwuTime-input'
            ,type: 'date'
        });
        var insertTime = laydate.render({
            elem: '#insertTime-input'
            ,type: 'datetime'
        });
    }


    function dataBind() {


    <!--  级联表的数据回显  -->
        fuwurenyuanDataBind();
        laorenDataBind();


    <!--  当前表的数据回显  -->
        $("#updateId").val(ruleForm.id);
        $("#fuwurenyuanId").val(ruleForm.fuwurenyuanId);
        $("#laorenId").val(ruleForm.laorenId);
        $("#guanhuaifuwuUuidNumber").val(ruleForm.guanhuaifuwuUuidNumber);
        $("#guanhuaifuwuName").val(ruleForm.guanhuaifuwuName);
        $("#yujikaishiTime-input").val(ruleForm.yujikaishiTime);
        $("#yujijieshuTime-input").val(ruleForm.yujijieshuTime);
        $("#fuwuTime-input").val(ruleForm.fuwuTime);
        $("#guanhuaifuwuContent").val(ruleForm.guanhuaifuwuContent);
        $("#pingjiaText").val(ruleForm.pingjiaText);

    }
    <!--  级联表的数据回显  -->
    function fuwurenyuanDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#fuwurenyuanId").val(ruleForm.id);

        $("#fuwurenyuanUuidNumber").val(ruleForm.fuwurenyuanUuidNumber);
        $("#fuwurenyuanName").val(ruleForm.fuwurenyuanName);
        $("#fuwurenyuanPhone").val(ruleForm.fuwurenyuanPhone);
        $("#fuwurenyuanEmail").val(ruleForm.fuwurenyuanEmail);
    }

    function laorenDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#laorenId").val(ruleForm.id);

        $("#laorenUuidNumber").val(ruleForm.laorenUuidNumber);
        $("#laorenName").val(ruleForm.laorenName);
        $("#laorenPhone").val(ruleForm.laorenPhone);
        $("#nianling").val(ruleForm.nianling);
        $("#laorenAddress").val(ruleForm.laorenAddress);
        $("#laorenIdNumber").val(ruleForm.laorenIdNumber);
        $("#qinshuxingming").val(ruleForm.qinshuxingming);
        $("#qinshuxingmingPhone").val(ruleForm.qinshuxingmingPhone);
        $("#yiliaokahao").val(ruleForm.yiliaokahao);
    }


    //图片显示
    function showImg() {
        <!--  当前表的图片  -->

        <!--  级联表的图片  -->
        fuwurenyuanShowImg();
        laorenShowImg();
    }


    <!--  级联表的图片  -->

    function fuwurenyuanShowImg() {
        $("#fuwurenyuanPhotoImg").attr("src",ruleForm.fuwurenyuanPhoto);
    }


    function laorenShowImg() {
        $("#laorenPhotoImg").attr("src",ruleForm.laorenPhoto);
    }



    //视频回显
    function showVideo() {
    <!--  当前表的视频  -->

    <!--  级联表的视频  -->
        fuwurenyuanShowVideo();
        laorenShowVideo();
    }


    <!--  级联表的视频  -->

    function fuwurenyuanShowVideo() {
        $("#fuwurenyuanPhotoV").attr("src",ruleForm.fuwurenyuanPhoto);
    }

    function laorenShowVideo() {
        $("#laorenPhotoV").attr("src",ruleForm.laorenPhoto);
    }



    $(document).ready(function () {
        //设置右上角用户名
        $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
        //设置项目名
        $('.sidebar-header h3 a').html(projectName)
        //设置导航栏菜单
        setMenu();
        $('#exitBtn').on('click', function (e) {
            e.preventDefault();
            exit();
        });
        //初始化时间插件
        dateTimePick();
        //查询所有下拉框
            <!--  当前表的下拉框  -->
            guanhuaifuwuTypesSelect();
            wanchengTypesSelect();
            pingjiaTypesSelect();
            <!-- 查询级联表的下拉框(用id做option,用名字及其他参数做名字级联修改) -->
            fuwurenyuanSelect();
            laorenSelect();



        // 初始化下拉框
            <!--  初始化当前表的下拉框  -->
            initializationGuanhuaifuwutypesSelect();
            initializationWanchengtypesSelect();
            initializationPingjiatypesSelect();
            <!--  初始化级联表的下拉框  -->
            initializationfuwurenyuanSelect();
            initializationlaorenSelect();

        $(".selectpicker" ).selectpicker('refresh');
        getDetails();
        //初始化上传按钮
        upload();
    <%@ include file="../../static/myInfo.js"%>
                $('#submitBtn').on('click', function (e) {
                    e.preventDefault();
                    //console.log("点击了...提交按钮");
                    submit();
                });
        readonly();
        window.sessionStorage.removeItem('addguanhuaifuwu');
    });

    function readonly() {
        if (window.sessionStorage.getItem('role') == '管理员') {
            //$('#jifen').attr('readonly', 'readonly');
            //$('#role').attr('style', 'pointer-events:none;width:450px;');
        }
        else if (window.sessionStorage.getItem('role') == '社区管理员') {
            // $(".aaaaaa").remove();
            $(".shequguanliyuan").remove();//删除当前用户的信息
        }
        else if (window.sessionStorage.getItem('role') == '服务人员') {
            if(ruleForm.id != null && ruleForm.id != ""){
                $(".aaaaaa").remove();
                $('#guanhuaifuwuUuidNumber').attr('readonly', 'readonly');
                $('#guanhuaifuwuName').attr('readonly', 'readonly');
                $('#yujikaishiTime-input').attr('style', 'pointer-events:none;width:450px;');
                $('#yujijieshuTime-input').attr('style', 'pointer-events:none;width:450px;');
                $('#guanhuaifuwuTypesSelect').attr('style', 'pointer-events:none;width:450px;');
                $('#fuwuTime-input').attr('style', 'pointer-events:none;width:450px;');
                var guanhuaifuwuContentEditor = UE.getEditor('guanhuaifuwuContentEditor');
                guanhuaifuwuContentEditor.ready(function () {
                    guanhuaifuwuContentEditor.setDisabled('fullscreen');
                });

            }


            $(".pingjiaTypesDiv").remove();//删除当前用户的信息
            $(".pingjiaTextDiv").remove();//删除当前用户的信息
            $(".fuwurenyuan").remove();//删除当前用户的信息
        }
        else if (window.sessionStorage.getItem('role') == '老人') {
            $('#guanhuaifuwuUuidNumber').attr('readonly', 'readonly');
            $('#guanhuaifuwuName').attr('readonly', 'readonly');
            $('#yujikaishiTime-input').attr('style', 'pointer-events:none;width:450px;');
            $('#yujijieshuTime-input').attr('style', 'pointer-events:none;width:450px;');
            $('#guanhuaifuwuTypesSelect').attr('style', 'pointer-events:none;width:450px;');
            $('#fuwuTime-input').attr('style', 'pointer-events:none;width:450px;');
            var guanhuaifuwuContentEditor = UE.getEditor('guanhuaifuwuContentEditor');
            guanhuaifuwuContentEditor.ready(function () {
                guanhuaifuwuContentEditor.setDisabled('fullscreen');
            });

            $('#wanchengTypesSelect').attr('style', 'pointer-events:none;width:450px;');

            $(".aaaaaa").remove();
            $(".laoren").remove();//删除当前用户的信息
        }
        else{
            // alert("未知情况.......");
            // var replyTextUeditor = UE.getEditor('replyTextEditor');
            // replyTextUeditor.ready(function () {
            //     replyTextUeditor.setDisabled('fullscreen');
            // });
        }
    }

    //比较大小
    function compare() {
        var largerVal = null;
        var smallerVal = null;
        if (largerVal != null && smallerVal != null) {
            if (largerVal <= smallerVal) {
                alert(smallerName + '不能大于等于' + largerName);
                return false;
            }
        }
        return true;
    }


    // 用户登出
    <%@ include file="../../static/logout.jsp"%>
</script>
</body>

</html>
