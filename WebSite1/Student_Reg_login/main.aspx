<%@ Page Language="C#" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DBMS PROJECT</title>
        <link rel="icon" type="image/ico" href="http://localhost:61655/Images/rnsit.jpg" />
        <meta charset = "UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style type="text/css">
            body
            {
	            margin:0;
	            padding: 0;
            }
            .form-auth {
	            border:2px solid gray;
	            background-color: #E0E0E0;
	            max-width: 540px;
	            padding: 3%;
	            margin: 0 auto;
            }
            .card{
	            border-width: 2px;
	            border-color: black;
	            background-color: #E3F2FD;
            }
            .form-auth .btn{
	            background-color: #021b38;
	            color:white;
	            cursor: pointer;

            }
            .form-auth .btn:hover{
	            border-color: white;

            }
        </style>
</head>
<body>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"  integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous">
    </script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous">
    </script>
        
    <nav class="navbar transparent navbar-expand-md mb-0 p-0" id="navbar" style="background-color:#021b38;">
        <div class="container-fluid">
            <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse"><span class="navbar-toggler-icon bg-light"></span></button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav">
                    <li class="nav-item m-2">
                        <a class="nav-link text-light" href="https://www.rnsit.ac.in/">
                           <big>
                               <h5 class="d-inline">
                                   Home
                               </h5>
                           </big>
                        </a>
                    </li>  
                    <li class="nav-item dropdown m-2">
                         <a class="nav-link text-light dropdown-toggle" data-toggle="dropdown" href="#">
                            <big>
                               <h5 class="d-inline">
                                    Login
                               </h5>
                            </big>
                         </a>
                         <div class="dropdown-menu m-2 p-0" style="background-color: #021b38;">
                            <a href="http://localhost:61655/Admin_Reg_login/adminlogin.aspx" class="dropdown-item mt-0 text-light">ADMIN LOGIN
                            </a>
                            <hr class="m-0 p-0">
                            <a href="#studentlogin" class="dropdown-item text-light">STUDENT LOGIN
                            </a>                       
                        </div>
                    </li>               
                    <li class="nav-item m-2">
                        <a class="nav-link text-light" href="http://www.rnsit.ac.in/contact.html">
                          <big>
                             <h5 class="d-inline">
                                Contact Us
                             </h5>
                          </big>
                        </a>
                    </li>
                        <li class="nav-item m-2">
                            <a class="nav-link text-light" href="http://localhost:61655/Admin_Reg_login/reg.aspx">
                                <big>
                                <h5 class="d-inline">
                                    Admin Register
                                </h5>
                                </big>
                            </a>
                        </li>
                     </ul>
                </div>
            </div>
        </nav>
    
        <h1 class="m-4" style="font-family: 'Archivo Black', sans-serif; color: #021b38;"><center>STUDENT PROGRESS MONITORING SYSTEM</center></h1>
        <center><img src="http://localhost:61655/Images/rnsit.jpg" width="25%" class="img-fluid"></center>       
        <div class="row">            
             <div class="col-lg-12">
               <div class="container my-5"  >                
                <form class="form-auth" id="studentlogin" runat="server">
                    <h2 class="mb-3">Student Login</h2>
                    <div class="form-group">
                      <asp:TextBox ID="usn" class="form-control" runat="server" Height="40px" Width="400px" placeholder="USN"></asp:TextBox>
                        <asp:RequiredFieldValidator ErrorMessage="USN Required" ForeColor="Red" ControlToValidate="usn" runat="server" />
                    </div>
                    <div class="form-group my-2">
                      <asp:TextBox ID="password" runat="server" EnableTheming="True" class="form-control" TextMode="Password" placeholder="Password" Height="40px" Width="400px"></asp:TextBox>
                      <asp:RequiredFieldValidator ErrorMessage="Password Required" ForeColor="Red" ControlToValidate="password" runat="server" />
                    </div>
                    <div class="form-group" align="center">
                    </div>
                      <asp:Button ID="Button2" runat="server" Text="Login" class="btn" onclick="Button3_Click" />                      
                    <br />
                      <asp:Label ID="Label2" runat="server"></asp:Label>
                </form>
              </div>
            </div> 
        

        </div>
        <footer id="main-footer" class="p-3 bg-dark text-white">
		<div class="row">
			<div class="col-md-12">
			    <h1 align="center">RNS INSTITUTE OF TECHNOLOGY</h1>
                <h2 align="center">Bengaluru</h2>
			</div>
		</div>	
	</footer>
</body>
</html>