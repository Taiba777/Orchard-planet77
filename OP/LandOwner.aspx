<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LandOwner.aspx.cs" Inherits="bakwas.LandOwner" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title></title>
    <script src="https://code.jquery.com/jquery-1.12.0.js" integrity="sha256-yFU3rK1y8NfUCd/B4tLapZAy9x0pZCqLZLmFL3AWb7s=" crossorigin="anonymous"></script>
    <script src="jquery-ui-1.12.0/jquery-ui-1.12.0/jquery-ui.js"></script>
    <link href="jquery-ui-1.12.0/jquery-ui-1.12.0/jquery-ui.css" rel="stylesheet" />
    <link href="StyleSheet1.css" rel="stylesheet" />
      <script type="text/javascript">
  
          $(document).ready(function () {
           
            $('#Butt1').click(function () {
              
                va: parseInt($('#TextBox7').val());
                    valu: parseInt($('#TextBox8').val()),
                        perc = ((va / valu) * 100),
                        animateProgressBar(perc);
            });

             function animateProgressBar(percentComplete) {
                $('#innerDiv').animate({
                    'width': (500 * percentComplete) / 100
                }, 2000);
                             
                   }   
          });
 </script>
   
  
    <style>
         body {
            font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
            background-image: url('image/land.jpg');
            background-repeat: no-repeat;
            background-size: cover;
        }
       
    </style>
   
</head>
<body>
    <form id="form1" runat="server">
        
            <div class="land">
            <h1 style="text-align:center;">Land_Owner</h1>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="d2" placeholder="Activity_Name"></asp:TextBox>
                <asp:TextBox ID="TextBox6" runat="server" CssClass="d2" placeholder="User_Name"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox6" ErrorMessage="User_Name required" ForeColor="Red" ></asp:RequiredFieldValidator>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="d2" placeholder="City" style="background-color:white;" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="City Require" ForeColor="Red" ></asp:RequiredFieldValidator>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="d2" placeholder="Address"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Address required" ForeColor="Red" ></asp:RequiredFieldValidator>
                
                 <asp:TextBox ID="TextBox3" runat="server" CssClass="d4" placeholder="latitude"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="Latitude required" ForeColor="Red" ></asp:RequiredFieldValidator>
                 <asp:TextBox ID="TextBox4" runat="server" CssClass="d4" placeholder="longitude"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Longitude required" ForeColor="Red" ></asp:RequiredFieldValidator>
                 
                 <asp:TextBox ID="TextBox7" runat="server" CssClass="d2" placeholder="Plant_Require"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox7" ErrorMessage="Plant required" ForeColor="Red" ></asp:RequiredFieldValidator>
                <asp:TextBox ID="TextBox8" runat="server" CssClass="d2" placeholder="Days_Require"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox8" ErrorMessage="Days required" ForeColor="Red" ></asp:RequiredFieldValidator>


               <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="User Name required" ForeColor="Red" ></asp:RequiredFieldValidator>  --%>
               <asp:Button ID="Butt1" runat="server" Text="Add" CssClass="b1" OnClick="Butt1_Click"  /></div>
               
       
        
        <%--  --%>
     <div id="Repter">
     <asp:Repeater ID="RepterDetails" runat="server">  
     <HeaderTemplate>  
     <table style="border:1px solid #0000FF; width:615px; " >  
     <tr style=" background-color:coral; "  >  
     <td >  
     <h1 style="padding-left:10px;  color:aliceblue; font-size:28px;  text-align:center; font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;">JOIN ACTIVITY</h1>  
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
        City:
    <asp:Label ID="TextBox2" runat="server" Text='<%#Eval("City") %>' Font-Bold="true"/>  
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
    Plant_Require:  
    <asp:Label ID="Label2" runat="server" Text='<%#Eval("Plant_Require") %>' Font-Bold="true"/>  
           <div id="outerDiv" style="background-color:#EEEEEE; height:20px; width:500px;  padding:5px"></div>
        <div id="innerDiv" style="width:0px; height:19px; text-align:center; background-color:red; color:white"></div>
       
    </td>  
    </tr>
        <tr>  
    <td >  
    Days_Require:  
    <asp:Label ID="Label3" runat="server" Text='<%#Eval("Days_Require") %>' Font-Bold="true"/>  
    </td>  
    </tr>
    </table>  
    </td>  
    </tr>  
     
    <tr>  
    <td>  
    <table style="background-color:#EBEFF0;border-top:1px dotted #df5015;border-bottom:1px solid #df5015; width:700px" >  
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

