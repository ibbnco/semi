/**
 * 
 */
	const memberIdTag = document.querySelector("input[name=memberId]");
    function checkId() {
        //아이디
        //아이디  value랑 정규식 검사하기
        const memberId = memberIdTag.value; 
        const regExp = /^[a-z]+[a-z0-9]{5,11}$/g;
        const result = regExp.test(memberId);
        
        if(result){
            alert("사용가능한 아이디 입니다.");
        }else{
            alert("사용이 불가능한 아이디 입니다.")
        }
    }

    let isPwdOk = false;
    

    const pwd = document.querySelector("input[name=memberPwd]");
    const pwd2 = document.querySelector("input[name=memberPwd2]");
    const pwdResult = document.querySelector("#pwd-result");

    pwd2.addEventListener("blur",()=>{
        if (pwd.value === pwd2.value) {
            isPwdOk = true;
            pwdResult.innerText = "비밀번호가 일치합니다.";
            pwdResult.classList.remove("red-color");
            pwdResult.classList.add("blue-color");
        }else{
            isPwdOk = false;
            pwdResult.innerText = "비밀번호가 불일치합니다.";
            pwdResult.classList.remove("blue-color");
            pwdResult.classList.add("red-color");
        }
    });
    

   
 /*  //test
    function joinMember() {
		
		var joinForm = document.joinForm;
		var name = joinForm.name.value;
		var id = joinForm.id.value;
		var pwd1 = joinForm.pwd1.value;
		var pwd2 = joinForm.pwd2.value;
		var nick = joinForm.nick.value;
		var email = joinForm.email.value;
		var tel = joinForm.tel.value;
		
		if(name.length == 0 || name == ""){
			alert("이름을 입력해주세요.");
			joinForm.name.focus();
		}else if (id.length == 0 || id == ""){
			alert("아이디를 입력해주세요.");
			joinForm.id.focus();
		}else if (joinForm.idDuplication.value!= "idCheck"){
			alert("아이디 중복체크를 해주세요.");
		}else if (pwd1.length == 0 || pwd1 == ""){
			alert("비밀번호를 입력해주세요.");
			joinForm.pwe1.focus();
		}else if (pwd2.length == 0 || pwd2 == ""){
			alert("비밀번호를 다시 입력해주세요.");
			joinForm.pwd2.focus();
		}else if (pwd2 != pwd1){
			alert("비밀번호가 일치하지 않습니다.");
			joinForm.pwd2.focus();
		}else if (nick.length == 0 || nick == ""){
			alert("닉네임을 입력해주세요.");
			joinForm.nick.focus();
		}else if (email.length == 0 || email == ""){
			alert("이메일을 입력해주세요.");
			joinForm.email.focus();
		}else if (tel.length == 0 || tel == ""){
			alert("전화번호를 입력해주세요.");
			joinForm.tel.focus();
		}else {
			joinForm.method = "post";
			joinForm.action = "${contextPath}/member/joinMember.do"
		}
		
	}
	
	function dbCheckId(){
		var joinForm = document.joinForm;
		var id = joinForm.id.value;
		if(id.length==0 || id == ""){
			alert("아이디를 입력해주세요.");
			joinForm.id.focus();
		}else{
			Window.open("${contextPath}/member/dbCheckId.do?memberId="+id,"","width = 500","height=300");
		}
	}
  */