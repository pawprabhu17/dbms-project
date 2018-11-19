<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminpwchange.aspx.cs" Inherits="Admin_adminpwchange" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Page-6</title>
    <link rel="icon" type="image/ico" href="http://localhost:61655/Images/rnsit.jpg" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style type="text/css">
        .panel {
            width: 600px;
            margin: 0 auto;
        }

        .btn {
            background-color: #021b38;
            cursor: pointer;
            color:white;
        }
        .btn:hover{
            color:white;
            box-shadow: 1px 2px 2px #021b38;
        }
    </style>
</head>
<body>
   <br />
    <h3 align="center">Change Passwords For Admins<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    </h3>
    <br />
    <div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Change Password for :
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </h3>
            </div>
            <div class="panel-body">
                <form id="form" runat="server" method="post">
                    <fieldset>
                        <div class="form-group m-0">
                            <label>Enter Old Password &nbsp;</label>&nbsp;
                            <asp:TextBox ID="TxtName1" class="form-control" EnableTheming="True" runat="server" TextMode="Password" Height="30px" Width="500px"></asp:TextBox>
                            <asp:RequiredFieldValidator ErrorMessage="Password Required" ForeColor="Red" ControlToValidate="TxtName1"
                             runat="server" />
                        </div>
                        <div class="form-group m-0">
                            <label>Enter New Password&nbsp;</label>
                            &nbsp;
                            <asp:TextBox ID="TxtName2" runat="server" EnableTheming="True" class="form-control" TextMode="Password"  Height="30px" Width="500px"></asp:TextBox>
                            <asp:RequiredFieldValidator ErrorMessage="Password Required" ForeColor="Red" ControlToValidate="TxtName2"
                            runat="server" />
                        </div> 
                        <div class="form-group m-0">
                            <label>Confirm Password&nbsp;</label>
                            &nbsp;
                            <asp:TextBox ID="TextBox1" runat="server" EnableTheming="True" class="form-control" TextMode="Password"  Height="30px" Width="500px"></asp:TextBox>
                            <asp:RequiredFieldValidator ErrorMessage="Password Required" ForeColor="Red" ControlToValidate="TxtName2"
                            runat="server" />
                        </div> 
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TxtName2" ControlToValidate="TextBox1" ForeColor="Red" ErrorMessage="Password Mismatch"></asp:CompareValidator>   
                        <div class="form-group" align="center">
                            <asp:Button ID="Button3" runat="server" Text="Insert" class="btn" OnClick="Button3_Click"/>    
                              <br />
                            <asp:Label ID="lblMessage" runat="server"></asp:Label>
                         </div>  
                    </fieldset>
                </form> 
            </div>
        </div>
    </div>   
</body>
</html>
