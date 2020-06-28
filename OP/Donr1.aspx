<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Donr1.aspx.cs" Inherits="bakwas.Donr1" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <link href="StyleSheet1.css" rel="stylesheet" />
    <style>
          body {
            font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
            background-image: url('image/pexels-photo-1125776.jpeg');
            background-repeat: no-repeat;
            background-size: cover;
        }
       
       
         #Repterr{
            position:absolute;
               left:68.80%;
            top:0px;
            width: 510px;
            height: 830px;
           overflow:scroll;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
            <div class="donor">
            <h1 style="text-align:center;">Donor</h1>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="d1" placeholder="Activity_Name" style="background-color:white;" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="User Name required" ForeColor="Red" ></asp:RequiredFieldValidator>
             <asp:TextBox ID="TextBox5" runat="server" CssClass="d1" placeholder="User_Name" style="background-color:white;" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="User Name required" ForeColor="Red" ></asp:RequiredFieldValidator>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="d2" placeholder="Address"></asp:TextBox>
            
            <asp:TextBox ID="TextBox4" runat="server"  CssClass="d3"  placeholder="Plant_Donate"></asp:TextBox><br />
            <asp:Button ID="Button" runat="server" CssClass="b1" Text="Save" OnClick="Button_Click"  />
        </div>



         <div id="Repterr">
     <asp:Repeater ID="RepterDetail" runat="server">  
     <HeaderTemplate>  
     <table style="border:1px solid #0000FF; width:510px; " >  
     <tr style=" background-color:coral; "  >  
     <td >  
     <h1 style="padding-left:10px;  color:aliceblue; font-size:28px;  text-align:center; font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;">CREATE ACTIVITY</h1>  
     </td>  
     </tr>  
     </HeaderTemplate>  
    <ItemTemplate>  
    <tr style="background-color:white">  
    <td>  
    <table style="background-color:snow;  border-top:1px dotted #df5015; width:500px; padding:14px; font-size:18px;" >  
    <tr >  
    <td >  
    Activity_Name:  
    <asp:Label ID="TextBox1" runat="server" Text='<%#Eval("Activity_Name") %>' Font-Bold="true" />  
    </td>  
    </tr>
    <tr>  
    <td> 
        User_Name:
    <asp:Label ID="TextBox2" runat="server" Text='<%#Eval("User_Name") %>' Font-Bold="true"/>  
    </td>  
    </tr>
    <tr>  
    <td >  
    Address:  
    <asp:Label ID="Label1" runat="server" Text='<%#Eval("Address") %>' Font-Bold="true"/>  
    </td>  
    </tr>
        <tr>  
    <td >  
    Plant_Donate:  
    <asp:Label ID="Label2" runat="server" Text='<%#Eval("Plant_Donate") %>' Font-Bold="true"/>  
    </td>  
    </tr>
      
    </table>  
    </td>  
    </tr>  
     
    <tr>  
    <td>  
    <table style="background-color:#EBEFF0;border-top:1px dotted #df5015;border-bottom:1px solid #df5015; width:510px" >  
    <tr>  
    <td >Post By: <asp:Label ID="TextBox5" runat="server" Font-Bold="true" Text='<%#Eval("User_Name") %>'/></td>  
    <td >Created Date:<asp:Label ID="lblDate" runat="server" Font-Bold="true" Text='<%#Eval("Post_Date") %>'/></td>  
    </tr>  
    </table>  
    </td>  
    </tr>  
    <tr>  
    <td colspan="2"> </td>  
    </tr>  
    </ItemTemplate>  
    <FooterTemplate>  
    </table>  
    </FooterTemplate>  
    </asp:Repeater>
             </div>

        

    </form>
</body>
</html>
