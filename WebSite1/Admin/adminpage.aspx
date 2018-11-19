<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminpage.aspx.cs" Inherits="adminpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Page-1</title>
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
                max-width:570px;
	            padding: 3%;
	            margin: 0 auto;
            }
            .card .btn, .form-auth .btn,#insert .btn{
                background-color: #021b38;
	            color:white;
	            cursor: pointer;
            }
            .card{
	            border-width: 2px;
	            border-color: black;
	            background-color: #E3F2FD;
            }
            .buttons .btn{
               background-color: #021b38;
	            color:white;
	            cursor: pointer;
                width: 213px;
            }
            .buttons .btn:hover{
               background-color: forestgreen;
	            color:white;
	            cursor: pointer;
                width: 213px;
            }
            #header .btn{
                background-color:forestgreen;
                color:white;
	            cursor: pointer;
            }
             #header .btn:hover{
                background-color:#021b38;
                color:white;
	            cursor: pointer;
            }
            .form-auth .btn:hover{
	            border-color: white;

            }
            h2{
                color:#021b38;
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
                        <a class="nav-link text-light" href="http://localhost:61655/Admin_reg_login/adminlogin.aspx">
                            <big>
                                <h5 class="d-inline">
                                    Log Out
                                </h5>
                            </big>
                        </a>
                    </li>
                 </ul>
                </div>
            </div>
        </nav>

        

    <div class="row">
        <div class="col-lg-3 m-3">
            <center>
             <ul class="buttons" style="list-style:none;">
                 <li><a style="text-decoration-line:none;color:white;"><button class="btn m-2" data-toggle="collapse" data-target="#insert">INSERT RECORDS</button></a></li>
                 <li><a href="http://localhost:61655/Admin/adminview.aspx" style="text-decoration-line:none;color:white;"><button class="btn m-2 px-3" >VIEW RECORDS</button></a></li>
                 <li><a href="http://localhost:61655/Admin/admindelete.aspx" style="text-decoration-line:none;color:white;"><button class="btn m-2">DELETE RECORDS</button></a></li>
                 <li><a href="http://localhost:61655/Admin/adminupdate.aspx" style="text-decoration-line:none;color:white;"><button class="btn m-2">FEEDBACK</button></a></li>
                 <li><a href="http://localhost:61655/Student_Reg_login/studentreg.aspx" style="text-decoration-line:none;color:white;"><button class="btn m-2">STUDENT REGISTER </button></a></li>
                 <li><a href="http://localhost:61655/Admin/adminpwchange.aspx" style="text-decoration-line:none;color:white;"><button class="btn m-2">CHANGE PASSWORD </button></a></li>
             </ul>
            </center>
        </div>
      <div class="collapse show" id="insert">
        <div class="container">       
            <div class="col-lg-12 m-3">
               <center>
                <div class="card p-0">
                   <div class="card-header bg-secondary" id="header" align="center">
                     <a href="#geninfo"><button class="btn ">GENERAL INFO</button></a>
                     <a href="#subject"><button class="btn ">COURSE</button></a>
                     <a href="#section"><button class="btn ">SECTION</button></a>
                     <a href="#marks"><button class="btn ">MARKS</button></a>
                     <a href="#attendances"><button class="btn ">ATTENDANCE</button></a>
                   </div>
                    <hr class="m-0 p-0" width="50%"/>
                    <div class="card-body">
                       <form class="form-auth" method="post" runat="server">
                        <h2>Enter Student Details:<asp:Label ID="Label2" runat="server"></asp:Label>
                           </h2>
                         <br />
                         <div class="form-group" id="geninfo">
                           <asp:TextBox ID="usn" class="form-control" runat="server" Height="40px"  placeholder="USN"></asp:TextBox>
                         </div>
                         <div class="form-group">
                           <asp:TextBox ID="studname" class="form-control" runat="server" Height="40px"  placeholder="Student Name"></asp:TextBox>
                         </div>
                         <div class="form-group">
                            <asp:TextBox ID="phonenum" class="form-control" runat="server" Height="40px"  placeholder="Phone Number"></asp:TextBox>
                         </div>
                         <div class="form-group">
                             <asp:TextBox ID="gender" class="form-control" runat="server" Height="40px"  placeholder="Gender"></asp:TextBox>
                         </div>
                         <div class="form-group">
                              <asp:TextBox ID="address" class="form-control" runat="server" Height="40px"  placeholder="Address"></asp:TextBox>
                          </div>
                         <div class="form-group">
                               <asp:TextBox ID="department" class="form-control" runat="server" Height="40px"  placeholder="Department"></asp:TextBox>
                         </div>
                         <div class="form-group" id="section">
                               <asp:TextBox ID="sectionid" class="form-control" runat="server" Height="40px"  placeholder="Section ID"></asp:TextBox>
                         </div>
                         <div class="form-group">
                               <asp:TextBox ID="sem" class="form-control" runat="server" Height="40px"  placeholder="Semester"></asp:TextBox>
                         </div>
                          <div class="form-group">
                               <asp:TextBox ID="sec" class="form-control" runat="server" Height="40px"  placeholder="Section"></asp:TextBox>
                         </div>
                        <br />
                           <h2>Enter I Subject Details:</h2>
                        <br />

                         <div class="form-group" id="subject">
                                   <asp:TextBox ID="subcode1" class="form-control" runat="server" Height="40px"  placeholder="Subject Code "></asp:TextBox>
                         </div>
                         <div class="form-group">
                                   <asp:TextBox ID="subname1" class="form-control" runat="server" Height="40px"  placeholder="Subject Name"></asp:TextBox>
                         </div>
                         <div class="form-group" id="marks">
                                   <asp:TextBox ID="marks11" class="form-control" runat="server" Height="40px"  placeholder="IA Marks1"></asp:TextBox>
                         </div>
                         <div class="form-group">
                                <asp:TextBox ID="marks12" class="form-control" runat="server" Height="40px"  placeholder="IA Marks2"></asp:TextBox>
                         </div>
                         <div class="form-group">
                                   <asp:TextBox ID="marks13" class="form-control" runat="server" Height="40px"  placeholder="IA Marks3"></asp:TextBox>
                         </div>
                         <div class="form-group" id="attendances">
                                   <asp:TextBox ID="attendance1" class="form-control" runat="server" Height="40px"  placeholder="Attendance"></asp:TextBox>
                         </div>                          
                         <br />
                           <h2>Enter II Subject Details:</h2>
                         <br />

                         <div class="form-group">
                                   <asp:TextBox ID="subcode2" class="form-control" runat="server" Height="40px"  placeholder="Subject Code "></asp:TextBox>
                         </div>
                         <div class="form-group">
                                   <asp:TextBox ID="subname2" class="form-control" runat="server" Height="40px"  placeholder="Subject Name"></asp:TextBox>
                         </div>
                         <div class="form-group">
                                   <asp:TextBox ID="marks21" class="form-control" runat="server" Height="40px"  placeholder="IA Marks1"></asp:TextBox>
                         </div>
                         <div class="form-group">
                                <asp:TextBox ID="marks22" class="form-control" runat="server" Height="40px"  placeholder="IA Marks2"></asp:TextBox>
                         </div>
                         <div class="form-group">
                                   <asp:TextBox ID="marks23" class="form-control" runat="server" Height="40px"  placeholder="IA Marks3"></asp:TextBox>
                         </div>
                         <div class="form-group">
                                   <asp:TextBox ID="attendance2" class="form-control" runat="server" Height="40px"  placeholder="Attendance"></asp:TextBox>
                         </div>                        
                         <br />
                           <h2>Enter III Subject Details:</h2>
                        <br />

                        
                         <div class="form-group">
                                   <asp:TextBox ID="subcode3" class="form-control" runat="server" Height="40px"  placeholder="Subject Code "></asp:TextBox>
                         </div>
                         <div class="form-group">
                                   <asp:TextBox ID="subname3" class="form-control" runat="server" Height="40px"  placeholder="Subject Name"></asp:TextBox>
                         </div>
                         <div class="form-group">
                                   <asp:TextBox ID="marks31" class="form-control" runat="server" Height="40px"  placeholder="IA Marks1"></asp:TextBox>
                         </div>
                         <div class="form-group">
                                <asp:TextBox ID="marks32" class="form-control" runat="server" Height="40px"  placeholder="IA Marks2"></asp:TextBox>
                         </div>
                         <div class="form-group">
                                   <asp:TextBox ID="marks33" class="form-control" runat="server" Height="40px"  placeholder="IA Marks3"></asp:TextBox>
                         </div>
                         <div class="form-group">
                                   <asp:TextBox ID="attendance3" class="form-control" runat="server" Height="40px"  placeholder="Attendance"></asp:TextBox>
                         </div>
                        <br />
                           <h2>Enter IV Subject Details:</h2>
                        <br />

                        
                         <div class="form-group">
                                   <asp:TextBox ID="subcode4" class="form-control" runat="server" Height="40px"  placeholder="Subject Code "></asp:TextBox>
                         </div>
                         <div class="form-group">
                                   <asp:TextBox ID="subname4" class="form-control" runat="server" Height="40px"  placeholder="Subject Name"></asp:TextBox>
                         </div>
                         <div class="form-group">
                                   <asp:TextBox ID="marks41" class="form-control" runat="server" Height="40px"  placeholder="IA Marks1"></asp:TextBox>
                         </div>
                         <div class="form-group">
                                <asp:TextBox ID="marks42" class="form-control" runat="server" Height="40px"  placeholder="IA Marks2"></asp:TextBox>
                         </div>
                         <div class="form-group">
                                   <asp:TextBox ID="marks43" class="form-control" runat="server" Height="40px"  placeholder="IA Marks3"></asp:TextBox>
                         </div>
                         <div class="form-group">
                                   <asp:TextBox ID="attendance4" class="form-control" runat="server" Height="40px"  placeholder="Attendance"></asp:TextBox>
                         </div>
                         <br />
                           <h2>Enter V Subject Details:</h2>
                        <br />

                        
                         <div class="form-group">
                                   <asp:TextBox ID="subcode5" class="form-control" runat="server" Height="40px"  placeholder="Subject Code "></asp:TextBox>
                         </div>
                         <div class="form-group">
                                   <asp:TextBox ID="subname5" class="form-control" runat="server" Height="40px"  placeholder="Subject Name"></asp:TextBox>
                         </div>
                         <div class="form-group">
                                   <asp:TextBox ID="marks51" class="form-control" runat="server" Height="40px"  placeholder="IA Marks1"></asp:TextBox>
                         </div>
                         <div class="form-group">
                                <asp:TextBox ID="marks52" class="form-control" runat="server" Height="40px"  placeholder="IA Marks2"></asp:TextBox>
                         </div>
                         <div class="form-group">
                                   <asp:TextBox ID="marks53" class="form-control" runat="server" Height="40px"  placeholder="IA Marks3"></asp:TextBox>
                         </div>
                         <div class="form-group">
                                   <asp:TextBox ID="attendance5" class="form-control" runat="server" Height="40px"  placeholder="Attendance"></asp:TextBox>
                         </div>
                        <br />
                           <h2>Enter VI Subject Details:</h2>
                        <br />




                         <div class="form-group">
                                   <asp:TextBox ID="subcode6" class="form-control" runat="server" Height="40px"  placeholder="Subject Code "></asp:TextBox>
                         </div>
                         <div class="form-group">
                                   <asp:TextBox ID="subname6" class="form-control" runat="server" Height="40px"  placeholder="Subject Name"></asp:TextBox>
                         </div>
                         <div class="form-group">
                                   <asp:TextBox ID="marks61" class="form-control" runat="server" Height="40px"  placeholder="IA Marks1"></asp:TextBox>
                         </div>
                         <div class="form-group">
                                <asp:TextBox ID="marks62" class="form-control" runat="server" Height="40px"  placeholder="IA Marks2"></asp:TextBox>
                         </div>
                         <div class="form-group">
                                   <asp:TextBox ID="marks63" class="form-control" runat="server" Height="40px"  placeholder="IA Marks3"></asp:TextBox>
                         </div>
                         <div class="form-group">
                                   <asp:TextBox ID="attendance6" class="form-control" runat="server" Height="40px"  placeholder="Attendance"></asp:TextBox>
                         </div>
                         <br />
                         
                         <div class="form-group" align="center">
                            <asp:Button ID="Button3" runat="server" Text="Insert" class="btn" OnClick="Button3_Click"/>    
                              <br />
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                         </div>                        
                       </form>                          
                    </div>
                   </div>
                 </center>                  
               </div>
             </div> 
           </div>
         </div>

        
 </body>
 </html>