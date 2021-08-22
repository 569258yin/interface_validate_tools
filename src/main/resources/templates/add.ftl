<!DOCTYPE html>
<html>

<head>
    <title>新增</title>
    <meta charset="UTF-8">

    <style type="text/css">
        .model, .model div {
            display: inline-block;
            padding: 5px;
        }

        span {
            height: 30px;
        }

        input, select {
            background-color: gainsboro;
            height: 30px;
        }

        select {
            width: 60px;
        }

        button {
            margin: 10px;
            width: 80px;
            height: 30px;
        }
    </style>
</head>


<body style="width: 1000px">

<div style="margin: 10px; height: 50px">
    <a>一致性校验配置</a>
    <a style="float: right" href="#">配置文档参考</a>
</div>


<hr style="height:1px;border:none;border-top:1px solid #555555;"/>

<div style="height: 150px; padding: 10px">
    <div class="model">
        <div>
            <span>AppId:</span><input style="width: 240px" id="appIdBtn" value="${(config.appId)!''}">
        </div>
        <div><span>Method:</span><input style="width: 300px" id="methodBtn" value="${(config.method)!''}"></div>
        <div><span>类型:</span>
            <select id="typeBtn">
                <#list typeSelect as type>
                    <option value="${type.id}" <#if type.id == config.type!-1>selected</#if> >${type.value}</option>
                </#list>
            </select>
        </div>
        <div><span>状态:</span>
            <select id="statusBtn">
                <option>启用</option>
                <option>禁用</option>
            </select>
        </div>
    </div>
    <div class="model">
        <div><span>老接口调用类型:</span><select id="oldITypeBtn">
                <option>Feign</option>
                <option>LB</option>
            </select></div>
        <div><span>老接口调用方式:</span>
            <select id="oldIMethodBtn">
                <option>GET</option>
                <option>POST</option>
                <option>PUT</option>
                <option>DELETE</option>
            </select></div>
        <div><span>老接口URL:</span><input style="width: 400px" id="oldIUrlBtn"></div>
    </div>
    <div class="model">
        <div><span>新接口调用类型:</span>
            <select id="newITypeBtn">
                <option>Feign</option>
                <option>LB</option>
            </select></div>
        <div><span>新接口调用方式:</span>
            <select id="newIMethodBtn">
                <option>GET</option>
                <option>POST</option>
                <option>PUT</option>
                <option>DELETE</option>
            </select></div>
        <div><span>新接口URL:</span><input style="width: 400px" id="newIUrlBtn"></div>
    </div>
</div>
<hr style="height:1px;border:none;border-top:1px solid #555555;"/>
<div style="height: 300px; padding: 10px">
    <div class="model">
        <div><span>全局忽略字段:</span><input style="width: 350px" id="ignoreBtn"></div>
        <div><span>精准忽略字段:</span><input style="width: 350px" id="ignoreLevelBtn"></div>
    </div>
    <div class="model">
        <div><span>数组唯一配置:</span><input style="width: 350px" id="array2MapKeyBtn"></div>
        <div><span>数组唯一值忽略大小写:</span>
            <select id="array2MapKeyIgnoreCaseBtn">
                <option>true</option>
                <option>false</option>
            </select>
        </div>
    </div>
    <div class="model">

        <div><span>字段映射:</span><input style="width: 380px" id="fieldMapBtn"></div>
        <div>
            <span>全局字段忽略大小写:</span>
            <select id="ignoreCaseBtn">
                <option>true</option>
                <option>false</option>
            </select>
        </div>
    </div>
    <div class="model">
        <div><span>字符串转数值配置:</span><input style="width: 320px" id="str2NumBtn"></div>
        <div>
            <span>字符串NULL转空字符:</span>
            <select id="str2EmptyBtn">
                <option>true</option>
                <option>false</option>
            </select>
        </div>
        <div>
            <span>字符串去除左右空格:</span>
            <select id="trimStrBtn">
                <option>true</option>
                <option>false</option>
            </select>
        </div>
    </div>
    <div class="model">
        <div><span>时间格式化配置:</span><input style="width: 320px" id="timeFormatBtn"></div>
        <div>
            <span>数值小数点配置:</span>
            <select id="numScaleBtn">
                <option>true</option>
                <option>false</option>
            </select>
        </div>
        <div>
            <span>数值NULL转成0:</span>
            <select id="num2ZeroBtn">
                <option>true</option>
                <option>false</option>
            </select>
        </div>
    </div>
</div>
<hr style="height:1px;border:none;border-top:1px solid #555555;"/>
<div style="height: 100px; padding: 10px">
    <div class="model">
        <div><span>每小时不一致数量上限:</span><input style="width: 50px" id="diffResultSizeBtn"></div>
        <div><span>通知邮件频率:</span>
            <select id="noticeEmailTimeBtn">
                <option>1</option>
                <option>2</option>
                <option>3</option>
            </select>
        </div>
        <div><span>校验成功是否通知:</span>
            <select id="noticeSuccessBtn">
                <option>true</option>
                <option>false</option>
            </select>
        </div>
    </div>
    <div>
        <div style="padding: 10px">
            <span>通知邮件账号:</span><input style="width: 800px" id="noticeEmailAccountBtn">
        </div>
    </div>
</div>
<hr style="height:1px;border:none;border-top:1px solid #555555;"/>
<div style="padding: 10px;height: 20px;text-align: center">
    <button style="background-color: burlywood;margin-right: 120px" id="cancelBtn" href="javascript:void(0)"
            onclick="addViewClose()">取消
    </button>
    <button style="background-color: #ff6600;margin-left: 120px" id="saveBtn" href="javascript:void(0)" onclick="add()">
        保存
    </button>
</div>

<script src="https://common.cnblogs.com/scripts/jquery-2.2.0.min.js"></script>
<script type="application/javascript">
    function add() {
        $.ajax({
            url: '../config/add',
            type: 'POST',
            dataType: 'json',
            contentType: "application/json",
            headers: {

            },
            data: JSON.stringify({
                'id': $('#id').val(),
                'appId': $('#appIdBtn').val(),
                'method': $('#methodBtn').val(),
                'type': $('#typeBtn').val(),
                'status': $('#statusBtn').val(),
                'oldHttpType': $('#oldITypeBtn').val(),
                'oldHttpMethod': $('#oldIMethodBtn').val(),
                'oldHttpUrl': $('#oldIUrlBtn').val(),
                'newHttpType': $('#oldITypeBtn').val(),
                'newHttpMethod': $('#oldIMethodBtn').val(),
                'newHttpUrl': $('#oldIUrlBtn').val()
            }),
            success: function (data) {
                addViewClose();
            }
        });
    }
</script>
</body>

</html>