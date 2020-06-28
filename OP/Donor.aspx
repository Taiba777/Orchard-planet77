<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Donor.aspx.cs" Inherits="bakwas.Donor" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" />
    <%-- <script type="text/javascript">
    function rebind() {
  
        $find("sh").show();
        return false;
    }
    </script>--%>
     <script type="text/javascript">
    function sh() {
         $find('sh').show();
    }
    </script>
<style>
        body {
            font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
            background-image: url('image/pexels-photo-1125776.jpeg');
            background-repeat: no-repeat;
            background-size: cover;
        }
       

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="donor">
            <h1 style="text-align:center;">Donor</h1>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="d1" placeholder="Activity_Name" style="background-color:white;" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="User Name required" ForeColor="Red" ></asp:RequiredFieldValidator>
             <asp:TextBox ID="TextBox4" runat="server" CssClass="d1" placeholder="User_Name" style="background-color:white;" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="User Name required" ForeColor="Red" ></asp:RequiredFieldValidator>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="d2" placeholder="Number of plants"></asp:TextBox>
            
            <asp:TextBox ID="TextBox3" runat="server"  CssClass="d3"  placeholder="Plant_Category"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" CssClass="b1" Text="Add" OnClick="Button1_Click" onclientclick="sh();" />
              <asp:Button ID="Button2" runat="server" CssClass="b2" Text="Save"  />
        </div>




         <div id="Repter">
     <asp:Repeater ID="RepterDetails" runat="server">  
     <HeaderTemplate>  
     <table style="border:1px solid #0000FF; width:615px; " >  
     <tr style=" background-color:coral; "  >  
     <td >  
     <h1 style="padding-left:10px;  color:aliceblue; font-size:28px;  text-align:center; font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;">Joined Activities</h1>  
     </td>  
     </tr>  
     </HeaderTemplate>  
    <ItemTemplate>  
    <tr style="background-color:white">  
    <td>  
    <table style="background-color:snow;  border-top:1px dotted #df5015; width:500px; padding:14px; font-size:18px;" >  
    <tr >  
    <td >  
    Activity:  
    <asp:Label ID="TextBox1" runat="server" Text='<%#Eval("Activity_Name") %>' Font-Bold="true" />  
    </td>  
    </tr>
   
    <tr>  
    <td >  
    Day_Require:  
    <asp:Label ID="Label1" runat="server" Text='<%#Eval("No_of_plant") %>' Font-Bold="true"/>  
    </td>  
    </tr>
        <tr>  
    <td >  
    Plant_Require:  
    <asp:Label ID="Label2" runat="server" Text='<%#Eval("Catogary") %>' Font-Bold="true"/>  
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
  
        
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                        <asp:Panel ID="Panel1" runat="server"  style="display: none;"  >
                     <div class="activity">
                            <div style="background-color:#690; height:45px; text-align:center;padding-top:25px; color:white;font-size:26px;font-weight:500;">Communication</div>
                            <p style="font-size:18px; padding-left:10px;padding-top:18px;"> For further Activity progress and communication with "Land_Owner" use this platform <a href="chat.aspx">Let's communicate</a>
                         </p>
            <asp:Button ID="Button5" runat="server" Text="Cancel" CssClass="cancel" />
        </div>
 </asp:Panel>
                
       <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender2" runat="server" CancelControlID="Button5" BackgroundCssClass="Background" PopupControlID="Panel1"  TargetControlID="Button2"></ajaxToolkit:ModalPopupExtender>

    </form>
</body>
</html>
