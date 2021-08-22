<!DOCTYPE html>
<html>

<head>
    <title>配置后台</title>
    <meta charset="UTF-8">
    <script src="https://common.cnblogs.com/scripts/jquery-2.2.0.min.js"></script>
    <script src="js/table.js"></script>
    <script src="js/index.js"></script>
    <link rel="stylesheet" type="text/css" href="css/index.css">
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
            <button id="addBtn" onclick="addVieShow()">新增</button>
        </div>
    </div>
</div>
<br>
<br>
<div class="div_body">
    <table>
        <tr>
            <th class="column-id">ID</th>
            <th class="column-appId">AppId</th>
            <th class="column-method">Method</th>
            <th class="column-type">类型</th>
            <th class="column-i-type">老接口请求类型</th>
            <th class="column-i-method">老接口请求方式</th>
            <th class="column-i-url">老接口url</th>
            <th class="column-i-type">新接口请求类型</th>
            <th class="column-i-method">新接口请求方式</th>
            <th class="column-i-url">新接口url</th>
            <th class="column-status">状态</th>
            <th class="column-result">校验结果查询</th>
            <th class="column-diy">自定义代码</th>
            <th class="column-operate">操作</th>
        </tr>
        <#list page.content as config>
            <tr>
                <td class="column-id">${config.id}</td>
                <td class="column-appId">${config.appId}</td>
                <td class=column-method">${config.method}</td>
                <td class="column-type">${config.type}</td>
                <td class=column-i-type">${config.oldHttpType}</td>
                <td class="column-i-method">${config.oldHttpMethod}</td>
                <td class="column-i-url">${config.oldHttpUrl}</td>
                <td class=column-i-type">${config.newHttpType}</td>
                <td class="column-i-method">${config.newHttpMethod}</td>
                <td class="column-i-url">${config.newHttpUrl}</td>
                <td class="column-status">${config.status}</td>
                <td class="column-result">
                    <div>
                        <button id="resultBtn">查看结果</button>
                    </div>
                </td>
                <td class="column-diy">
                    <div >
                        <button class="leftBtn"  id="divParamBtn">参数</button>
                        <button class="rightBtn" id="divResultBtn">结果</button>
                    </div>
                </td>
                <td class="column-operate">
                    <div>
                        <button class="leftBtn" id="updateBtn">修改</button>
                        <button class="rightBtn" id="deleteBtn">删除</button>
                    </div>
                </td>
            </tr>
        </#list>

    </table>
</div>

<br>
<br>
<div id="" class="page-icon">
    <#if page.totalPages = 0>
        <span class="page1">
                <span class="page-disabled"><<${message("page.first")}</span>
                <span class="page-disabled"><${message("page.previous")}</span>
                <span class="page-disabled">${message("page.next")}></span>
                <span class="page-disabled">${message("page.last")}>></span>
            </span>

    <#else>
        <span class="page1">
                <a name="" href="?pageNum=1" class=""><i></i>${message("page.first")}</a>
                <#if page.hasPrevious()>
                    <a name="" href="?pageNum=${page.number - 1}"
                       class="page-next"><i></i>${message("page.previous")}</a>
                <#else>
                    <span class="page-disabled"><i></i>${message("page.previous")}</span>
                </#if>
        </span>
        <span class="page2">
                <#if page.totalPages gt 4 >
                    <#if pageable.pageNumber gt 2 && pageable.pageNumber < page.totalPages - 1>

                        <#list pageable.pageNumber - 2.. pageable.pageNumber + 2 as m>

                            <a name="" href="?pageNum=${m}" class="">

                                <#if pageable.pageNumber = m>
                                    <span class="page-current">${m}</span>
                                <#else>

                                    ${m}

                                </#if>

                            </a>

                        </#list>

                    </#if>

                    <#if pageable.pageNumber < 3 >

                    <#list 1.. 5 as m>
                        <a name="" href="?pageNum=${m}" class="">
                                <#if pageable.pageNumber = m>
                                    <span class="page-current">${m}</span>
                                <#else>
                                    ${m}
                                </#if>
                        </a>

                    </#list>

                </#if>

                    <#if pageable.pageNumber gt page.totalPages - 2 >
                    <#list page.totalPages - 4.. page.totalPages as m>
                        <a name="changePage" href="?pageNum=${m}" class="">
                                <#if pageable.pageNumber = m>
                                    <span class="page-current">${m}</span>
                                <#else>
                                    ${m}
                                </#if>
                            </a>
                    </#list>

                </#if>

                </#if>

            <#if page.totalPages < 5 >

                <#list 0.. page.totalPages - 1 as m>

                    <a name="" href="?pageNum=${m}" class="">

                            <#if pageable.pageNumber = m>
                                <span class="page-current">${m+1}</span>
                            <#else>
                                ${m+1}
                            </#if>

                        </a>

                </#list>

            </#if>

            </span>

        <span>

                <#if page.hasNext()>
                    <a name="page-next" href="?pageNum=${page.number + 1}" class="">${message("page.next")}<i></i></a>
                <#else>
                    <span class="page-disabled">${message("page.next")}<i></i></span>
                </#if>
                    <a name="" href="?pageNum=${page.totalPages}" class="">${message("page.last")}<i></i></a>
            </span>

    </#if>

</div>

<div id="light" class="white_content"></div>
<div id="fade" class="black_overlay"></div>


</body>
</html>