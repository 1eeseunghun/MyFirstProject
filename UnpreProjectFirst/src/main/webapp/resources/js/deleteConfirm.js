function delCheck(){
   var result = confirm("게시글을 삭제하시겠습니까?");
   if(result == true){
   alert("삭제되었습니다.");
   }
   else{
   alert("취소되었습니다.");
   return false;
   }
         
}