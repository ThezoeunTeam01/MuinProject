/**
 * 
 */
 console.log("register js 접속....");
 $('#idCheck').click(function(){
   var id = $("#id").val();
   var userid = {"id":id};
   $.ajax({
      url:'../ajax/idCheck',
      type:'post',
      data:userid,
      error : function(request, error) {
                 alert(error + "\n" + request.status);      
              },
      success:function(result){
         if(id==''){
            alert("아이디를 입력해주세요");
         }                  
         else if(result==1){
            console.log(id)
            alert("중복되었습니다.");
         }else{
            console.log(id)
            alert("사용가능한 아이디 입니다.")
            $("#id").attr("readonly", true);
            $("#id").css("opacity","0.5");
         }
      }
   })
})
    