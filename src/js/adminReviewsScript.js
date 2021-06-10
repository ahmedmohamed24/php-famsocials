//it's related only with admin reviews page 
$(document).ready(()=>{
    
    $("body").css("overflow","auto");
  
   $(".updateReview").click((e)=>{
       let id=e.currentTarget.attributes["item-data"].value;
       let req=new XMLHttpRequest();
       req.onreadystatechange=function(){
           if(this.readyState===4 && this.status===200){
            if(this.response.includes("true")){
                console.log(this.response)
                Swal.fire(
                    'Good job!',
                    'You approved one review!',
                    'success'
                  )
            }else{
                console.log(this.response)
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Something went wrong!',
                    footer: 'refresh the page and try again'
                  })
            }
           }
       }
       req.open("POST","updateReview.php",true);
       req.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
       req.send(`id=${id}`);
   
    })
    $(".deleteReview").click((e)=>{
        let id=e.currentTarget.attributes["item-data"].value;
        let req=new XMLHttpRequest();
        req.onreadystatechange=function(){
            if(this.readyState===4 && this.status===200){
             if(this.response.includes("true")){
                 console.log(this.response)
                 Swal.fire(
                     'Good job!',
                     'You approved one review!',
                     'success'
                   )
             }else{
                 console.log(this.response)
                 Swal.fire({
                     icon: 'error',
                     title: 'Oops...',
                     text: 'Something went wrong!',
                     footer: 'refresh the page and try again'
                   })
             }
            }
        }
        req.open("POST","deleteReview.php",true);
        req.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
        req.send(`id=${id}`);
    
     })
})