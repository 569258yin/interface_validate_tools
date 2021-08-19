<!DOCTYPE html>
<html>

<head>
    <title>配置后台</title>
    <meta charset="UTF-8">

    <style type="text/css">
        .search_div {
            padding: 20px;
            display: inline-block;
        }

        .search_div input {
            height: 25px;
            width: 250px;
        }

        .search_div select {
            height: 25px;
            width: 80px;
        }

        .search_div button {
            background-color: cadetblue;
        }

        .search_head {
            background-color: gainsboro;
            padding: 10px;
            border-bottom: 2px solid royalblue;
        }

        .add_head {
            padding: 20px;
            float: right;

        }

        .add_head button {
            background-color: burlywood;
        }


        .head {
            padding: 20px;
            height: 140px;
            background-color: aliceblue;
        }

        button {
            width: 80px;
            height: 25px;
        }

        .div_body table {
            border-collapse: collapse;
            border: 1px solid;
            text-align: center;
            /*margin: 0 auto;*/
        }

        .div_body table tr {
            border: 1px solid;
        }

        .div_body table th {
            height: 30px;
            background-color: darkgray;
            border: 1px solid;
        }

        .div_body table td {
            height: 20px;
            border: 1px solid;
        }

        . div {
            padding: 5px;
        }

        .div_body button {
            margin: 5px;
            width: 80px;
            height: 30px;
        }

        .page-icon {
            margin-right: 50px;
            float: right;
            font-size: 0;
            text-align: center;
        }

        .page-icon a, .page-disabled, .page-next {
            border: 1px solid #ccc;
            border-radius: 3px;
            padding: 4px 10px 5px;
            font-size: 14px;
            margin-right: 10px;
        }

        .page-icon a {
            text-decoration: none;
            color: #005aa0;
        }

        .page-current {
            color: #ff6600;
            padding: 4px 10px 5px;
            font-size: 15px;
        }

        .page-disabled {
            color: #cccccc;
        }

        .page-next i, .page-disabled i {
            cursor: pointer;
            display: inline-block;
            width: 5px;
            height: 9px;
        }

        .page-disabled i {
            background-position: -80px -608px;
            margin-right: 3px;
        }


        .page-next i {
            background-position: -62px -608px;
            margin-right: 3px;
        }

    </style>
</head>

<body>


<div class="head">
    <div class="search_head">
        <div class="search_div">
            AppId: <input id="appIdBtn">
        </div>
        <div class="search_div">
            Method: <input id="methodBtn">
        </div>
        <div class="search_div">
            状态:
            <select id="statusSelect">
                <option>启用</option>
                <option>禁用</option>
            </select>
        </div>
        <div class="search_div">
            <button id="searchBtn">搜索</button>
        </div>
    </div>
    <div class="add_head">
        <div>
            <button id="addBtn">新增</button>
        </div>
    </div>
</div>
<br>
<br>
<div class="div_body">
    <table>
        <tr>
            <th>ID</th>
            <th>AppId</th>
            <th>Method</th>
            <th>类型</th>
            <th>老接口请求类型</th>
            <th>老接口请求方式</th>
            <th>老接口url</th>
            <th>新接口请求类型</th>
            <th>新接口请求方式</th>
            <th>新接口url</th>
            <th>状态</th>
            <th>校验结果查询</th>
            <th>自定义代码</th>
            <th>操作</th>
        </tr>
 <#list configs as config>
        <tr>
            <td>${config.id}</td>
            <td>${config.appId}</td>
            <td>${config.method}</td>
            <td>${config.type}</td>
            <td>${config.oldHttpType}</td>
            <td>${config.oldHttpMethod}</td>
            <td>${config.oldHttpUrl}</td>
            <td>${config.newHttpType}</td>
            <td>${config.newHttpMethod}</td>
            <td>${config.newHttpUrl}</td>
            <td>${config.status}</td>
            <td>
                <div>
                    <button id="resultBtn">查看结果</button>
                </div>
            </td>
            <td>
                <div>
                    <button id="divParamBtn">参数</button>
                    <button id="divResultBtn">结果</button>
                </div>
            </td>
            <td>
                <div>
                    <button id="updateBtn">修改</button>
                    <button id="deleteBtn">删除</button>
                </div>
            </td>
        </tr>
</#list>

    </table>
</div>

<br>
<br>
<div class="page-icon">
    <span class="page-disabled"><i></i>上一页</span>
    <span class="page-current">1</span>
    <a href="#">2</a>
    <a href="#">3</a>
    <a href="#">4</a>
    <a href="#">5</a>
    <a href="#">6</a>
    <a class="page-next" href="#">下一页<i></i></a>
</div>

</body>
</html>