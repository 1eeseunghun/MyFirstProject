function checkAgree(){
		var agreement1 = document.getElementById('agreement1');
        var agreement2 = document.getElementById('agreement2');
        if(agreement1.checked == false) {
            alert("필수항목동의")
            return false;
        }else if(agreement2.checked == false){
        alert("필수항목동의")
        	return false;
            }
        }
        
