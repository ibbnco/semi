/**
 * 
 */
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