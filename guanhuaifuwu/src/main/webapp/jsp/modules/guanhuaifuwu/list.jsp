<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
    <%@ include file="../../static/head.jsp" %>
    <!-- font-awesome -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">


    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-select.css" rel="stylesheet">
    <!-- layui -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/layui/css/layui.css">
    <script src="${pageContext.request.contextPath}/resources/layui/layui.js"></script>
</head>
<style>

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
                        <h3 class="block-title">关怀服务管理</h3>
                    </div>
                    <div class="col-md-6">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="${pageContext.request.contextPath}/index.jsp">
                                    <span class="ti-home"></span>
                                </a>
                            </li>
                            <li class="breadcrumb-item">关怀服务管理</li>
                            <li class="breadcrumb-item active">关怀服务列表</li>
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
                            <h3 class="widget-title">关怀服务列表</h3>
                            <div class="table-responsive mb-3">
                                <div class="col-sm-12">
                                                                                                                                                 
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        服务编号
                                        <div class="layui-input-inline">
                                            <input type="text" id="guanhuaifuwuUuidNumberSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="服务编号" aria-controls="tableId">
                                        </div>
                                    </div>
                                     
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        服务名称
                                        <div class="layui-input-inline">
                                            <input type="text" id="guanhuaifuwuNameSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="服务名称" aria-controls="tableId">
                                        </div>
                                    </div>
                                     
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        服务类型
                                        <div class="layui-input-inline">
                                            <select name="guanhuaifuwuTypesSelectSearch"  style="width: 150px;" id="guanhuaifuwuTypesSelectSearch" class="form-control form-control-sm"
                                                    aria-controls="tableId">
                                            </select>
                                        </div>
                                    </div>
                                                                                                                                                                                     
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        状态
                                        <div class="layui-input-inline">
                                            <select name="wanchengTypesSelectSearch"  style="width: 150px;" id="wanchengTypesSelectSearch" class="form-control form-control-sm"
                                                    aria-controls="tableId">
                                            </select>
                                        </div>
                                    </div>
                                     
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        评价等级
                                        <div class="layui-input-inline">
                                            <select name="pingjiaTypesSelectSearch"  style="width: 150px;" id="pingjiaTypesSelectSearch" class="form-control form-control-sm"
                                                    aria-controls="tableId">
                                            </select>
                                        </div>
                                    </div>
                                                                                                            
                                                                                                         
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        服务人员编号
                                        <div class="layui-input-inline">
                                            <input type="text" id="fuwurenyuanUuidNumberSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="服务人员编号" aria-controls="tableId">
                                        </div>
                                    </div>
                                                     
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        服务人员姓名
                                        <div class="layui-input-inline">
                                            <input type="text" id="fuwurenyuanNameSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="服务人员姓名" aria-controls="tableId">
                                        </div>
                                    </div>
                                                                                                                                                                                                                                                                                                                         
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        老人编号
                                        <div class="layui-input-inline">
                                            <input type="text" id="laorenUuidNumberSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="老人编号" aria-controls="tableId">
                                        </div>
                                    </div>
                                                     
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        老人姓名
                                        <div class="layui-input-inline">
                                            <input type="text" id="laorenNameSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="老人姓名" aria-controls="tableId">
                                        </div>
                                    </div>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                    <div class="layui-inline" style="margin-left: 30px;margin-bottom: 10px;">
                                        <button onclick="search()" type="button" class="btn btn-primary">查询</button>
                                        <button onclick="add()" type="button" class="btn btn-primary 新增">添加</button>
                                        <button onclick="graph()" type="button" class="btn btn-primary 报表">报表</button>
                                        <button onclick="deleteMore()" type="button" class="btn btn-danger 删除">批量删除</button>
                                    </div>
                                </div>
                                <table id="tableId" class="table table-bordered table-striped">
                                    <thead>
                                    <tr>
                                        <th class="no-sort" style="min-width: 35px;">
                                            <div class="custom-control custom-checkbox">
                                                <input class="custom-control-input" type="checkbox" id="select-all"
                                                       onclick="chooseAll()">
                                                <label class="custom-control-label" for="select-all"></label>
                                            </div>
                                        </th>

                                        <th >服务人员编号</th>
                                        <th >服务人员姓名</th>
                                        <th >服务人员手机号</th>
                                        <%--<th >服务人员头像</th>
                                        <th >服务人员电子邮箱</th>--%>
                                        <th >老人编号</th>
                                        <th >老人姓名</th>
                                        <th >老人手机号</th>
                                        <%--<th >老人照片</th>
                                        <th >年龄</th>
                                        <th >联系方式</th>
                                        <th >身份证号</th>
                                        <th >亲属姓名</th>
                                        <th >亲属联系方式</th>--%>
                                        <th >医疗卡号</th>
                                        <th>服务编号</th>
                                        <th>服务名称</th>
                                        <th>服务类型</th>
                                        <th>预计开始时间</th>
                                        <th>预计结束时间</th>
                                        <th>服务日期</th>
                                        <th>状态</th>
                                        <th>评价等级</th>
                                        <th>评价结果</th>
                                        <th>添加时间</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>
                                    <tbody id="thisTbody">
                                    </tbody>
                                </table>
                                <div class="col-md-6 col-sm-3">
                                    <div class="dataTables_length" id="tableId_length">

                                        <select name="tableId_length" aria-controls="tableId" id="selectPageSize"
                                                onchange="changePageSize()">
                                            <option value="10">10</option>
                                            <option value="25">25</option>
                                            <option value="50">50</option>
                                            <option value="100">100</option>
                                        </select>
                                        条 每页

                                    </div>
                                </div>
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination justify-content-end">
                                        <li class="page-item" id="tableId_previous" onclick="pageNumChange('pre')">
                                            <a class="page-link" href="#" tabindex="-1">上一页</a>
                                        </li>

                                        <li class="page-item" id="tableId_next" onclick="pageNumChange('next')">
                                            <a class="page-link" href="#">下一页</a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
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
    <script language="javascript" type="text/javascript"
            src="${pageContext.request.contextPath}/resources/My97DatePicker/WdatePicker.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/js/bootstrap-select.js"></script>
    <script>

        <%@ include file="../../utils/menu.jsp"%>
        <%@ include file="../../static/setMenu.js"%>
        <%@ include file="../../utils/baseUrl.jsp"%>
        <%@ include file="../../static/getRoleButtons.js"%>
        <%@ include file="../../static/crossBtnControl.js"%>
        var tableName = "guanhuaifuwu";
        var pageType = "list";
        var searchForm = {key: ""};
        var pageIndex = 1;
        var pageSize = 10;
        var totalPage = 0;
        var dataList = [];
        var sortColumn = '';
        var sortOrder = '';
        var ids = [];
        var checkAll = false;

        <!-- 级联表的级联字典表 -->

        <!-- 本表的级联字段表 -->
        var guanhuaifuwuTypesOptions = [];
        var wanchengTypesOptions = [];
        var pingjiaTypesOptions = [];

        function init() {
            // 满足条件渲染提醒接口
        }

        // 改变每页记录条数
        function changePageSize() {
            var selection = document.getElementById('selectPageSize');
            var index = selection.selectedIndex;
            pageSize = selection.options[index].value;
            getDataList();
        }



        // 查询
        function search() {
            searchForm = {key: ""};

        <!-- 级联表的级联字典表 -->
                                         
                            //服务人员编号
            var fuwurenyuanUuidNumberSearchInput = $('#fuwurenyuanUuidNumberSearch');
            if( fuwurenyuanUuidNumberSearchInput != null){
                if (fuwurenyuanUuidNumberSearchInput.val() != null && fuwurenyuanUuidNumberSearchInput.val() != '') {
                    searchForm.fuwurenyuanUuidNumber = $('#fuwurenyuanUuidNumberSearch').val();
                }
            }
                     
                            //服务人员姓名
            var fuwurenyuanNameSearchInput = $('#fuwurenyuanNameSearch');
            if( fuwurenyuanNameSearchInput != null){
                if (fuwurenyuanNameSearchInput.val() != null && fuwurenyuanNameSearchInput.val() != '') {
                    searchForm.fuwurenyuanName = $('#fuwurenyuanNameSearch').val();
                }
            }
                                                                                                                         
                            //老人编号
            var laorenUuidNumberSearchInput = $('#laorenUuidNumberSearch');
            if( laorenUuidNumberSearchInput != null){
                if (laorenUuidNumberSearchInput.val() != null && laorenUuidNumberSearchInput.val() != '') {
                    searchForm.laorenUuidNumber = $('#laorenUuidNumberSearch').val();
                }
            }
                     
                            //老人姓名
            var laorenNameSearchInput = $('#laorenNameSearch');
            if( laorenNameSearchInput != null){
                if (laorenNameSearchInput.val() != null && laorenNameSearchInput.val() != '') {
                    searchForm.laorenName = $('#laorenNameSearch').val();
                }
            }
                                                                                                                                                                                        <!-- 本表的查询条件 -->

                 
            //服务编号
            var guanhuaifuwuUuidNumberSearchInput = $('#guanhuaifuwuUuidNumberSearch');
            if( guanhuaifuwuUuidNumberSearchInput != null){
                if (guanhuaifuwuUuidNumberSearchInput.val() != null && guanhuaifuwuUuidNumberSearchInput.val() != '') {
                    searchForm.guanhuaifuwuUuidNumber = $('#guanhuaifuwuUuidNumberSearch').val();
                }
            }
     
            //服务名称
            var guanhuaifuwuNameSearchInput = $('#guanhuaifuwuNameSearch');
            if( guanhuaifuwuNameSearchInput != null){
                if (guanhuaifuwuNameSearchInput.val() != null && guanhuaifuwuNameSearchInput.val() != '') {
                    searchForm.guanhuaifuwuName = $('#guanhuaifuwuNameSearch').val();
                }
            }
     
                //服务类型
            var guanhuaifuwuTypesSelectSearchInput = document.getElementById("guanhuaifuwuTypesSelectSearch");
            if(guanhuaifuwuTypesSelectSearchInput != null){
                var guanhuaifuwuTypesIndex = guanhuaifuwuTypesSelectSearchInput.selectedIndex;
                if( guanhuaifuwuTypesIndex  != 0){
                    searchForm.guanhuaifuwuTypes= document.getElementById("guanhuaifuwuTypesSelectSearch").options[guanhuaifuwuTypesIndex].value;
                }
            }
                     
                //状态
            var wanchengTypesSelectSearchInput = document.getElementById("wanchengTypesSelectSearch");
            if(wanchengTypesSelectSearchInput != null){
                var wanchengTypesIndex = wanchengTypesSelectSearchInput.selectedIndex;
                if( wanchengTypesIndex  != 0){
                    searchForm.wanchengTypes= document.getElementById("wanchengTypesSelectSearch").options[wanchengTypesIndex].value;
                }
            }
     
                //评价等级
            var pingjiaTypesSelectSearchInput = document.getElementById("pingjiaTypesSelectSearch");
            if(pingjiaTypesSelectSearchInput != null){
                var pingjiaTypesIndex = pingjiaTypesSelectSearchInput.selectedIndex;
                if( pingjiaTypesIndex  != 0){
                    searchForm.pingjiaTypes= document.getElementById("pingjiaTypesSelectSearch").options[pingjiaTypesIndex].value;
                }
            }
                        getDataList();
        }

        // 获取数据列表
        function getDataList() {
            http("guanhuaifuwu/page", "GET", {
                page: pageIndex,
                limit: pageSize,
                sort: sortColumn,
                order: sortOrder,
                guanhuaifuwuDelete: 1,
                //本表的
                guanhuaifuwuUuidNumber: searchForm.guanhuaifuwuUuidNumber,
                guanhuaifuwuName: searchForm.guanhuaifuwuName,
                guanhuaifuwuTypes: searchForm.guanhuaifuwuTypes,
                wanchengTypes: searchForm.wanchengTypes,
                pingjiaTypes: searchForm.pingjiaTypes,
            //级联表的
                fuwurenyuanUuidNumber: searchForm.fuwurenyuanUuidNumber,
                fuwurenyuanName: searchForm.fuwurenyuanName,

                laorenUuidNumber: searchForm.laorenUuidNumber,
                laorenName: searchForm.laorenName,


            }, (res) => {
                if(res.code == 0) {
                    clear();
                    $("#thisTbody").html("");
                    dataList = res.data.list;
                    totalPage = res.data.totalPage;
                    for (var i = 0; i < dataList.length; i++) { //遍历一下表格数据  
                        var trow = setDataRow(dataList[i], i); //定义一个方法,返回tr数据 
                        $('#thisTbody').append(trow);
                    }
                    pagination(); //渲染翻页组件
                    getRoleButtons();// 权限按钮控制
                }
            });
        }

        // 渲染表格数据
        function setDataRow(item, number) {
            //创建行 
            var row = document.createElement('tr');
            row.setAttribute('class', 'useOnce');
            //创建勾选框
            var checkbox = document.createElement('td');
            var checkboxDiv = document.createElement('div');
            checkboxDiv.setAttribute("class", "custom-control custom-checkbox");
            var checkboxInput = document.createElement('input');
            checkboxInput.setAttribute("class", "custom-control-input");
            checkboxInput.setAttribute("type", "checkbox");
            checkboxInput.setAttribute('name', 'chk');
            checkboxInput.setAttribute('value', item.id);
            checkboxInput.setAttribute("id", number);
            checkboxDiv.appendChild(checkboxInput);
            var checkboxLabel = document.createElement('label');
            checkboxLabel.setAttribute("class", "custom-control-label");
            checkboxLabel.setAttribute("for", number);
            checkboxDiv.appendChild(checkboxLabel);
            checkbox.appendChild(checkboxDiv);
            row.appendChild(checkbox)


                    //服务人员编号
            var fuwurenyuanUuidNumberCell = document.createElement('td');
            fuwurenyuanUuidNumberCell.innerHTML = item.fuwurenyuanUuidNumber;
            row.appendChild(fuwurenyuanUuidNumberCell);


                    //服务人员姓名
            var fuwurenyuanNameCell = document.createElement('td');
            fuwurenyuanNameCell.innerHTML = item.fuwurenyuanName;
            row.appendChild(fuwurenyuanNameCell);


                    //服务人员手机号
            var fuwurenyuanPhoneCell = document.createElement('td');
            fuwurenyuanPhoneCell.innerHTML = item.fuwurenyuanPhone;
            row.appendChild(fuwurenyuanPhoneCell);

/*
                //服务人员头像
            var fuwurenyuanPhotoCell = document.createElement('td');
            var fuwurenyuanPhotoImg = document.createElement('img');
            var fuwurenyuanPhotoImgValue = item.fuwurenyuanPhoto;
            if(fuwurenyuanPhotoImgValue !=null && fuwurenyuanPhotoImgValue !='' && fuwurenyuanPhotoImgValue !='null'){
                    fuwurenyuanPhotoImg.setAttribute('src', fuwurenyuanPhotoImgValue);
                    fuwurenyuanPhotoImg.setAttribute('height', 100);
                    fuwurenyuanPhotoImg.setAttribute('width', 100);
                    fuwurenyuanPhotoCell.appendChild(fuwurenyuanPhotoImg);
            }else{
                    fuwurenyuanPhotoCell.innerHTML = "暂无图片";
            }
            row.appendChild(fuwurenyuanPhotoCell);


                    //服务人员电子邮箱
            var fuwurenyuanEmailCell = document.createElement('td');
            fuwurenyuanEmailCell.innerHTML = item.fuwurenyuanEmail;
            row.appendChild(fuwurenyuanEmailCell);*/


                    //老人编号
            var laorenUuidNumberCell = document.createElement('td');
            laorenUuidNumberCell.innerHTML = item.laorenUuidNumber;
            row.appendChild(laorenUuidNumberCell);


                    //老人姓名
            var laorenNameCell = document.createElement('td');
            laorenNameCell.innerHTML = item.laorenName;
            row.appendChild(laorenNameCell);


                    //老人手机号
            var laorenPhoneCell = document.createElement('td');
            laorenPhoneCell.innerHTML = item.laorenPhone;
            row.appendChild(laorenPhoneCell);


           /*     //老人照片
            var laorenPhotoCell = document.createElement('td');
            var laorenPhotoImg = document.createElement('img');
            var laorenPhotoImgValue = item.laorenPhoto;
            if(laorenPhotoImgValue !=null && laorenPhotoImgValue !='' && laorenPhotoImgValue !='null'){
                    laorenPhotoImg.setAttribute('src', laorenPhotoImgValue);
                    laorenPhotoImg.setAttribute('height', 100);
                    laorenPhotoImg.setAttribute('width', 100);
                    laorenPhotoCell.appendChild(laorenPhotoImg);
            }else{
                    laorenPhotoCell.innerHTML = "暂无图片";
            }
            row.appendChild(laorenPhotoCell);

                        //年龄
            var nianlingCell = document.createElement('td');
            nianlingCell.innerHTML = item.nianling;
            row.appendChild(nianlingCell);


                    //联系方式
            var laorenAddressCell = document.createElement('td');
            laorenAddressCell.innerHTML = item.laorenAddress;
            row.appendChild(laorenAddressCell);


                    //身份证号
            var laorenIdNumberCell = document.createElement('td');
            laorenIdNumberCell.innerHTML = item.laorenIdNumber;
            row.appendChild(laorenIdNumberCell);


                    //亲属姓名
            var qinshuxingmingCell = document.createElement('td');
            qinshuxingmingCell.innerHTML = item.qinshuxingming;
            row.appendChild(qinshuxingmingCell);


                    //亲属联系方式
            var qinshuxingmingPhoneCell = document.createElement('td');
            qinshuxingmingPhoneCell.innerHTML = item.qinshuxingmingPhone;
            row.appendChild(qinshuxingmingPhoneCell);*/


                    //医疗卡号
            var yiliaokahaoCell = document.createElement('td');
            yiliaokahaoCell.innerHTML = item.yiliaokahao;
            row.appendChild(yiliaokahaoCell);


            //服务编号
            var guanhuaifuwuUuidNumberCell = document.createElement('td');
            guanhuaifuwuUuidNumberCell.innerHTML = item.guanhuaifuwuUuidNumber;
            row.appendChild(guanhuaifuwuUuidNumberCell);


            //服务名称
            var guanhuaifuwuNameCell = document.createElement('td');
            guanhuaifuwuNameCell.innerHTML = item.guanhuaifuwuName;
            row.appendChild(guanhuaifuwuNameCell);


            //服务类型
            var guanhuaifuwuTypesCell = document.createElement('td');
            guanhuaifuwuTypesCell.innerHTML = item.guanhuaifuwuValue;
            row.appendChild(guanhuaifuwuTypesCell);


            //预计开始时间
            var yujikaishiTimeCell = document.createElement('td');
            yujikaishiTimeCell.innerHTML = item.yujikaishiTime;
            row.appendChild(yujikaishiTimeCell);


            //预计结束时间
            var yujijieshuTimeCell = document.createElement('td');
            yujijieshuTimeCell.innerHTML = item.yujijieshuTime;
            row.appendChild(yujijieshuTimeCell);


            //服务日期
            var fuwuTimeCell = document.createElement('td');
            fuwuTimeCell.innerHTML = item.fuwuTime;
            row.appendChild(fuwuTimeCell);


            //状态
            var wanchengTypesCell = document.createElement('td');
            wanchengTypesCell.innerHTML = item.wanchengValue;
            row.appendChild(wanchengTypesCell);


            //评价等级
            var pingjiaTypesCell = document.createElement('td');
            pingjiaTypesCell.innerHTML = item.pingjiaValue;
            row.appendChild(pingjiaTypesCell);


            //评价结果
            var pingjiaTextCell = document.createElement('td');
            pingjiaTextCell.innerHTML = item.pingjiaText;
            row.appendChild(pingjiaTextCell);


            //添加时间
            var insertTimeCell = document.createElement('td');
            insertTimeCell.innerHTML = item.insertTime;
            row.appendChild(insertTimeCell);



            //每行按钮
            var btnGroup = document.createElement('td');

            //详情按钮
            var detailBtn = document.createElement('button');
            var detailAttr = "detail(" + item.id + ')';
            detailBtn.setAttribute("type", "button");
            detailBtn.setAttribute("class", "btn btn-info btn-sm 查看");
            detailBtn.setAttribute("onclick", detailAttr);
            detailBtn.innerHTML = "查看";
            btnGroup.appendChild(detailBtn);

            if(window.sessionStorage.getItem('role') == '服务人员'){
                if(item.wanchengTypes == 1){
                    //修改按钮
                    var editBtn = document.createElement('button');
                    var editAttr = 'edit(' + item.id + ')';
                    editBtn.setAttribute("type", "button");
                    editBtn.setAttribute("class", "btn btn-warning btn-sm");
                    editBtn.setAttribute("onclick", editAttr);
                    editBtn.innerHTML = "修改状态";
                    btnGroup.appendChild(editBtn);
                }
            }else if(window.sessionStorage.getItem('role') == '老人'){
                if(item.wanchengTypes == 2){
                    //修改按钮
                    var editBtn = document.createElement('button');
                    var editAttr = 'edit(' + item.id + ')';
                    editBtn.setAttribute("type", "button");
                    editBtn.setAttribute("class", "btn btn-warning btn-sm");
                    editBtn.setAttribute("onclick", editAttr);
                    editBtn.innerHTML = "评价服务";
                    btnGroup.appendChild(editBtn);
                }
            }else{
                //修改按钮
                var editBtn = document.createElement('button');
                var editAttr = 'edit(' + item.id + ')';
                editBtn.setAttribute("type", "button");
                editBtn.setAttribute("class", "btn btn-warning btn-sm 修改");
                editBtn.setAttribute("onclick", editAttr);
                editBtn.innerHTML = "修改";
                btnGroup.appendChild(editBtn);
            }

            //删除按钮
            var deleteBtn = document.createElement('button');
            var deleteAttr = 'remove(' + item.id + ')';
            deleteBtn.setAttribute("type", "button");
            deleteBtn.setAttribute("class", "btn btn-danger btn-sm 删除");
            deleteBtn.setAttribute("onclick", deleteAttr);
            deleteBtn.innerHTML = "删除";
            btnGroup.appendChild(deleteBtn);
            row.appendChild(btnGroup);

            return row;
    }


        // 翻页
        function pageNumChange(val) {
            if (val == 'pre') {
                pageIndex--;
            } else if (val == 'next') {
                pageIndex++;
            } else {
                pageIndex = val;
            }
            getDataList();
        }

        // 下载
        function download(url) {
            window.open(url);
        }
        // 打开新窗口播放媒体
        function mediaPlay(url){
            window.open(url);
        }

        // 渲染翻页组件
        function pagination() {
            var beginIndex = pageIndex;
            var endIndex = pageIndex;
            var point = 4;
            //计算页码
            for (var i = 0; i < 3; i++) {
                if (endIndex == totalPage) {
                    break;
                }
                endIndex++;
                point--;
            }
            for (var i = 0; i < 3; i++) {
                if (beginIndex == 1) {
                    break;
                }
                beginIndex--;
                point--;
            }
            if (point > 0) {
                while (point > 0) {
                    if (endIndex == totalPage) {
                        break;
                    }
                    endIndex++;
                    point--;
                }
                while (point > 0) {
                    if (beginIndex == 1) {
                        break;
                    }
                    beginIndex--;
                    point--
                }
            }
            // 是否显示 前一页 按钮
            if (pageIndex > 1) {
                $('#tableId_previous').show();
            } else {
                $('#tableId_previous').hide();
            }
            // 渲染页码按钮
            for (var i = beginIndex; i <= endIndex; i++) {
                var pageNum = document.createElement('li');
                pageNum.setAttribute('onclick', "pageNumChange(" + i + ")");
                if (pageIndex == i) {
                    pageNum.setAttribute('class', 'paginate_button page-item active useOnce');
                } else {
                    pageNum.setAttribute('class', 'paginate_button page-item useOnce');
                }
                var pageHref = document.createElement('a');
                pageHref.setAttribute('class', 'page-link');
                pageHref.setAttribute('href', '#');
                pageHref.setAttribute('aria-controls', 'tableId');
                pageHref.setAttribute('data-dt-idx', i);
                pageHref.setAttribute('tabindex', 0);
                pageHref.innerHTML = i;
                pageNum.appendChild(pageHref);
                $('#tableId_next').before(pageNum);
            }
            // 是否显示 下一页 按钮
            if (pageIndex < totalPage) {
                $('#tableId_next').show();
                $('#tableId_next a').attr('data-dt-idx', endIndex + 1);
            } else {
                $('#tableId_next').hide();
            }
            var pageNumInfo = "当前第 " + pageIndex + " 页，共 " + totalPage + " 页";
            $('#tableId_info').html(pageNumInfo);
        }

        // 跳转到指定页
        function toThatPage() {
            //var index = document.getElementById('pageIndexInput').value;
            if (index < 0 || index > totalPage) {
                alert('请输入正确的页码');
            } else {
                pageNumChange(index);
            }
        }

        // 全选/全不选
        function chooseAll() {
            checkAll = !checkAll;
            var boxs = document.getElementsByName("chk");
            for (var i = 0; i < boxs.length; i++) {
                boxs[i].checked = checkAll;
            }
        }

        // 批量删除
        function deleteMore() {
            ids = []
            var boxs = document.getElementsByName("chk");
            for (var i = 0; i < boxs.length; i++) {
                if (boxs[i].checked) {
                    ids.push(boxs[i].value)
                }
            }
            if (ids.length == 0) {
                alert('请勾选要删除的记录');
            } else {
                remove(ids);
            }
        }

        // 删除
        function remove(id) {
            var mymessage = confirm("真的要删除吗？");
            if (mymessage == true) {
                var paramArray = [];
                if (id == ids) {
                    paramArray = id;
                } else {
                    paramArray.push(id);
                }
                httpJson("guanhuaifuwu/delete", "POST", paramArray, (res) => {
                    if(res.code == 0){
                        getDataList();
                        alert('删除成功');
                    }
                });
            } else {
                alert("已取消操作");
            }
        }

        // 用户登出
        <%@ include file="../../static/logout.jsp"%>

        //修改
        function edit(id) {
            window.sessionStorage.setItem('updateId', id)
            window.location.href = "add-or-update.jsp"
        }

        //清除会重复渲染的节点
        function clear() {
            var elements = document.getElementsByClassName('useOnce');
            for (var i = elements.length - 1; i >= 0; i--) {
                elements[i].parentNode.removeChild(elements[i]);
            }
        }

        //添加
        function add() {
            window.sessionStorage.setItem("addguanhuaifuwu", "addguanhuaifuwu");
            window.location.href = "add-or-update.jsp"
        }

        //报表
        function graph() {
            window.location.href = "graph.jsp"
        }

        // 查看详情
        function detail(id) {
            window.sessionStorage.setItem("updateId", id);
            window.location.href = "info.jsp";
        }


    //填充级联表搜索下拉框
                                         
                     
                                                                                                                         
                     
                                                                                                                                                                                    
    //填充本表搜索下拉框
                 
     
     
        function guanhuaifuwuTypesSelectSearch() {
            var guanhuaifuwuTypesSelectSearch = document.getElementById('guanhuaifuwuTypesSelectSearch');
            if(guanhuaifuwuTypesSelectSearch != null) {
                guanhuaifuwuTypesSelectSearch.add(new Option('-请选择-',''));
                if (guanhuaifuwuTypesOptions != null && guanhuaifuwuTypesOptions.length > 0){
                    for (var i = 0; i < guanhuaifuwuTypesOptions.length; i++) {
                            guanhuaifuwuTypesSelectSearch.add(new Option(guanhuaifuwuTypesOptions[i].indexName,guanhuaifuwuTypesOptions[i].codeIndex));
                    }
                }
            }
        }
                     
        function wanchengTypesSelectSearch() {
            var wanchengTypesSelectSearch = document.getElementById('wanchengTypesSelectSearch');
            if(wanchengTypesSelectSearch != null) {
                wanchengTypesSelectSearch.add(new Option('-请选择-',''));
                if (wanchengTypesOptions != null && wanchengTypesOptions.length > 0){
                    for (var i = 0; i < wanchengTypesOptions.length; i++) {
                            wanchengTypesSelectSearch.add(new Option(wanchengTypesOptions[i].indexName,wanchengTypesOptions[i].codeIndex));
                    }
                }
            }
        }
     
        function pingjiaTypesSelectSearch() {
            var pingjiaTypesSelectSearch = document.getElementById('pingjiaTypesSelectSearch');
            if(pingjiaTypesSelectSearch != null) {
                pingjiaTypesSelectSearch.add(new Option('-请选择-',''));
                if (pingjiaTypesOptions != null && pingjiaTypesOptions.length > 0){
                    for (var i = 0; i < pingjiaTypesOptions.length; i++) {
                            pingjiaTypesSelectSearch.add(new Option(pingjiaTypesOptions[i].indexName,pingjiaTypesOptions[i].codeIndex));
                    }
                }
            }
        }
            
    //查询级联表搜索条件所有列表

    //查询当前表搜索条件所有列表
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














        $(document).ready(function () {
            //激活翻页按钮
            $('#tableId_previous').attr('class', 'paginate_button page-item previous')
            $('#tableId_next').attr('class', 'paginate_button page-item next')
            //隐藏原生搜索框
            $('#tableId_filter').hide()
            //设置右上角用户名
            $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
            //设置项目名
            $('.sidebar-header h3 a').html(projectName)
            setMenu();
            init();

            //查询级联表的搜索下拉框

            //查询当前表的搜索下拉框
            guanhuaifuwuTypesSelect();
            wanchengTypesSelect();
            pingjiaTypesSelect();
            getDataList();

        //级联表的下拉框赋值
                                                 
                         
                                                                                                                                                 
                         
                                                                                                                                                                                                                        
        //当前表的下拉框赋值
                                                 
             
             
            guanhuaifuwuTypesSelectSearch();
                                                             
            wanchengTypesSelectSearch();
             
            pingjiaTypesSelectSearch();
                                    
        <%@ include file="../../static/myInfo.js"%>
    });
</script>
</body>

</html>
