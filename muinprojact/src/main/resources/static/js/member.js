
 console.log("member.js 접속");
 $(document).ready(function(e){
   $("#register").on("click", function(e){
      var regiForm = $("#muinRegiForm");
      var id = $("#id").val();
      var str = "";
      
      $(".showUploadfile div ul li").each(function(i, li){
         var jli = $(li);
         
         str += "<input type='hidden' name='fileList["+i+"].fileName' value='"+jli.data("filename")+"'>";
         str += "<input type='hidden' name='fileList["+i+"].uuid' value='"+jli.data("uuid")+"'>";
         str += "<input type='hidden' name='fileList["+i+"].uploadPath' value='"+jli.data("uploadpath")+"'>";
         str += "<input type='hidden' name='fileList["+i+"].id' value='"+id+"'>";
      });
      regiForm.append(str);
      regiCheck();
   });
   
   
   
   $("#memberUpdate").on("click", function(e){
	  var updateForm = $("#memberUpdateForm");
      var id = $("#id").val();
      var str = "";
      
      $(".showUploadfile div ul li").each(function(i, li){
         var jli = $(li);
         
         str += "<input type='hidden' name='fileList["+i+"].fileName' value='"+jli.data("filename")+"'>";
         str += "<input type='hidden' name='fileList["+i+"].uuid' value='"+jli.data("uuid")+"'>";
         str += "<input type='hidden' name='fileList["+i+"].uploadPath' value='"+jli.data("uploadpath")+"'>";
         str += "<input type='hidden' name='fileList["+i+"].id' value='"+id+"'>";
      });
      updateForm.append(str);
      memberUpdateCheck();
   });
});   // ready end
   