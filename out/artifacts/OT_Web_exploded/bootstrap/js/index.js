// JavaScript Document
$(document).ready(function(e) {
    $(".middle>.cont>.class>ul>a").on("click",function(){
		$(this).addClass("net");
		$(this).siblings("a").removeClass("net");
		});
});
$(document).ready(function(e) {
    $(".middle>.cont>.class>ul>.net").on("click",function(){
		$(".all1").fadeIn();
		$(".all2,.all3,.all4,.all5").hide();
		});
});
$(document).ready(function(e) {
    $(".middle>.cont>.class>ul>._all2").on("click",function(){
		$(".all2").fadeIn();
		$(".all1,.all3,.all4,.all5").hide();
		});
});
$(document).ready(function(e) {
    $(".middle>.cont>.class>ul>._all3").on("click",function(){
		$(".all3").fadeIn();
		$(".all1,.all2,.all4,.all5").hide();
		});
});
$(document).ready(function(e) {
    $(".middle>.cont>.class>ul>._all4").on("click",function(){
		$(".all4").fadeIn();
		$(".all1,.all2,.all3,.all5").hide();
		});
});
$(document).ready(function(e) {
    $(".middle>.cont>.class>ul>._all5").on("click",function(){
		$(".all5").fadeIn();
		$(".all2,.all3,.all4,.all1").hide();
		});
});
function submitTest() {
    var msg = "表单数据的获取：\n";
    var matchResult=true;
    msg += "用户名:";
    var username = document.getElementById("input1").value;
    msg += username;
    msg += "，\n 密码：";
    var psw = document.getElementById("input2").value;
    msg += psw;
    alert(msg); 
    if(username==""||psw==""){alert("请正确输入用户名和密码！")}
    return matchResult;
}
function submitTest1() {
var usename=document.getElementById("account").value;
//document.writeln(usename);
var password=document.getElementById("psw1").value;
//document.writeln(password);
var password1=document.getElementById("checkpsw1").value;
if(usename.length==0){
  alert("用户名不能为空");
  return false;
}
if(usename.length<4){
  alert("用户名不能小于4个字符");
  return false;
}
if(usename.length>20){
  alert("用户名不能大于20个字符");
  return false;
}
if(password.length==0){
  alert("密码不能为空");
  return false;
}
if(password.length<6){
  alert("密码不能小于6个字符");
  return false;
}
if(password.length>20){
  alert("密码不能大于20个字符");
  return false;
}
for (var i =0; i <= password.length; i++) {
  if(password[i]!=password1[i]){
      alert("密码和确认密码必须相同");
      return false;
  }
}
if(password1.length==0){
  alert("确认密码不能为空");
  return false;
}
return true;
}
