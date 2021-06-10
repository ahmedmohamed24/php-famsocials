/* $(document).ready(()=>{
    $("#sendMail").click(sendMail);//on clicking the sending button for emailing 


})
function sendMail(){
    $("#messageAlert").innerHTML="";
    let name=$("#sendMailName")[0].value;
    let mail=$("#senMailMail")[0].value;
    let msg=$("#sendMsgContacts")[0].value;
    let req=new XMLHttpRequest();
    req.onreadystatechange=function(){
        if(this.readyState===4 && this.status===200){
            if(this.response==="true"){
                Swal.fire(
                    'Good job!',
                    'Email Sent!',
                    'success'
                  )
            }
            else{
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: this.response +'!',
                  })
            }
        }
    }
    req.open("POST","mailHandle.php",true);
    req.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
    req.send("name="+name+"&mail="+mail+"&msg="+msg);
} */