const today = new Date();
let notific=[]; //notifications array 
let notifIndex=0; // for looping on the notifications 
let offset=0;//related with views loading

$(document).ready(()=>{

    $(".toggle-nav").click(()=>{
        $("#sm-nav-socials").toggleClass("show-sm-nav");
        $(".sm-nav-menu").toggleClass("show-sm-nav");
        $(".sm-nav").toggleClass("bg-sm-nav");
    })
    
    
   
   
    //when is loaded 
    //hide the spinner
    $(".spinnerContainer").css("display","none");
    $("body").css({ "overflow-y": "scroll "});
    $("body").css({ "overflow-x": "hidden"});
    
    //opening chat window 
    $(".chatIcon").click(()=>{
        $(".chatIcon").toggleClass("chatIconAnimation")
        $("#chatContainer").toggleClass("chatContainerAnimation");
    })
    // on clicking on log in button     
    $('#login')[0].addEventListener("click",logIn);
    
    // submitting reviews 
    $("#submitReview").click(submitReview);
       
    
       
       scroll();
       //loading reviews data from database 
       loadReviews();
       if($( window ).width()>600){// display only on medium and large screens 
           getNotifications(); //getting the notifications from database
       }
})
   
function scroll(){
    let windowWidth=$( window ).width();
    window.onresize = function() {
        windowWidth=$( window ).width();
    }
    const navTop=$("#nav-main").offset().top;
    
    $(window).scroll(()=>{
     windowTop=$(window).scrollTop();
     if(windowWidth>=661){ //large and medium Screens 
         if(windowTop>=navTop){
             $("#nav-main").addClass("fixed-top");
             $("#nav-main").css({"background-color":"#fff"});
             $(".nav-link-fixed").removeClass("text-light");
         }else{
             $("#nav-main").removeClass("fixed-top");
             $("#nav-main").css({"background-color":"transparent"});
             $(".nav-link-fixed").addClass("text-light");
         }
     }
     else{
         if(windowTop>=10){
             $(".sm-nav").addClass("bg-light");
         }else{
             $(".sm-nav").removeClass("bg-light");
         }
     }
 })
    
}
   
function displayMessagesContainer(){
    let disMsg=new XMLHttpRequest();
    disMsg.onreadystatechange=function(){
        if(this.readyState===4 && this.status==200){
                if(!(this.response === null || this.response=== "null")){
                    let msgs=JSON.parse(this.response);
                    $(".prev-msgs")[0].innerHTML="";
                    for(let i=0;i<msgs.length;i++){
                        let messageElement=document.createElement("textarea");
                        messageElement.innerHTML=stripSlashes(msgs[i]["message"]);
                        messageElement.classList.add("prevMsgs");
                        if(msgs[i]["sender"]==="0"){
                            messageElement.classList.add("bg-success");
                            messageElement.classList.add("text-light");
                        }
                        else if(msgs[i]["sender"]==="1"){
                            messageElement.classList.add("bg-white");
                            messageElement.classList.add("text-dark");
                        }
                        messageElement.classList.add("form-control");
                        messageElement.setAttribute("disabled","disabled");
                        $(".prev-msgs")[0].appendChild(messageElement);
                    }
                    //to be fixed at the input button
                    $(".msg-container").scrollTop(60000);
                }
                
                
        }
    }
    disMsg.open("POST","user/displayMsg.php",true);
    disMsg.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
    disMsg.send();
}
function logIn(){
    let req=new XMLHttpRequest();
    let userName=$('#uName')[0].value;
    let userMail=$('#uMail')[0].value;
    req.onreadystatechange=function(){
        if(this.readyState===4 && this.status===200){
            if(this.response==="true")
            {
                //display message container and hide log container
               $(".login-container").css("display","none");
               $(".msg-container").css("display","block");
               
               // display the container of chat and refresh it for every 3s
               displayMessagesContainer();
                sendMessage();//give event to send message button 
               
               
            }
            else{
                $("#loginAlert").addClass("alert alert-danger d-block mt-2");
                $("#loginAlert").css("visibility","visible");
                $("#loginAlert").text(this.responseText);
            }
        }
        else{
            //failed to connect 
            
        }
    }
    req.open("POST","user/logAuth.php",true);
    req.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
    req.send("name="+userName+"&mail="+userMail);
}
//here we get the event of click
function sendMessage(){
    //two ways for sending messages 
    //with icon click or enter 
    $(".msgIcon").click(()=>{sendMsg();})
}
//here we fire the function itself 
function sendMsg(){
    $("#msgAlert").css("visibility","hidden");
        let message=$("#msg")[0].value;
        let msgReq=new XMLHttpRequest();
        msgReq.onreadystatechange=function(){
            if(this.readyState===4 && this.status==200){
                if(this.responseText.substr(0,5)=="Error" || this.responseText==="please Enter the message "){
                    //no message Entered
                    $("#msgAlert").addClass("alert alert-danger d-block mt-2");
                    $("#msgAlert").css("visibility","visible");
                    $("#msgAlert").text(this.responseText);
                    displayMessagesContainer();
                }else{                   
                    $("#msg")[0].value="";
                }
                
            }
        }
        t0=setInterval(()=>{displayMessagesContainer();},2000);
        msgReq.open("POST","user/sendMsg.php",true);
        msgReq.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
        msgReq.send(`msg=${message}`);
        
}
function stripSlashes(str)
	{
		return str.replace(/\\/g, '');
}
function loadReviews(){

    let req=new XMLHttpRequest();
        req.onreadystatechange=function(){
            if(this.readyState===4 && this.status==200){
                if(this.response!=="null"){
                    let reviews=JSON.parse(this.response);
                    for(let review of reviews){
                        let reviewContainer=document.createElement("DIV");
                        reviewContainer.classList.add("col-md-6");
                        switch(review["stars"]){
                            case '1':
                                reviewContainer.innerHTML=`
                                <div class="reviewContainer rounded-lg bg-light p-4 mb-3 h-100">
                                    <h3 class="reviewName mb-3">${review["name"]}</h3>
                                    <p class="reviewDesc text-secondary text-left my-4">${review["review"]}</p>
                                    <span class='text-golden'>
                                        <img src='images/star-gold.svg' alt='golden star svg icon'/>
                                        <img src='images/star-black.svg' alt='black star svg icon'/>
                                        <img src='images/star-black.svg' alt='black star svg icon'/>
                                        <img src='images/star-black.svg' alt='black star svg icon'/>
                                        <img src='images/star-black.svg' alt='black star svg icon'/>
                                    </span>
                                </div>
                                `;
                            break;
                            case '2':
                                reviewContainer.innerHTML=`
                                <div class="reviewContainer rounded-lg bg-light p-4 mb-3 h-100">
                                    <h3 class="reviewName  mb-3">${review["name"]}</h3>
                                    <p class="reviewDesc text-secondary text-left my-4">${review["review"]}</p>
                                    <span class='text-golden'>
                                        <img src='images/star-gold.svg' alt='golden star svg icon'/>
                                        <img src='images/star-gold.svg' alt='golden star svg icon'/>
                                        <img src='images/star-black.svg' alt='black star svg icon'/>
                                        <img src='images/star-black.svg' alt='black star svg icon'/>
                                        <img src='images/star-black.svg' alt='black star svg icon'/>
                                    </span>
                                </div>
                                `;
                            break;
                            case '3':
                                reviewContainer.innerHTML=`
                                <div class="reviewContainer rounded-lg bg-light p-4 mb-3 h-100">
                                    <h3 class="reviewName   mb-3">${review["name"]}</h3>
                                    <p class="reviewDesc text-secondary text-left my-4">${review["review"]}</p>
                                    <span class='text-golden'>
                                        <img src='images/star-gold.svg' alt='golden star svg icon'/>
                                        <img src='images/star-gold.svg' alt='golden star svg icon'/>
                                        <img src='images/star-gold.svg' alt='golden star svg icon'/>
                                        <img src='images/star-black.svg' alt='black star svg icon'/>
                                        <img src='images/star-black.svg' alt='black star svg icon'/>
                                    </span>
                                </div>
                                `;
                            break;
                            case '4':
                                reviewContainer.innerHTML=`
                                <div class="reviewContainer rounded-lg bg-light p-4 mb-3 h-100">
                                    <h3 class="reviewName  mb-3">${review["name"]}</h3>
                                    <p class="reviewDesc text-secondary text-left my-4">${review["review"]}</p>
                                    <span class='text-golden'>
                                        <img src='images/star-gold.svg' alt='golden star svg icon'/>
                                        <img src='images/star-gold.svg' alt='golden star svg icon'/>
                                        <img src='images/star-gold.svg' alt='golden star svg icon'/>
                                        <img src='images/star-gold.svg' alt='golden star svg icon'/>
                                        <img src='images/star-black.svg' alt='black star svg icon'/>
                                   </span>
                                </div>
                                `;
                            break;
                            default:
                                reviewContainer.innerHTML=`
                                <div class="reviewContainer rounded-lg  bg-light p-4 mb-3 h-100">
                                    <h3 class="reviewName mb-1">${review["name"]}</h3>
                                    <p class="reviewDesc text-secondary text-left my-4">${review["review"]}</p>

                                    <span class='text-golden'>
                                        <img src='images/star-gold.svg' alt='golden star svg icon'/>
                                        <img src='images/star-gold.svg' alt='golden star svg icon'/>
                                        <img src='images/star-gold.svg' alt='golden star svg icon'/>
                                        <img src='images/star-gold.svg' alt='golden star svg icon'/>
                                        <img src='images/star-gold.svg' alt='golden star svg icon'/>
                                    </span>                                    
                                </div>
                                `;
                            break;

                        }      
                        $(".reviewsContainer")[0].appendChild(reviewContainer);
                    }
                }
                
            }
        }
        req.open("POST","user/loadReviews.php",true);
        req.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
        req.send(`offset=${offset}`);
        offset++;
}
function submitReview(){
    let name=document.getElementsByName("reviewerName")[0].value;
    let review=document.getElementsByName("reviewDesc")[0].value;
    let stars=document.getElementsByName("star");
    let starsValue;
    for(let i=0;i<stars.length;i++){
        if(stars[i].checked){
            starsValue=stars[i].value;
        }
        
    }
     let req=new XMLHttpRequest();
        req.onreadystatechange=function(){
            if(this.readyState===4 && this.status==200){
              if(this.responseText.includes("Done")){
                Swal.fire(
                'Done !',
                'Wait the admin Approval!',
                'success'
                )
              }
              else{
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: `${this.responseText}`,
                    footer: `Something went wrong!`
                  })
              }
              
            }
        }
    req.open("POST","user/addReview.php",true);
    req.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
    req.send(`name=${name}&review=${review}&stars=${starsValue}`); 
        
}

function getNotifications(){

    let req=new XMLHttpRequest();
    req.onreadystatechange=function(){
        if(this.readyState===4 && this.status===200){
            let notifications=JSON.parse(this.response);
            for(let notification of notifications){
                notific.push(notification);
            }
            setTimeout(displayNotifications,4000); // timer for displaying the notifications 
        }
    }
    req.open("POST","user/notifications.php",true);
    req.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
    req.send("");
}
function displayNotifications(){
    const notification=$(".notification")[0];
    const notificationHeader=$(".notificationHeader")[0];
    const notificationAmt=$(".notificationAmt")[0];
    const notificationDate=$(".notificationDate")[0];
    
    notification.classList.remove("notificationHide");
    notificationHeader.innerHTML=notific[notifIndex]["notification"];
    notificationAmt.innerHTML=notific[notifIndex]["amt"];
    notificationDate.innerHTML=notific[notifIndex]["TIME"];

    notification.classList.add("notificationShow");
    if(notifIndex+1>=16){
        notifIndex=0;
    }else{
        notifIndex++;
    }
    setTimeout(hideNotifications,8000);
}
function hideNotifications(){
    const notification=$(".notification")[0];
    notification.classList.remove("notificationShow");
    notification.classList.add("notificationHide");
    setTimeout(displayNotifications,10000);

}

