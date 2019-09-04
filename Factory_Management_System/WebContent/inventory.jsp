<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    
    <title>Inventry Management</title>
    <link rel="stylesheet" href="styles/stylesheet.css"> <!--***nav bar css*** -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,900" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://kit.fontawesome.com/a65579f16a.js"></script>
    
 

</head>
<body>

    <!-- ****starting of header (nav bar)**** -->
	<jsp:include page="commonheader.jsp"></jsp:include>
    
    <!--****End of header*** -->
     <br>
     <h2 class="text-light"><center>Inventory Management<center></h2>
     
  
    <div class="container">
     <div class="row">
     
      <div class="col-sm-12 col-md-6 col-lg-3">
       <div class="inventryopt">
        <div class="pic">           
          <i class="fas fa-store-alt fa-3x"></i>
           </div>
          <div class="card-content"> 
           <h3  class="title">Add Store</h3>
               <span class="post"> add new Store</span> 
           </div>
          <div class="bt"> <button class="btn btn-primary" type="submit" data-toggle="modal" data-target="#exampleModalCenter">Add Store</button></div>
          
          <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
 			 <div class="modal-dialog modal-dialog-centered modal-xl" role="document">
    			<div class="modal-content">
      				<div class="modal-header">
       				 <h5 class="modal-title" id="exampleModalCenterTitle">Add new Store</h5>
       				 <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          				<span aria-hidden="true">&times;</span>
        			 </button>
     		   </div>
     		 <div class="modal-body">
       				 <jsp:include page="Addstore.jsp"></jsp:include>
      		 </div>
      		<div class="modal-footer">
       			 <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
     </div>
  	</div>
   </div>
  </div>
 </div>  
         
   

      <div class="col-sm-12 col-md-6 col-lg-3">
       <div class="inventryopt">
        <div class="pic">
          <i class="fab fa-product-hunt fa-3x"></i>
         </div>
         <div class="card-content">
           <h3  class="title">Add Product</h3>
               <span class="post">add new Product</span>
          </div>
          <div class="bt"> <button class="btn btn-primary" type="submit" data-toggle="modal" data-target="#exampleModalCenter1">Add Products</button></div>
       <div class="modal fade" id="exampleModalCenter1" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
 			 <div class="modal-dialog modal-dialog-centered modal-xl" role="document">
    			<div class="modal-content">
      				<div class="modal-header">
       				 <h5 class="modal-title" id="exampleModalCenterTitle">Add new Product</h5>
       				 <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          				<span aria-hidden="true">&times;</span>
        			 </button>
     		   </div>
     		 <div class="modal-body">
     		 <jsp:include page="addproduct.jsp"></jsp:include>
       				 
      		 </div>
      		<div class="modal-footer">
       			 <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
     </div>
  	</div>
   </div>
       
        </div>
       </div>
         
         
      <div class="col-sm-12 col-md-6 col-lg-3">
       <div class="inventryopt">
        <div class="pic">
           <i class="fas fa-cart-arrow-down fa-3x"></i>
         </div>
         <div class="card-content">
           <h3  class="title">Stock Inflow</h3>
               <span class="post">Add new Stock</span>   
           </div>
           <div class="bt"> <button class="btn btn-primary" type="submit"  data-toggle="modal" data-target="#exampleModalCenter2">Add Stock</button></div>
         
         <div class="modal fade" id="exampleModalCenter2" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
 			 <div class="modal-dialog modal-dialog-centered modal-xl" role="document">
    			<div class="modal-content">
      				<div class="modal-header">
       				 <h5 class="modal-title" id="exampleModalCenterTitle">Stock Inflow</h5>
       				 <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          				<span aria-hidden="true">&times;</span>
        			 </button>
     		   </div>
     		 <div class="modal-body">
     		 <jsp:include page="stockinflow.jsp"></jsp:include>
       				 
      		 </div>
      		<div class="modal-footer">
       			 <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
     </div>
  	</div>
   </div>
       
         
         </div>
       </div>
       
         
      <div class="col-sm-12 col-md-6 col-lg-3">
       <div class="inventryopt">
        <div class="pic">
          <i class="fas fa-truck-loading fa-3x"></i>
        </div>
        <div class="card-content">
           <h3  class="title">Stock Outflow</h3>
               <span class="post">retrieve from store</span>
        </div>
        <div class="bt">  <button class="btn btn-primary" type="submit"data-toggle="modal" data-target="#exampleModalCenter3">Retrieve From Store</button></div>
      
       <div class="modal fade" id="exampleModalCenter3" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
 			 <div class="modal-dialog modal-dialog-centered modal-xl" role="document">
    			<div class="modal-content">
      				<div class="modal-header">
       				 <h5 class="modal-title" id="exampleModalCenterTitle">Stock OutFlow</h5>
       				 <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          				<span aria-hidden="true">&times;</span>
        			 </button>
     		   </div>
     		 <div class="modal-body">
     		 <jsp:include page="stockoutFlow.jsp"></jsp:include>
       				 
      		 </div>
      		<div class="modal-footer">
       			 <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
     </div>
  	</div>
   </div>
      
       </div>
      </div>
    </div>
  </div>
   
    

</body>
</html>