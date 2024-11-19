<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <input type="text" id="mobile" maxlength="10" placeholder="enter your mobile number">
    <input type="button" value="submit" onclick="val()">
</body>
<script>
    function val(){
        var mobile=document.getElementById("mobile").value;
        var regx=/^[1-9]\d{9}$/
        if(mobile.trim==""){
            alert("please enter mobile number");
            return false;
        }
        else if((regx.test(mobile))){
            alert("mobile number submitted successfully")
        }else{
            alert("wrong mobile number");
        }
    }
</script>
</html>