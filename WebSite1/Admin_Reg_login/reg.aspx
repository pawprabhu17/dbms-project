<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reg.aspx.cs" Inherits="reg" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>REGISTRATION PAGE</title>
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
            color:white;
            padding: 10px 20px;
            margin-top: 20px;
            margin-bottom: 20px;
            border-radius: 5px;
            box-shadow: 0px 17px 10px -10px rgba(0,0,0,0.4);
            cursor: pointer;
            transition: all ease-in-out 300ms;
        }
        .btn:hover{
            color:white;
            box-shadow: 0px 37px 20px -20px rgba(0,0,0,0.2);
            transform: translate(0px, -4px) scale(1.0);            
        }
    </style>
</head>
<body>
    <br />
    <h3 align="center">Register Page For Admins</h3>
    <br />
    <div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Register</h3>
            </div>
            <div class="panel-body">
                <form id="form" runat="server" method="post">
                    <fieldset>
                        <div class="form-group m-0">
                            <label>Enter Username &nbsp;</label>&nbsp;
                            <asp:TextBox ID="TxtName1" class="form-control" runat="server" Height="30px" Width="500px"></asp:TextBox>
                            <asp:RequiredFieldValidator ErrorMessage="Username Required" ForeColor="Red" ControlToValidate="TxtName1"
                             runat="server" />
                        </div>
                        <div class="form-group m-0">
                            <label>Enter Password&nbsp;</label>
                            &nbsp;
                            <asp:TextBox ID="TxtName2" runat="server" EnableTheming="True" class="form-control" TextMode="Password"  Height="30px" Width="500px"></asp:TextBox>
                            <asp:RequiredFieldValidator ErrorMessage="Password Required" ForeColor="Red" ControlToValidate="TxtName2"
                            runat="server" />
                        </div>
                        <div class="form-group" align="center">
                            <asp:Button ID="Button1" runat="server" Text="Register" class="btn" onclick="Button1_Click" />
                        </div>
                             <asp:Label ID="Label1" runat="server"></asp:Label>  
                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</body>
</html>


