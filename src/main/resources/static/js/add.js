function add() {
    $.ajax({
        url: '${request.contextPath}/config/add',
        type: 'POST',
        data: {
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
        },
        success: function (data) {
           addViewClose();
        }
    });
}

function addViewClose() {
    document.getElementById('light').style.display = 'none';
    document.getElementById('fade').style.display = 'none';
}