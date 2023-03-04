function check(){  
   var result = confirm("게시글을 등록하시겠습니까?");
   
         if(writeboard.category.value == ""){
            alert("카테고리를 선택해 주세요.");
            writeboard.category.focus();
            return false;
         }
         else if (writeboard.title.value == 0){
            alert("제목을 작성해 주세요.");
            writeboard.title.focus();
            return false;
         }
         else if(result == true){
            alert("등록되었습니다.");
            
            }
            else{
           alert("취소되었습니다.");
            return false;   
   }
}
