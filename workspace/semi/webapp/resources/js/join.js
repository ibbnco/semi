/**
 * 
 */
	const memberIdTag = document.querySelector("input[name=memberId]");
    function checkId() {
        //아이디
        //아이디  value랑 정규식 검사하기
        const memberId = memberIdTag.value; 
        const regExp = /[a-zA-Z0-9]{6,12}$/;
        const result = regExp.test(memberId);
        
        if(result){
            alert("사용가능한 아이디 입니다.");
        }else{
            alert("사용이 불가능한 아이디 입니다.")
        }
    }

    let isPwdOk = false;
    let isEmailOk = false;

    const pwd1 = document.querySelector("input[name=memberPwd1]");
    const pwd2 = document.querySelector("input[name=memberPwd2]");
    const pwdResult = document.querySelector("#pwd-result");

    pwd2.addEventListener("blur",()=>{
        if (pwd1.value === pwd2.value) {
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
    

    function checkValid() {
        if (!isPwdOk) {
            alert("비밀번호를 확인하세요");
            return false;
        } 
			return true;
    }
    
  