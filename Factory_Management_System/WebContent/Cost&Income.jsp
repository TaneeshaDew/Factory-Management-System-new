<%@page import="com.itp.financial.services.CostIncomeimpl"%>
<%@page import="com.itp.financial.services.CostIncomei"%>
<%@page import="com.itp.financial.model.modelcost"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
   <!--  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,900" rel="stylesheet">

    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    Font Awesome
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">

    Bootstrap CDN and external CSS
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="./css/dashBoardStyleSheet.css">
    <link rel="stylesheet" href="./css/header.css">
    <link rel="stylesheet" href="./css/table.css"> -->

<title>Bank Transaction</title>
    <link rel="stylesheet" href="styles/FinancialStylesheet.css"> <!--***nav bar css*** -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,900" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://kit.fontawesome.com/a65579f16a.js"></script>
    
</head>

<body>

    <div class="container-fluid">

        <nav class="navbar navbar-expand-md navbar-light bg-transparent shadow-sm bg-white rounded row nav-margin">
            <a class="navbar-brand logo" href="#">
                Bakthi Herbal Lanka
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link navbar-brand">
                            Home
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link">
                            Features
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link">
                            Staff
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link">
                            Help
                        </a>
                    </li>
                    <!-- <h6 class="pt-3 ml-auto" style="font-size: 0.9rem;">User Name</h5> -->
                    <li class="nav-item avatar">
                        <a class="nav-link p-0" href="#">
                            <span>

                            </span>
                            <!-- <div class="topbar-divider d-none d-sm-block"></div> -->
                            <span class="mr-2 d-none d-lg-inline text-gray-600 small name">Administrator</span>
                            <img src="https://mdbootstrap.com/img/Photos/Avatars/avatar-5.jpg" class="rounded-circle z-depth-0" alt="avatar image" height="45">
                        </a>
                    </li>
                </ul>
                <!-- <div class="nav-item avatar">
                            <a class="nav-link p-0" href="#">
                                    <img src="https://mdbootstrap.com/img/Photos/Avatars/avatar-5.jpg" class="rounded-circle z-depth-0"
                                      alt="avatar image" height="45">
                                  </a>
                    </div> -->
            </div>
        </nav>
    </div>

    <div class="wrapper">
        <!-- Sidebar  -->
        <nav id="sidebar" class="navbar-expand-md mb-5" style="margin-top: -40px">
            <div class="sidebar-header  row" style="width: 265px;">
                <!-- <h3>Bootstrap SideBar</h3> -->
                <img src="https://mdbootstrap.com/img/Photos/Avatars/avatar-5.jpg" class="rounded-circle z-depth-0" alt="avatar image" height="65">
                <h5 class="mt-4 ml-3">Name</h5>
            </div>

           <ul class="list-unstyled components mb-2">
                <p>DashBoard</p>
                <li  class="active">
                    <a href="Cost&Income.jsp">Cost & Income Analysis</a>
                </li>
              
                <li>
                    <a href="BankTransaction.jsp">Bank Transaction</a>
                </li>
                <li>
                    <a href="ProfitCalc.jsp">Profit Calculation</a>
                </li>
                <li>
                    <a href="GenarateReports.jsp">Generate Reports</a>
                </li>
            </ul>


        </nav>

        <!-- Page Content  -->
        <div id="content">

            <nav class="navbar-expand-md mb-4 toggle-bar">
                <div class="container-fluid">

                    <button type="button" id="sidebarCollapse" class="btn btn-info" style="background:#4628B8">
                        <i class="fas fa-align-left"></i>
                        <span>DashBoard</span>
                    </button>
                </div>
            </nav>



            <div class="container">

              <div class="row">
    <div class="col">
      <h4 style="text-align: left;">Cost & Income Table</h4>
    </div>

    <div class="col-md-auto">

      <div class="input-group md-form form-sm form-2 pl-0">
        <input class="form-control my-0 py-1 purple-border" type="text" placeholder="Search" aria-label="Search" style="width:300px;">
        <div class="input-group-append">
          <a><button class="btn btn-search input-group-text purple lighten-1" id="basic-text1" style="background:#4628B8;"><i class="fas fa-search text-white"
              aria-hidden="true" ></i></button>
        </a>
        </div>
      </div>

    </div>

    <div class="col col-lg-2">
    
    
    
     <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#exampleModal" style="background:#4628B8; color:white; width:165px; height:39px;">
          <i class="fas fa-plus"></i>
          <span>Add Costs</span> 
      </button>
      
      
      
    </div>
  </div>
</div>

<br/>
   <div class="table-wrapper-scroll-y my-custom-scrollbar">
          <table id="dtBasicExample" class="table table-striped table-bordered table-sm">
                <thead>
                    <tr class="p-3 mb-2 bg-success text-white">
                        <th scope="col">Cost Code</th>
                        <th scope="col">Account No</th>
                        <th scope="col">Description</th>
                        <th scope="col">Type</th>
                        <th scope="col">Date</th>
                        <th scope="col">Amount</th>
                        <th scope="col">edit</th>
                        <th scope="col">delete</th>
                    </tr>
                </thead>


					<tbody>
					<%
						CostIncomei costIncomei = new CostIncomeimpl();
						ArrayList<modelcost> costList = costIncomei.vieModelcosts();
						
						for(modelcost m : costList){
					%>
						<tr>
						<!-- <th scope="row"></th> -->
							<td><%= m.getCostCode() %></td>
							<td><%= m.getDescription() %></td>
							<td><%= m.getType() %></td>
							<td><%= m.getDate() %></td>
							<td><%= m.getAmount() %></td>
							<!--td><a href="#"><i class='material-icons' style="color:red"></i></a></td-->
							<!-- <td><i class="material-icons" style="color:red;">&#xe150;</i></td>
                        <td><i class='fas fa-times' style="color:red;"></i></td> -->
							<td><button class="btn btn-success">
									<i class="fas fa-pen-square" style="font-size: 15px;"></i>
								</button></td>
							<td><button class="btn btn-danger"
									style="margin-left: 10px;">
									<i class="far fa-trash-alt"></i>
								</button></td>
						</tr>
					<%} %>

						
                </tbody>
            </table>
            </div>
            </div>
            </div>
            
            
            <!-- start of action button -->

            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"  aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content" style=" background-color: #fefefe;">
                  <div class="modal-header">
                    <h4 class="modal-title">Add Cost Details</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">


<form method ="post" action="CostIncome" id = "log" class="needs-validation" novalidate>

                    <div class="form-group">
                        <label for="validation1">Cost Code</label>
                        <input type="text" class="form-control" id="validation1" placeholder="Please enter a Transaction Code" name ="CostCode"  required>
                        <div class="invalid-feedback">
                            Please provide a Cost Code.
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="validation3">Description</label>
                        <input type="text" class="form-control" id="validation3" placeholder="Please enter a Description" name ="Description" required>
                        <div class="invalid-feedback">
                            Please provide a Description.
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="validation4">Type</label>
                        <input type="text" class="form-control" id="validation4" placeholder="Please enter a Type" name ="Type" required>
                        <div class="invalid-feedback">
                            Please provide a Type.
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="validation5">Date</label>
                        <input type="text" class="form-control" id="validation5" placeholder="Please enter a Return Count" name ="Date" required>
                        <div class="invalid-feedback">
                            Please provide a Date.
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="validation6">Amount</label>
                        <input type="text" class="form-control" id="validation6" placeholder="Please enter the Amount" name ="Amount" required>
                        <div class="invalid-feedback">
                            Please Enter the Amount.
                        </div>
                    </div>
                 
              

                  </div>
                  <div class="modal-footer">
                    <button class="btn btn-primary btn-block" type="submit">Add</button>
                  </div>
                </div>
              </div>
            </div>
  </form>
		<!-- end of action button-->




            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
            <script type="text/javascript">
                $(document).ready(function() {
                    $('#sidebarCollapse').on('click', function() {
                        $('#sidebar').toggleClass('active');
                    });
                });
            </script>

            <script>
                $(document).ready(function () {
                  $('#dtBasicExample').DataTable();
                  $('.dataTables_length').addClass('bs-select');
                });
            </script>
</body>

</html>