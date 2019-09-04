<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<title>Salary Home</title>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">


    <title>Salary Home  Page</title>
    <link rel="stylesheet" href="./css/indexStyleSheet.css">
    <!--***nav bar css*** -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,900" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://kit.fontawesome.com/a65579f16a.js"></script>


</head>

<body>

<!-- ****starting of header (nav bar)**** -->
  <section id="nav-bar">
  <div class="container-fluid">

      <nav class="navbar navbar-expand-md navbar-light  shadow-sm bg-white row nav-margin">
          <a class="navbar-brand logo" href="#">
              Bakthi Herbal Lanka
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
              aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
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
               
                  <li class="nav-item avatar">
                      <a class="nav-link p-0" href="#">
                          <span>

                          </span>
                        
                          <span class="mr-2 d-none d-lg-inline text-gray-600 small name">Administrator</span>
                          <img src="https://mdbootstrap.com/img/Photos/Avatars/avatar-5.jpg"
                              class="rounded-circle z-depth-0" alt="avatar image" height="45">
                      </a>
                  </li>
              </ul>

          </div>
      </nav>
  </div>
  </section>
  <!--****End of header*** -->
   <br><br><br><br><br>

	 <div class="container">
     <div class="row">
      <div class="col-sm-12 col-md-6 col-lg-3">
       <div class="inventryopt">
        <div class="pic">
           
           <i class="fas fa-marker  fa-3x"></i>
			
            </div>
           <div class="card-content">
           <h3  class="title">Attendance</h3>
               <span class="post">daily attendance</span>
               
           </div>
           <div class="bt"> <a href=Attendance.jsp> <button class="btn btn-primary" type="submit">Attendance Marking</button></a></div>
            </div>
        </div>
         
               <div class="col-sm-12 col-md-6 col-lg-3">
       <div class="inventryopt">
        <div class="pic">
            <i class="fas fa-search-dollar fa-3x"></i>
            </div>
           <div class="card-content">
           <h3  class="title">Daily Salary</h3>
               <span class="post">daily payment calculation</span>
               
           </div>
           <div class="bt">  <a href=DailySal.jsp><button class="btn btn-primary" type="submit">Calculate Salary</button></a></div>
            </div>
        </div>
         
               <div class="col-sm-12 col-md-6 col-lg-3">
       <div class="inventryopt">
        <div class="pic">
            
                       <i class="fas fa-calculator fa-3x"></i>

            </div>
           <div class="card-content">
           <h3  class="title">Monthly Salary</h3>
               <span class="post">monthly salary calculation</span>
               
           </div>
          
           <div class="bt">
            <a href=MonthSal.jsp>
             <button class="btn btn-primary" type="submit">Calculate Salary</button>
           </a></div>
            </div>
        </div>
         
               <div class="col-sm-12 col-md-6 col-lg-3">
       <div class="inventryopt">
        <div class="pic">
            
           <i class="fas fa-wrench fa-3x"></i>
            </div>
           <div class="card-content">
           <h3  class="title">Salary Update</h3>
               <span class="post">Salary Details</span>
               
           </div>
           <div class="bt"> <a href=SalSetting.jsp><button class="btn btn-primary" type="submit">Update Salary</button></a></div>
            </div>
        </div>
        </div>
    </div>
    
    


</body>
</html>