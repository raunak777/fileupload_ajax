<!doctype html>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.23/css/jquery.dataTables.min.css">
  
  <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>
  <title>File Ajax</title>
</head>
<body>
  <div style="width: 50%; margin-left: 25%; margin-top: 3%;" >
    <form id="submit-data">
      <div class="mb-3">
        <label for="name" class="form-label">Name</label>
        <input  type="text" name="name" class="form-control" id="name">
      </div>
      <div class="mb-3">
        <label for="email" class="form-label">Email address</label>
        <input  type="email" name="email" class="form-control" id="email" aria-describedby="emailHelp">
      </div>
      <label for="fileup" class="form-label">File Upload</label>
      <div class="custom-file mb-3">
        <input type="file" class="custom-file-input" id="customFile" name="filename">
        <label class="custom-file-label" for="customFile">Choose file</label>
      </div>
      <div class="mb-3">
        <label for="Password" class="form-label">Password</label>
        <input type="password" name="password" class="form-control" id="password">
      </div>
      <button type="submit" class="btn btn-lg btn-primary">Submit</button>
    </form>
  </div>
  <div class="conatiner">
    <table id="datashow" border="1px">
      <thead>
        <tr class="thead-light">
          <th>ID</th>
          <th>Name</th>
          <th>Email</th>
          <th>Image</th> 
          <th>Action</th> 
        </tr>
      </thead>
    </table>
  </div>
  <script type="text/javascript">
    $(function(){
      $("#customFile").on("change", function() {
        var fileName = $(this).val().split("\\").pop();
        $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
      });

      $("#submit-data").on("submit", function(e){
        e.preventDefault();
        let formData = new FormData(this);
        $.ajax({
          type: "POST",
          url: "upload.php",
          data: formData,
          contentType: false,
          processData: false,
          success: data=>{
            if (data==0) {
              alert("Upload Successfull");
              tableShow();
            }
            else
            {
              alert("Upload Failed");
              console.log(data);
            }
          }
        });
      });

      // $.ajax({
      //   type:"POST",
      //   url: "upload.php",
      //   dataType: "json",
      //   data:{action: "show"},
      //   success: function(data){
      //     console.log(data);
      //   }
      // });

      function tableShow(){
        var table = $('#datashow').DataTable( {
         stateSave: true,
         "bDestroy": true,
         "ajax": {
          "type": "POST",
          "dataType": "json",
          "url" : "upload1.php",
          "dataSrc" : "data",
          "data" : {"action":"show"},
        },
        "columnDefs": [ {
          "targets": 3,
          "data": null,
          render: function(data) {
            return '<a href="'+data[4]+'" target="_blank"><img width="50px" height="50px" src="'+data[4]+'"></a>'
          },
        },
        {
          "targets":-1,
          "data":null,
          render: function(data) {
            return "<a href='"+data[4]+"' download><button class='btn btn-primary'>Download</button></a>";
          },
        }]

      });
        
      }
      tableShow();
    });
  </script>

</body>
</html>