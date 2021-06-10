
let t0; //variable for the timer 
$(document).ready(()=>{
    
    //when document is ready
    $(".spinnerContainer").css("display","none");
    $("body").css("overflow","auto");
    /* 
        1-display side bar container
        2-add click event to side toggle button 
        3- display chats in side bar 
        4- add their events 
    */
    $(".asideIcon").click(toggleSideBar);
    displaySideBarChats();
    
    $(".close-chat").click(closeChatContainer);
})
function displaySideBarChats(){
    let req=new XMLHttpRequest();
    req.onreadystatechange=function(){
        if(this.readyState===4 && this.status===200){
            let msgs=JSON.parse(this.response);
            $(".msg-item-container")[0].innerHTML="";
            if(msgs===null || msgs===undefined){
                //no messages to view 
                let msgCon=document.createElement("a");
                msgCon.classList.add("msg-item");
                msgCon.classList.add("d-block");
                msgCon.classList.add("mb-2");
                msgCon.classList.add("text-danger");
                msgCon.innerHTML="no messages";
                $(".msg-item-container")[0].appendChild(msgCon);
            }else{
            for(let msg of msgs){
                //create elements to view messages senders 
                
                let msgCon=document.createElement("a");
                msgCon.classList.add("msg-item");
                msgCon.classList.add("d-block");
                msgCon.classList.add("mb-2");
                msgCon.setAttribute("data-log",msg['id']);
                msgCon.setAttribute("data-seen",msg['seen']);
                //adding click event for each item of them 
                msgCon.setAttribute("onclick","clearPrev();openChatWindow(this);");
                //each link with classes and custom attribute contains its id of the sender   
                let msgIcon=msg["seen"]==="0"?"<img src='../images/msg-closed.svg' alt='close svg icon'/>":"<img src='../images/msg-open.svg' alt='open svg icon'/>";
                msgCon.innerHTML=msg["email"]+" " +msgIcon;
                $(".msg-item-container")[0].appendChild(msgCon);
            }}
            
        }
    }
    req.open("POST","asideData.php",true);
    req.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
    req.send();
    
    setTimeout(displaySideBarChats,3000);
}
function toggleSideBar(){
    $("aside").toggleClass("asideView");
    //bodyTransform=$("aside").outerWidth(true);
   
}
function clearPrev(){
    clearInterval(t0)
}
function openChatWindow(e){
   //clearInterval(t0);
   let id=e.attributes['data-log'].value;
   let seen=e.attributes['data-seen'].value;
   let req=new XMLHttpRequest(); 
   req.onreadystatechange=function(){
       if(this.readyState===4 && this.status===200){
        $(".adminChatContainer").css("transform","translateX(0)");
        $(".msgsContainer")[0].innerHTML="";
        
        let msgs=JSON.parse(this.response);
        for(let element of msgs){
            
            let msgCon=document.createElement("TEXTAREA");
            msgCon.classList.add("my-3");
            
            msgCon.setAttribute("disabled","disabled");
            msgCon.classList.add("form-control");
            if(element["sender"]==="0"){
                msgCon.classList.add("bg-primary");
                msgCon.classList.add("text-light");
            }
            else if(element["sender"]==="1"){
                msgCon.classList.add("bg-white");
                msgCon.classList.add("text-dark");
            }
            
            msgCon.innerHTML=stripSlashes(element['message']);
            $(".msgsContainer")[0].appendChild(msgCon);
        }
        $(".msgIcon").attr("onclick","sendMessage("+id+")")
        //fire sending messages function and send the chat id with it 
        $(".adminChatContainer").scrollTop(60000);
       }
   }
    req.open("POST","chatHandle.php",true);
    req.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
    req.send("id="+id+"&seen="+seen);
    t0=setTimeout(()=>{openChatWindow(e);},3000)
}
function sendMessage(id){ 
    
   
        
    $("#msgAlert").css("visibility","hidden");
    let message=$("#msg")[0].value;
    let msgReq=new XMLHttpRequest();
    msgReq.onreadystatechange=function(){
        if(this.readyState===4 && this.status===200){
                if(this.responseText.substr(0,5)=="Error" || this.responseText==="please Enter the message "){
                //no message Entered
                 $("#msgAlert").addClass("alert alert-danger d-block mt-2");
                $("#msgAlert").css("visibility","visible");
                $("#msgAlert").text(this.responseText);
                
                }else{                   
                $("#msg")[0].value="";
                }  
        }
    }
    msgReq.open("POST","sendMsg.php",true);
    msgReq.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
    msgReq.send(`msg=${message} & id=${id}`);
        
        
}
function closeChatContainer(){
    clearInterval(t0);
    $(".adminChatContainer").css("transform","translateX(110%)");
}
function stripSlashes(str)
	{
		return str.replace(/\\/g, '');
	}
