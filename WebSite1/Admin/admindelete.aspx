<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admindelete.aspx.cs" Inherits="admindelete" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Page-3</title>
    <link rel="icon" type="image/ico" href="http://localhost:61655/Images/rnsit.jpg" />
   
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous"/>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <style type="text/css">
        body {
            margin: 0;
            padding: 0;
        }

        .btn {
            background-color:#021b38;
            color: white;
            padding: 10px 20px;
            margin-top: 20px;
            margin-bottom: 20px;w
            border-radius: 5px;
            box-shadow: 0px 17px 10px -10px rgba(0,0,0,0.4);
            cursor: pointer;
            transition: all ease-in-out 300ms;
        }
        .btn:hover {
               color: red;
               box-shadow: 0px 37px 20px -20px rgba(0,0,0,0.2);
               transform: translate(0px, -4px) scale(1.0);
        }
        .panel {
            border:2px;
            width: 600px;
            margin: 0 auto;
        }
        
        
    </style>
</head>
<body>
   
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous">
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
                        <a class="nav-link text-light" href="http://localhost:61655/Admin/adminpage.aspx">
                            <big>
                                <h5 class="d-inline">
                                    Admin Page
                                </h5>
                            </big>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>


    <div class="m-3">   
     <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Delete Records</h3>
            </div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <div class="panel-body">
               <form id="form" method="post" runat="server"> 
                <br />
                <div class="form-group m-0">
                    <label>Enter the USN to be deleted:</label>
                    <asp:TextBox ID="usn" class="form-control" runat="server" Height="40px"  placeholder="USN"></asp:TextBox>
                    <asp:RequiredFieldValidator ErrorMessage="USN Required" ForeColor="Red" ControlToValidate="usn" runat="server" />
                </div>
                <div class="form-group mt-2">
                    <asp:Button ID="ButtonDelete" runat="server" Text="Delete" class="btn" OnClick="ButtonDelete_Click"/> 
                    <br />
                    <asp:Label ID="Label2" runat="server" ></asp:Label>
                </div>
               </form>
            </div>
        </div>
    </div>
    </body>
    </html>