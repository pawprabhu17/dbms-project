<%@ Page Language="C#" AutoEventWireup="true" CodeFile="studentfeedback.aspx.cs" Inherits="Student_studentfeedback" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Page-2</title>
    <link rel="icon" type="image/ico" href="http://localhost:61655/Images/rnsit.jpg" />
   <link rel="icon" type="image/ico" href="http://localhost:61655/Images/rnsit.jpg" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


    <style type="text/css">
        body {
            margin: 0;
            padding: 0;
        }

        .btn {
            background-color: #1B5E20;
            color: white;
            cursor: pointer;            
        }
        .btn:hover {
            color: white;
            background-color: #021b38;
        }
        h2{
                color:#021b38;
        }
        .form-auth {
	            border:2px solid gray;
	            background-color: #E0E0E0;
	            max-width: 540px;
	            padding: 3%;
	            margin: 0 auto;
         }
        .panel {
            width: 600px;
            margin:1.2% auto 1.2% auto; 
            border:2px solid black;
        }
        .panel-heading{
            background-color: #021b38;
            color:white;
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

   <center><h2 >Submit Feedback For The Corresponding Subjects:</h2>
    <form class="my-3" id="form1" runat="server">
        <div class="form-group">            
            <asp:TextBox ID="usn" class="form-control" runat="server" Height="41px" Width="400px" placeholder="Enter USN"></asp:TextBox>
            <asp:RequiredFieldValidator ErrorMessage="USN Required" ForeColor="Red" ControlToValidate="usn" runat="server" />
        </div></center>
         <div class="panel" >
            <div class="panel-heading">
                <h3 class="panel-title mb-3">Subject Code(15CS51):</h3>
            </div>
             <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <div class="panel-body">
                <asp:CheckBoxList runat="server" ID="feedback1" OnSelectedIndexChanged="feedback1_OnSelectedIndexChanged" AutoPostBack="True">
                    <Items>
                        <asp:ListItem Text="Excellent" Value="Excellent"></asp:ListItem>
                        <asp:ListItem Text="Very Good" Value="Very Good"></asp:ListItem>
                        <asp:ListItem Text="Good" Value="Good"></asp:ListItem>
                         <asp:ListItem Text="Not Satisfied" Value="Not Satisfied"></asp:ListItem>
                    </Items>
                </asp:CheckBoxList>
            </div>
        </div>
        <div class="panel">
            <div class="panel-heading">
                <h3 class="panel-title mb-3">Subject Code(15CS52):</h3>
            </div>
            <div class="panel-body">
                <asp:CheckBoxList runat="server" ID="feedback2" OnSelectedIndexChanged="feedback2_OnSelectedIndexChanged" AutoPostBack="True">
                    <Items>
                        <asp:ListItem Text="Excellent" Value="Excellent"></asp:ListItem>
                        <asp:ListItem Text="Very Good" Value="Very Good"></asp:ListItem>
                        <asp:ListItem Text="Good" Value="Good"></asp:ListItem>
                         <asp:ListItem Text="Not Satisfied" Value="Not Satisfied"></asp:ListItem>
                    </Items>
                </asp:CheckBoxList>
            </div>
        </div>
        <div class="panel">
            <div class="panel-heading">
                <h3 class="panel-title mb-3">Subject Code(15CS53):</h3>
            </div>
            <div class="panel-body">
                <asp:CheckBoxList runat="server" ID="feedback3" OnSelectedIndexChanged="feedback3_OnSelectedIndexChanged" AutoPostBack="True">
                    <Items>
                        <asp:ListItem Text="Excellent" Value="Excellent"></asp:ListItem>
                        <asp:ListItem Text="Very Good" Value="Very Good"></asp:ListItem>
                        <asp:ListItem Text="Good" Value="Good"></asp:ListItem>
                         <asp:ListItem Text="Not Satisfied" Value="Not Satisfied"></asp:ListItem>
                    </Items>
                </asp:CheckBoxList>
            </div>
        </div>
        <div class="panel">
            <div class="panel-heading">
                <h3 class="panel-title mb-3">Subject Code(15CS54):</h3>
            </div>
            <div class="panel-body">
                <asp:CheckBoxList runat="server" ID="feedback4" OnSelectedIndexChanged="feedback4_OnSelectedIndexChanged" AutoPostBack="True">
                    <Items>
                        <asp:ListItem Text="Excellent" Value="Excellent"></asp:ListItem>
                        <asp:ListItem Text="Very Good" Value="Very Good"></asp:ListItem>
                        <asp:ListItem Text="Good" Value="Good"></asp:ListItem>
                         <asp:ListItem Text="Not Satisfied" Value="Not Satisfied"></asp:ListItem>
                    </Items>
                </asp:CheckBoxList>
            </div>
        </div>
        <div class="panel">
            <div class="panel-heading">
                <h3 class="panel-title mb-3">Subject Code(15CS553):</h3>
            </div>
            <div class="panel-body">
                <asp:CheckBoxList runat="server" ID="feedback5" OnSelectedIndexChanged="feedback5_OnSelectedIndexChanged" AutoPostBack="True">
                    <Items>
                        <asp:ListItem Text="Excellent" Value="Excellent"></asp:ListItem>
                        <asp:ListItem Text="Very Good" Value="Very Good"></asp:ListItem>
                        <asp:ListItem Text="Good" Value="Good"></asp:ListItem>
                         <asp:ListItem Text="Not Satisfied" Value="Not Satisfied"></asp:ListItem>
                    </Items>
                </asp:CheckBoxList>
            </div>
        </div>
        <div class="panel">
            <div class="panel-heading">
                <h3 class="panel-title mb-3">Subject Code(15CS562/564):</h3>
            </div>
            <div class="panel-body">
                <asp:CheckBoxList runat="server" ID="feedback6" OnSelectedIndexChanged="feedback6_OnSelectedIndexChanged" AutoPostBack="True">
                    <Items>
                        <asp:ListItem Text="Excellent" Value="Excellent"></asp:ListItem>
                        <asp:ListItem Text="Very Good" Value="Very Good"></asp:ListItem>
                        <asp:ListItem Text="Good" Value="Good"></asp:ListItem>
                         <asp:ListItem Text="Not Satisfied" Value="Not Satisfied"></asp:ListItem>
                    </Items>
                </asp:CheckBoxList>
            </div>
        </div>
    <center>
        <asp:Button runat="server" ID="button3" class="btn" Text="Submit" OnClick="Button3_Click" />
    </center>
    </form>
    
</body>
</html>
