$(document).ready(()=>{
    $("body").css("overflow","auto");
    getPlans();
    
})
function getPlans(){
    let req=new XMLHttpRequest();
    req.onreadystatechange=function(){
        if(this.readyState===4 && this.status===200){
            if(this.response==="null"){
                alert("Error")
            }else{
                let plans= JSON.parse(this.response);
                //adding data to the view 
                for(let plan of plans){
                    document.getElementById("plansContainer").innerHTML+=`
                    <tr>
                        <th scope="row">${plan['name']}</th>
                        <td>
                            <table class="table  table-striped  table-bordered">
                                <tbody>
                                    <tr >
                                        <td scope="col">
                                            <div class='mb-2'>${plan["id"]}</div>
                                            <div class='mb-2'>Price</div>
                                            <div class='mb-2'>number</div>
                                        </td>
                                        <td class='bg-primary'>
                                            <div class='mb-2'>Featured Plan</div>
                                            <input type='text' value='${plan["featured"]}' class='form-control mb-2'/>
                                            <input type='text' value='${plan["planeFeaturedNum"]}' class='form-control mb-2'/>
                                            <button id='bf' class="btn  btn-warning plan-btn" plan-id='${plan["id"]}'  >Update</button>
                                        </td>
                                        <td>
                                            <div class='mb-2'> Plan 1</div>
                                            <input type='text' value='${plan["plan1"]}' class='form-control mb-2'/>
                                            <input type='text' value='${plan["plane1Num"]}' class='form-control mb-2'/>
                                            <button id='b1' class="btn btn-warning plan-btn"  plan-id='${plan["id"]}'  >Update</button>
                                        </td>
                                        <td>
                                            <div class='mb-2'>Plan 2</div>
                                            <input type='text' value='${plan["plan2"]}' class='form-control mb-2'/>
                                            <input type='text' value='${plan["plane2Num"]}' class='form-control mb-2'/>
                                            <button id='b2' class="btn btn-warning plan-btn"  plan-id='${plan["id"]}'  >Update</button>
                                        </td>
                                        <td>
                                            <div class='mb-2'>Plan 3</div>
                                            <input type='text' value='${plan["plan3"]}' class='form-control mb-2'/>
                                            <input type='text' value='${plan["plane3Num"]}' class='form-control mb-2'/>
                                            <button id='b3' class="btn btn-warning plan-btn"  plan-id='${plan["id"]}'  >Update</button>
                                        </td>
                                        <td>
                                            <div class='mb-2'>Plan 4</div>
                                            <input type='text' value='${plan["plan4"]}' class='form-control mb-2'/>
                                            <input type='text' value='${plan["plane4Num"]}' class='form-control mb-2'/>
                                            <button id='b4' class="btn btn-warning plan-btn"  plan-id='${plan["id"]}'  >Update</button>
                                        </td>
                                        <td>
                                            <div class='mb-2'>Plan 5</div>
                                            <input type='text' value='${plan["plan5"]}' class='form-control mb-2'/>
                                            <input type='text' value='${plan["plane5Num"]}' class='form-control mb-2'/>
                                            <button id='b5' class="btn btn-warning plan-btn"  plan-id='${plan["id"]}'  >Update</button>
                                        </td>
                                        <td>
                                            <div class='mb-2'>Plan 6</div>
                                            <input type='text' value='${plan["plan6"]}' class='form-control mb-2'/>
                                            <input type='text' value='${plan["plane6Num"]}' class='form-control mb-2'/>
                                            <button id='b6' class="btn btn-warning plan-btn"  plan-id='${plan["id"]}'  >Update</button>
                                        </td>
                                       

                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    `;
                }
                //firing events for buttons of update 
                $(".plan-btn").click((e)=>{
                    //when clicking on a button 
                    //get the button id to use it to get the plane 
                    // use the plan id attribute to indicate which row is selected 
                    let id=e.currentTarget.attributes["plan-id"].value;
                    let btnNumber=e.currentTarget.attributes["id"].value;
                    //getting the above two values from the two inputs 
                    var result = [],
                    node = e.currentTarget.parentNode.firstChild;
                
                    while ( node ) {
                        if ( node !== this && node.nodeType === Node.ELEMENT_NODE ) 
                        result.push( node );
                        node = node.nextElementSibling || node.nextSibling;
                    }
                    
                   
                    updatePlan(id,btnNumber,result[1].value, result[2].value);
                });
            }
                
        }
    }
    req.open("POST","getPlans.php",true);
    req.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
    req.send();
}
function updatePlan(id,planNumber,val1,val2){

    let req=new XMLHttpRequest();
    req.onreadystatechange=function(){
        if(this.readyState===4 && this.status===200){
           if(this.response==="true"){
            Swal.fire(
                'Done!',
                'You Updated one plan !',
                'success'
              )
           }
           else{
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Something went wrong!',
              })
           }
        }
    }
    req.open("POST","updatePlan.php",true);
    req.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
    req.send(`id=${id}&plan=${planNumber}&val1=${val1}&val2=${val2}`);
}