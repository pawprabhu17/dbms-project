<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminview.aspx.cs" Inherits="adminview" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Page-2</title>
    <link rel="icon" type="image/ico" href="http://localhost:61655/Images/rnsit.jpg" />
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style type="text/css">
        body {
            margin: 0;
            padding: 0;
        }

        /*.btn {
            background-color: #1B5E20;
            color: white;
            padding: 10px 20px;
            margin-top: 20px;                  
            margin-bottom: 20px;
            border-radius: 5px;
            box-shadow: 0px 17px 10px -10px rgba(0,0,0,0.4);
            cursor: pointer;
            transition: all ease-in-out 300ms;
        }
        .btn:hover {
            color: white;
            box-shadow: 0px 37px 20px -20px rgba(0,0,0,0.2);
            transform: translate(0px, -4px) scale(1.0);
        }*/
        
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
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
    <center>
    <div class="row m-3">
        <div class="col-lg-12">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="True"
            OnPageIndexChanging="OnPageIndexChanging" PageSize="20" CellPadding="10" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField ItemStyle-Width="130px" DataField="Usn" HeaderText="USN" >
                    <ItemStyle Width="130px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField ItemStyle-Width="130px" DataField="Student_Name" HeaderText="STUDENT NAME" >
                    <ItemStyle Width="130px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField ItemStyle-Width="130px" DataField="Phone_num" HeaderText="PHONE" >
                    <ItemStyle Width="130px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField ItemStyle-Width="130px" DataField="Gender" HeaderText="GENDER" >
                    <ItemStyle Width="130px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField ItemStyle-Width="130px" DataField="Address" HeaderText="ADDRESS" >
                    <ItemStyle Width="130px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField ItemStyle-Width="130px" DataField="Section" HeaderText="SECTION" >
                    <ItemStyle Width="130px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField ItemStyle-Width="130px" DataField="Semester" HeaderText="SEM" >
                    <ItemStyle Width="130px"></ItemStyle>
                </asp:BoundField>
            </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#021b38" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </div>
    <div class="row m-3">
        <div class="col-lg-12">
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" AllowPaging="True"
            OnPageIndexChanging="OnPageIndexChanging" PageSize="20" CellPadding="10" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField ItemStyle-Width="130px" DataField="Department_name" HeaderText="DEPARTMENT" >
<ItemStyle Width="130px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField ItemStyle-Width="130px" DataField="Usn" HeaderText="USN" >            
<ItemStyle Width="130px"></ItemStyle>
                </asp:BoundField>
            </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#021b38" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
        </div>
    </div>
    <div class="row m-3">
        <div class="col-lg-12">
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" AllowPaging="True"
            OnPageIndexChanging="OnPageIndexChanging" PageSize="20" CellPadding="10" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField ItemStyle-Width="130px" DataField="subject_code" HeaderText="SUB CODE" >
<ItemStyle Width="130px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField ItemStyle-Width="130px" DataField="subject_name" HeaderText="SUB NAME" >
<ItemStyle Width="130px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField ItemStyle-Width="130px" DataField="Usn" HeaderText="USN" >
<ItemStyle Width="130px"></ItemStyle>
                </asp:BoundField>
            </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#021b38" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
        </div>
    </div>
    <div class="row m-3">
        <div class="col-lg-12">
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" AllowPaging="True"
            OnPageIndexChanging="OnPageIndexChanging" PageSize="20" CellPadding="10" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>            
                <asp:BoundField ItemStyle-Width="130px" DataField="Usn" HeaderText="USN" > 
<ItemStyle Width="130px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField ItemStyle-Width="130px" DataField="subject_code" HeaderText="SUB CODE" >
<ItemStyle Width="130px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField ItemStyle-Width="130px" DataField="marks1" HeaderText="IA1 MARKS" >
<ItemStyle Width="130px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField ItemStyle-Width="130px" DataField="marks2" HeaderText="IA2 MARKS" >
<ItemStyle Width="130px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField ItemStyle-Width="130px" DataField="marks3" HeaderText="IA3 MARKS" >                
<ItemStyle Width="130px"></ItemStyle>
                </asp:BoundField>
            </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#021b38" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
        </div>
    </div>
   <div class="row m-3">
        <div class="col-lg-12">
            <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" AllowPaging="True"
            OnPageIndexChanging="OnPageIndexChanging" PageSize="20" CellPadding="10" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>            
                <asp:BoundField ItemStyle-Width="130px" DataField="Usn" HeaderText="USN" > 
<ItemStyle Width="130px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField ItemStyle-Width="130px" DataField="subject_code" HeaderText="SUB CODE" >
<ItemStyle Width="130px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField ItemStyle-Width="130px" DataField="percentage" HeaderText="ATTENDANCE PERCENTAGE" >
<ItemStyle Width="130px"></ItemStyle>
                </asp:BoundField>
            </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#021b38" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
        </div>
    </div>
</center>
    </form>

</body>
</html>
