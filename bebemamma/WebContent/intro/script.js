function inputCheck(){
	if(document.regFrm.id.value==""){
		alert("아이디를 입력해 주세요.");
		document.regFrm.id.focus();
		return ;
	}
	if(document.regFrm.pwd.value==""){
		alert("비밀번호를 입력해 주세요.");
		document.regFrm.pwd.focus();
		return ;
	}
	if(document.regFrm.repwd.value==""){
		alert("비밀번호를 확인해 주세요");
		document.regFrm.repwd.focus();
		return ;
	}
	if(document.regFrm.pwd.value != document.regFrm.repwd.value){
		alert("비밀번호가 일치하지 않습니다.");
		document.regFrm.repwd.value="";
		document.regFrm.repwd.focus();
		return ;
	}
	if(document.regFrm.mem_name.value==""){
		alert("본인의 이름을 입력해 주세요.");
		document.regFrm.mem_name.focus();
		return ;
	}
	if(document.regFrm.age.value==""){
		alert("아이의 나이를 입력해 주세요.");
		document.regFrm.age.focus();
		return ;
	}
	if(document.regFrm.mem_gender.value==""){
		alert("본인의 성별을 입력해 주세요.");
		document.regFrm.mem_gender.focus();
		return ;
	}
	if(document.regFrm.baby_name.value==""){
		alert("아이의 이름을 입력해 주세요.");
		document.regFrm.baby_name.focus();
		return ;
	}
	if(document.regFrm.baby_gender.value==""){
		alert("아이의 성별을 입력해 주세요.");
		document.regFrm.baby_gender.focus();
		return ;
	}
	document.regFrm.submit();
}

function win_close(){
	self.close();
}