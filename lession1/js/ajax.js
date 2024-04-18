console.log("Getting into ajax")


let fetchbtn = document.getElementById("fetchbtn");
fetchbtn.addEventListener ('click',buttonClickHandler);

function buttonClickHandler(){
    const xhr = new XMLHttpRequest();

    xhr.open('GET','https://jsonplaceholder.typicode.com/todos/1',false);
    xhr.open('POST','https://dummy.restapiexample.com/api/v1/create',true);
    xhr.getResponseHeader('content-type','application/json');

    xhr.onprogress = function(){
        console.log("On progress");
    }

    xhr.onload = function(){
        if(this.status === 200){
            console.log(this.responseText);
        }
        else{
            console.log("Some error occured");
        }
        
    }

    params = `{"name":"test2","salary":"123","age":"23"}`;

    xhr.send(params);
    console.log("We are done")
}