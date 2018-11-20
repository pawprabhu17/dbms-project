<%@ Page Language="C#" AutoEventWireup="true" CodeFile="studentreg.aspx.cs" Inherits="studentreg" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Page-5</title>
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
            padding: 10px 20px;
            margin-top: 20px;
            margin-bottom: 20px;
            border-radius: 5px;
            box-shadow: 0px 17px 10px -10px rgba(0,0,0,0.4);
            cursor: pointer;
            transition: all ease-in-out 300ms;
            
        }
    </style>
</head>
<body>
    <br />
    <h3 align="center">Register Page For Students</h3>
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
                            <label>Enter USN &nbsp;</label>&nbsp;
                            <asp:TextBox ID="usn" class="form-control" runat="server" Height="30px" Width="503px" MaxLength="10"></asp:TextBox>
                            <asp:RequiredFieldValidator ErrorMessage="USN Required" ForeColor="Red" ControlToValidate="usn"
                             runat="server" />
                        </div>                        
                        <div class="form-group" align="center">
                            <asp:Button ID="Button1" runat="server" Text="Register" class="btn" onclick="Button1_Click" Width="129px" />
                        </div>
                             <asp:Label ID="Label1" runat="server"></asp:Label>  
                    </fieldset>
                </form>
            </div>
        </div>
    </div>
    <br />
    <br />
    <br />

    <center>
        <div class="row">
            <div class="col-lg-12">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="True"
                OnPageIndexChanging="OnPageIndexChanging" CellPadding="10" ForeColor="#333333" GridLines="None" Width="302px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField ItemStyle-Width="130px" DataField="usn" HeaderText="USN" >
                     <ItemStyle Width="130px"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField ItemStyle-Width="130px" DataField="password" HeaderText="PASSWORD" >                
                     <ItemStyle Width="130px"></ItemStyle>
                    </asp:BoundField>
                </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor=" #021b38" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </div>
        </div>
    </center>
</body>
</html>

