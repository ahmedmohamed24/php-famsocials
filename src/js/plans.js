
$(document).ready(()=>{
    
    //getting prices and planes from data base with AJAX 
    //get the page first 
    let page=document.getElementById("pageIdentifier").value;
    getPlanes(page);
    //on changing from premium to high quality and vice versa in checkout page
    $("#premiumPlan").click(changePlan);
    $("#highPlan").click(changePlan);
    $("#link-profile").keyup(validateLink);

})



function getPlanes(name){
let req=new XMLHttpRequest();
    req.onreadystatechange=function(){
        if(this.readyState===4 && this.status==200){
            let res=JSON.parse(this.response)[0];
            //adding carousel data
                $(".carrousel")[0].innerHTML=`
                <div class="carouselItem text-center  ">
                    <div class="priceOffer">25%</div>
                    <div class="offer">${res['plane1Num']}   </div>
                    <div class="price"><sup>$</sup> ${res['plan1']}</div>
                    <div class="discount">${Math.ceil(+res['plan1']+res['plan1']*30/100)}$</div>
                    <div class="content">High Quality  </div>
                    <div class="content">  Real Users</div>
                    <div class="content">No Password Required</div>
                    <div class="content">Fast Delivery </div>
                    <div class="content">24/7 Support</div>
                    
                    <a href="checkout.php?id=${res['id']}&planPrice=plan1&plan=${res['name']}" class="btn btn-info"> BUY NOW</a>
                </div>
                <div class="carouselItem text-center  ">
                    <div class="priceOffer">25%</div>
                    <div class="offer">${res['plane2Num']}   </div>
                    <div class="price"><sup>$</sup> ${res['plan2']}</div>
                    <div class="discount">${Math.ceil(+res['plan2']+res['plan2']*30/100)}$</div>
                    <div class="content">High Quality  </div>
                    <div class="content">  Real Users</div>
                    <div class="content">No Password Required</div>
                    <div class="content">Fast Delivery </div>
                    <div class="content">24/7 Support</div>
                    <a href="checkout.php?id=${res['id']}&planPrice=plan2&plan=${res['name']}" class="btn btn-info"> BUY NOW</a>
                </div>
                <div class="carouselItem text-center  ">
                    <div class="priceOffer">25%</div>
                    <div class="offer">${res['plane3Num']}   </div>
                    <div class="price"><sup>$</sup> ${res['plan3']}</div>
                    <div class="discount">${Math.ceil(+res['plan3']+res['plan3']*30/100)}$</div>
                    <div class="content">High Quality  </div>
                    <div class="content">  Real Users</div>
                    <div class="content">No Password Required</div>
                    <div class="content">Fast Delivery </div>
                    <div class="content">24/7 Support</div>
                    <a href="checkout.php?id=${res['id']}&planPrice=plan3&plan=${res['name']}" class="btn btn-info"> BUY NOW</a>
                </div>
                <div class="carouselItem text-center  ">
                    <div class="priceOffer">25%</div>
                    <div class="offer">${res['plane4Num']}   </div>
                    <div class="price"><sup>$</sup> ${res['plan4']}</div>
                    <div class="discount">${Math.ceil(+res['plan4']+res['plan4']*30/100)}$</div>
                    <div class="content">High Quality  </div>
                    <div class="content">  Real Users</div>
                    <div class="content">No Password Required</div>
                    <div class="content">Fast Delivery </div>
                    <div class="content">24/7 Support</div>
                    <a href="checkout.php?id=${res['id']}&planPrice=plan4&plan=${res['name']}" class="btn btn-info"> BUY NOW</a>
                </div>
                <div class="carouselItem text-center  ">
                    <div class="priceOffer">25%</div>
                    <div class="offer">${res['plane5Num']}   </div>
                    <div class="price"><sup>$</sup> ${res['plan5']}</div>
                    <div class="discount">${Math.ceil(+res['plan5']+res['plan5']*30/100)}$</div>
                    <div class="content">High Quality  </div>
                    <div class="content">  Real Users</div>
                    <div class="content">No Password Required</div>
                    <div class="content">Fast Delivery </div>
                    <div class="content">24/7 Support</div>
                    <a href="checkout.php?id=${res['id']}&planPrice=plan5&plan=${res['name']}" class="btn btn-info"> BUY NOW</a>
                </div>
                <div class="carouselItem text-center  ">
                    <div class="priceOffer">25%</div>
                    <div class="offer">${res['plane6Num']}   </div>
                    <div class="price"><sup>$</sup> ${res['plan6']}</div>
                    <div class="discount">${Math.ceil(+res['plan6']+res['plan6']*30/100)}$</div>
                    <div class="content">High Quality  </div>
                    <div class="content">  Real Users</div>
                    <div class="content">No Password Required</div>
                    <div class="content">Fast Delivery </div>
                    <div class="content">24/7 Support</div>
                    <a href="checkout.php?id=${res['id']}&planPrice=plan6&plan=${res['name']}" class="btn btn-info"> BUY NOW</a>
                </div>
                <div class="carouselItem text-center  ">
                    <div class="priceOffer featuredPlan">25%</div>
                    <div class="offer ">${res['planeFeaturedNum']}   </div>
                    <div class="price featuredPlan"><sup>$</sup> ${res['featured']}</div>
                    <div class="discount">`+ Math.ceil(+res['featured']+res['featured']*30/100) +`$</div>
                    <div class="content">High Quality  </div>
                    <div class="content">  Real Users</div>
                    <div class="content">No Password Required</div>
                    <div class="content">Fast Delivery </div>
                    <div class="content">24/7 Support</div>
                    <a href="checkout.php?id=${res['id']}&planPrice=featured&plan=${res['name']}" class="btn btn-info"> BUY NOW</a>
                </div>
                `;
                
            //firing carousel 
                $('.carrousel').slick({
                centerMode: true,
                centerPadding: '60px',
                slidesToShow: 3,
                autoplay: true,
                autoplaySpeed: 2000,
                responsive: [
                    {
                    breakpoint: 991,
                    settings: {
                        arrows: false,
                        centerMode: true,
                        centerPadding: '30px',
                        slidesToShow: 2
                    }
                    },
                    {
                    breakpoint: 480,
                    settings: {
                        arrows: false,
                        centerMode: true,
                        centerPadding: '40px',
                        slidesToShow: 1
                    }
                    }
                ]
                });
        }
    }
req.open("POST","user/getPlans.php",true);
req.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
req.send(`name=${name}`); 
}
function changePlan(){
    let elements=document.getElementsByName("planType");
    for(let element of elements){
        if(element.checked) 
            if(element.value==="high"){
                $(".high-plan").css({"text-decoration":"none"});
                $(".high-plan").addClass("text-primary");
                $(".premium-plan").addClass("d-none");
            }else if(element.value==="premium"){
                $(".high-plan").css({"text-decoration":"line-through"});
                $(".high-plan").removeClass("text-primary");
                $(".premium-plan").removeClass("d-none");
            }
            else{
                alert("some Error occurred");
            }
        
    }
}

function validateLink(){
    let value=$("#link-profile").val();
    if(is_url(value)){
        $(".url-alert").addClass("d-none");
        $(".url-alert").removeClass("d-block my-1");
    }else{
        $(".url-alert").removeClass("d-none");
        $(".url-alert").addClass("d-block my-1");
    }
}
function is_url(str)
{
  regexp =  /^(?:(?:https?|ftp):\/\/)?(?:(?!(?:10|127)(?:\.\d{1,3}){3})(?!(?:169\.254|192\.168)(?:\.\d{1,3}){2})(?!172\.(?:1[6-9]|2\d|3[0-1])(?:\.\d{1,3}){2})(?:[1-9]\d?|1\d\d|2[01]\d|22[0-3])(?:\.(?:1?\d{1,2}|2[0-4]\d|25[0-5])){2}(?:\.(?:[1-9]\d?|1\d\d|2[0-4]\d|25[0-4]))|(?:(?:[a-z\u00a1-\uffff0-9]-*)*[a-z\u00a1-\uffff0-9]+)(?:\.(?:[a-z\u00a1-\uffff0-9]-*)*[a-z\u00a1-\uffff0-9]+)*(?:\.(?:[a-z\u00a1-\uffff]{2,})))(?::\d{2,5})?(?:\/\S*)?$/;
        if (regexp.test(str))
        {
          return true;
        }
        else
        {
          return false;
        }
}