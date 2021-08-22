<html>
<body>
<div>

    <div>

        <table>

            <#list page.content as pageContent>

                <tr>

                    <td>

                        <span>${pageContent.id}</span>

                    </td>

                </tr>

            </#list>

        </table>

    </div>

    <div id="" class="page-icon">
        <#if page.totalPages = 0>
            <span class="page1">
                <a class="  "><<${message("page.first")}</a>
                <a class="  "><${message("page.previous")}</a>
                <a class="  ">${message("page.next")}></a>
                <a class="  ">${message("page.last")}>></a>
            </span>

        <#else>
        <span class="page1">
                <a name="" href="?pageNum=1" class=""><<${message("page.first")}</a>
                <#if page.hasPrevious()>
                    <a name="" href="?pageNum=${page.number - 1}" class="page-next"><${message("page.previous")}</a>
                <#else>
                    <a class="page-disabled"><${message("page.previous")}</a>
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
                    <a name="page-next" href="?pageNum=${page.number + 1}" class="">${message("page.next")}></a>
                <#else>
                    <a class="page-next">${message("page.next")}></a>
                </#if>
                    <a name="" href="?pageNum=${page.totalPages}" class="">${message("page.last")}>></a>
            </span>

        </#if>

    </div>

</div>
</body>
</html>