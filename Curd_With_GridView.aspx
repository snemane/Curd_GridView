﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Curd_With_GridView.aspx.cs" Inherits="ASP.NET_With_Curd_Gridview.Curd_With_GridView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1049px;
        }
        .auto-style2 {
            width: 461px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">  
            
            <tr>  
                <td> </td>  
                <td style="text-align: center">  
                    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Name :"></asp:Label>  
                </td>  
                <td style="text-align: center">  
                    <asp:TextBox ID="name" runat="server" Font-Size="X-Large"></asp:TextBox>  
                </td>  
                <td> </td>  
                <td> </td>  
                <td class="auto-style2"> </td>  
            </tr>  
            <tr>  
                <td> </td>  
                <td style="text-align: center">  
                    <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="Email ID :"></asp:Label>  
                </td>  
                <td style="text-align: center">  
                    <asp:TextBox ID="email" runat="server" Font-Size="X-Large"></asp:TextBox>  
                </td>  
                <td> </td>  
                <td> </td>  
                <td class="auto-style2"> </td>  
            </tr>  
            <tr>  
                <td> </td>  
                <td style="text-align: center">  
                    <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="Phone:"></asp:Label>  
                </td>  
                <td style="text-align: center">  
                    <asp:TextBox ID="phone" runat="server" Font-Size="X-Large"></asp:TextBox>  
                </td>   
                <td> </td>  
                <td> </td>  
                <td class="auto-style2">
                   
                </td>  

            </tr>  
            <tr>  
                <td> </td>  
                <td> </td>  
                <td style="text-align: center">  
                    <asp:Button ID="Button1" runat="server" BorderStyle="None" Font-Size="X-Large" OnClick="Button1_Click" Text="Submit" />  
                </td>  
                <td> </td>  
                <td> </td>  
                <td class="auto-style2"> </td>  
            </tr>  
            <tr>  
                <td> </td>  
                <td> </td>  
                <td>  
                    <asp:Label ID="Label4" runat="server" Font-Size="X-Large"></asp:Label>  
                </td>  
                <td> </td>  
                <td> </td>  
                <td class="auto-style2"> </td>  
            </tr>  
       
            <tr>  
                <td> </td>  
                <td> </td>  
                <td>  
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" Width="330px">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        </Columns>
                        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" ForeColor="#003399" />
                        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SortedAscendingCellStyle BackColor="#EDF6F6" />
                        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                        <SortedDescendingCellStyle BackColor="#D6DFDF" />
                        <SortedDescendingHeaderStyle BackColor="#002876" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" SelectCommand="SELECT * FROM [selfinfo]" UpdateCommand="update selfinfo set name=@name,email=@email,phone=@phone where id=@id" deleteCommand="delete from selfinfo where id=@id" ></asp:SqlDataSource>
                </td>  
                <td> </td>  
                <td> </td>  
                <td class="auto-style2"> </td>  
            </tr>  
                 </table>
        </div>
    </form>
</body>
</html>
