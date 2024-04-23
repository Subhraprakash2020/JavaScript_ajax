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
                // $('.student_list').append('<li class="list">' + val.Slno + '-' + val.Rollno + '-' + val.Name + '-' + val.Branch + '-' + val.Semistar + '-' + val.Payment + '</li>')
                $('#myTable').append('<tr><td class ="id">' + val.employeeId + '</td>,<td>' + val.employeeName + '</td>,<td>' + val.employeeSalary +'</td></tr>')

            })
           
        }


    })

})