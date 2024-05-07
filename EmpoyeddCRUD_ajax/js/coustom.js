$('#show_emp').on('click', function() {
    var updateId = '';
    // $('#myTable').html('');
    console.log("Inside show emp")
    $('#myTable').html(`
        <tr>
            <th>Employee Id</th>
            <th>Employee Name</th>
            <th>EMpoyee Salary</th>
            
        </tr>`);

    var url = 'http://localhost:8085/employee';
    $.ajax({
        type: "GET",
        url: url,

        data: {},
        success: function(data, status, shr) {
            // console.log("All data", data)
            $(data).each(function(key, val) {
                console.log("Inside function")
                console.log('key,val ::', key, val);
                $('#myTable').append('<tr><td class ="id">' + val.employeeId + '</td>,<td>' + val.employeeName + '</td>,<td>' + val.employeeSalary +'</td></tr>')

            })
           
        }


    })

})

$('#add').on('click', function(){
    var eid = $('#eid').val();
    var ename = $('#ename').val();
    var esalary = $('#esalary').val();

    var url = 'http://localhost:8085/employee';
    var data = {
        "employeeId": eid,
        "employeeName": ename,
        "employeeSalary": esalary
    }
    console.log("data",data),

    $.ajax({
        type: "POST",
        url: url,
        data: JSON.stringify(data),
        contentType: "application/json",
        
        success: function(data, status, shr){
            console.log("Inside ajax")
            $('.emp_list').append('<li class="list" data-id="' + eid + '">' + ename + ' - ' + esalary +  '</li>')

        }
    })
})