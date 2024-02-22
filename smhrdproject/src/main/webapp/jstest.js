$(document).ready(function(){
    $("#executeSelectR").click(function(){
        $.ajax({
            type: "GET",
            url: "com/smhrd3/resultcontroller/selectR",
            success: function(response){
                // 서블릿에서 반환된 데이터(response)를 처리
                // 예를 들어, 반환된 데이터를 콘솔에 출력하거나 화면에 표시할 수 있음
                console.log(response);
            },
            error: function(xhr, status, error){
                alert("Error occurred while processing your request.");
            }
        });
    });
});