<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="join.aspx.cs" Inherits="bakwas.join" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
    function rebind() {
        $('#<%=Panel1.ClientID %>').modal({ appendTo: '#aspnetForm' });
        }
        function bind() {
        $('#<%=Panel2.ClientID %>').modal({ appendTo: '#aspnetForm' });
    }
    </script>
    <link href="StyleSheet1.css" rel="stylesheet" />
     <style>
         body {
            font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
            background-color:white;
        }
        .land{
    position: absolute;
    top: 40%;
    left: 20%;
    width: 580px;
    height: 790px;
    padding: 15px 30px;
    transform: translate(-50%,-40%);
    background-color:  rgba(255,255,255,0.5);
    border:1px solid darkgrey;
    border-radius:8px;
  
}
        .d1{
        width:340px;
        height:40px;
        margin-left:20px;
        margin-top:20px;
        padding-left:15px;
        font-size:20px;
        border-radius:7px;
        }
        .d2{
         width:340px;
        height:40px;
        margin-left:65px;
        margin-top:30px;
        margin-bottom:10px;
         padding-left:15px;
        font-size:20px;
         border-radius:7px;
        }
        .d3{
             width:360px;
        height:40px;
        margin-left:20px;
        padding-left:15px;
        font-size:20px;
         border-radius:7px;
         background-color:white;
         cursor:pointer;
        }
        .d3:hover{
            background-color:cornflowerblue;
        }
        .b1 {
            margin-top: 45px;
            width: 90px;
            height: 40px;
            background-color: dodgerblue;
            font-size: 20px;
            color: white;
            border-radius: 7px;
            float: right;
            margin-right: 70px;
            cursor: pointer;
        }
        #Repter{
            position:absolute;
            left:68.80%;
            top:700px;
            width: 535px;
            height: 830px;
           overflow: auto;
           border:1px solid grey;
        }
         #Repterr{
            position:absolute;
            left:68.80%;
            top:1600px;
            width: 535px;
            height: 830px;
           overflow: auto;
           border:1px solid grey;
        }
        .d4{
            width:130px;
            height:40px;
            padding-left:15px;
            font-size:20px;
            border-radius:7px;
            margin-left:60px;
            margin-top:30px;
            margin-bottom:10px;
        }
        .Background  
        {  
            background-color: Black;  
            filter: alpha(opacity=90);  
            opacity: 0.8;  
        } 
         .activity{
     position: absolute;
    width: 390px;
    height: 470px;
    background-color: white;
    border: 1px solid;
    border-color: darkgrey;
    border-radius: 5px;
    
        }
          .r1{
         background-color:transparent;
         font-size:20px;
         border:none;
         margin-bottom:22px;
         padding-left:6px;
         cursor:pointer;
        }
        .r1:hover{
            background-color:transparent;
        }
        .cancel{
             margin-top: 30px;
            margin-bottom: 25px;
            background-color: #690;
            border-radius: 8px;
            color: white;
            font-size: 20px;
            float: right;
            cursor: pointer;
            margin-right:8px;
            width: 100px;
            height: 40px;
        }
        .img{
text-align:center;
color:white;

        }
        .centered {
  position: absolute;
  top: 35%;
  left: 45%;
  transform: translate(-35%, -45%);
  font-size:64px;
  font-weight:400;
  opacity:0.8;
}
 .j1{
    margin-top: 25px;
    margin-bottom:15px;
    width: 90px;
    height: 40px;
    background-color:#690;
    font-size: 20px;
    color: white;
    border-radius: 7px;
    float:right;
    margin-right:32px;
    cursor: pointer;
        }
        a {
  display: block;
   text-decoration:none;
   color:black;
   font-size:20px;
   padding-left:20px;
   padding-bottom:10px;
   margin-top:15px;
    padding:30px,10px;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="img">
       <img style="width:100%; height:600px;"  src="image/walking-path-way-tunnel-59599.jpg" />
         <div class="centered" >Let's Join us</div></div>


        <div style="width:60%;height:750px;background-color:#142736;color:white; border-radius:6px; text-align:center;margin-top:130px;margin-left:60px;">
             <h1 style="margin-top:30px;padding-top:65px; font-size:40px;font-weight:400;">Join as Donor or Admin</h1>
                            <p style="font-size:28px;line-height:1.8;font-weight:300;padding-left:100px;padding-right:100px;">In order to stay below a temperature rise of 2 degrees,
                    we need to remove the excess carbon from our atmosphere. A simple nature-based solution exists.<br />According to the United Nations, countries must
                    have a forest cover of at least 25 per
                    cent of their total land and cities must have a forest cover of 10 per cent.Pakistan has less than 2.2 per cent total land that is forested. However,
                    another report indicates that country has even less than 1.91 per cent forest cover, which is devastating</p>
        </div>



             <div class="land" style="display:none;" >
            <h1 style="text-align:center;">Land_Owner</h1>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="d2" placeholder="User_Name"></asp:TextBox>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="d2" placeholder="City" style="background-color:white;" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="City Require" ForeColor="Red" ></asp:RequiredFieldValidator>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="d2" placeholder="Address"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Address required" ForeColor="Red" ></asp:RequiredFieldValidator>
                 <asp:TextBox ID="TextBox3" runat="server" CssClass="d4" placeholder="latitude"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="Latitude required" ForeColor="Red" ></asp:RequiredFieldValidator>
                 <asp:TextBox ID="TextBox4" runat="server" CssClass="d4" placeholder="longitude"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Longitude required" ForeColor="Red" ></asp:RequiredFieldValidator>
                 <asp:TextBox ID="TextBox6" runat="server" CssClass="d2" placeholder="Activity_Name"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox6" ErrorMessage="Activity_Name required" ForeColor="Red" ></asp:RequiredFieldValidator>
                 <asp:TextBox ID="TextBox7" runat="server" CssClass="d2" placeholder="Plant_Require"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox7" ErrorMessage="Plant required" ForeColor="Red" ></asp:RequiredFieldValidator>
                <asp:TextBox ID="TextBox8" runat="server" CssClass="d2" placeholder="Donor_Require"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox8" ErrorMessage="Donor required" ForeColor="Red" ></asp:RequiredFieldValidator>
               <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="User Name required" ForeColor="Red" ></asp:RequiredFieldValidator>  --%>
               <asp:Button ID="Butt1" runat="server" Text="Add" CssClass="b1" OnClick="Butt1_Click"  /></div>
               

        
       
     <div id="Repter">    
        <asp:Repeater ID="RepterDetails" runat="server" >    
     <HeaderTemplate>  
     <table style=" width:510px;  " >  
     <tr style=" background-color:#690; "  >  
     <td >  
     <h1 style="padding-left:10px;  color:aliceblue; font-size:28px;  text-align:center; font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;">JOIN ACTIVITY</h1>  
     </td>  
     </tr>  
     </HeaderTemplate>  
    <ItemTemplate>  
    <tr style="background-color:white">  
    <td>  
    <table style="background-color:white;  width:450px; padding:14px; font-size:18px;" >  
    <tr  >  
    <td >  
    City:  
    <asp:Label ID="TextBox1" runat="server" Text='<%#Eval("City") %>' Font-Bold="true" />  
    </td>  
    </tr>
    <tr >  
    <td> 
        Address:
    <asp:Label ID="TextBox2" runat="server" Text='<%#Eval("Address") %>'/>  
    </td>  
    </tr>
    <tr>  
    <td >  
    Day_Require:  
    <asp:Label ID="Label1" runat="server" Text='<%#Eval("Activity_Name") %>' Font-Bold="true"/>  
    </td>  
    </tr>
        <tr >  
    <td >  
    Plant_Require:  
    <asp:Label ID="Label2" runat="server" Text='<%#Eval("Plant_Require") %>' Font-Bold="true"/>  
    </td>  
    </tr>
        <tr >  
    <td >  
    Participant_Require:  
    <asp:Label ID="Label3" runat="server" Text='<%#Eval("Days_Require") %>' Font-Bold="true"/>  
    </td>  
    </tr>
    </table>  
    </td>  
    </tr>  
     
    <tr>  
    <td>  
    <table style="background-color:white;border-top:1px solid grey;border-bottom:1px solid grey; width:510px; font-size:18px;"  >  
    <tr>  
    <td >Post By: <asp:Label ID="TextBox5" runat="server" Font-Bold="true" Text='<%#Eval("User_Name") %>'/></td>  
    <td >Created Date:<asp:Label ID="lblDate" runat="server" Font-Bold="true" Text='<%#Eval("Post_Date") %>'/></td>  
    
    </tr>  
    </table>  
    </td>  
    </tr>  
          <table style="background-color:white;border-top:1px solid grey;border-bottom:1px solid grey; width:510px" > 
    <tr>   
         <td > <asp:Button ID="Button2" runat="server" Text="Join"  class="j1"    /> </td>
    <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender2" runat="server" CancelControlID="Button5" BackgroundCssClass="Background" PopupControlID="Panel1" TargetControlID="Button2"></ajaxToolkit:ModalPopupExtender>
    
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
                        <asp:Panel ID="Panel1" runat="server">
                     <div class="activity">
             <div style="background-color:#690; height:45px; text-align:center;padding-top:25px; color:white; font-size:26px;font-weight:500;">Let's JOIN</div>
            <table>
            <tr><td> <span class="glyphicon glyphicon-ok"></span>
          <%--  <asp:Button ID="Button1" runat="server" Text="Donor" CssClass="r1"  OnClick="Button1_Click" /></td></tr>--%>
              <a href="Donor.aspx">Donor</a></td></tr>
         
           <tr><td><span class="glyphicon glyphicon-ok"></span>
               <a href="Admin.aspx">Admin</a> </td></tr>
                </table>
            <asp:Button ID="Button5" runat="server" Text="Cancel" CssClass="cancel" />
        </div>
     </asp:Panel>
            <asp:UpdateProgress ID="UpdateProgress1" runat="server"></asp:UpdateProgress>
                      
           

          <div class="donor" style="display:none;">
            <h1 style="text-align:center;">Donor</h1>
            <asp:TextBox ID="TextBox9" runat="server" CssClass="d1" placeholder="Activity_Name" style="background-color:white;" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox1" ErrorMessage="User Name required" ForeColor="Red" ></asp:RequiredFieldValidator>
             <asp:TextBox ID="TextBox10" runat="server" CssClass="d1" placeholder="User_Name" style="background-color:white;" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox1" ErrorMessage="User Name required" ForeColor="Red" ></asp:RequiredFieldValidator>
            <asp:TextBox ID="TextBox11" runat="server" CssClass="d2" placeholder="Address"></asp:TextBox>
             <asp:TextBox ID="TextBox12" runat="server"  CssClass="d3"  placeholder="Plant_Donate"></asp:TextBox><br />
            <asp:Button ID="Button" runat="server" CssClass="b1" Text="Save" OnClick="Button_Click" />
        </div>

          <div style="width:60%;height:750px;background-color:#142736;color:white; border-radius:6px; text-align:center;margin-top:150px;margin-left:60px;">
               <h1 style="margin-top:30px;padding-top:65px; font-size:40px;font-weight:400;">Join as Land_Owner or Admin</h1>
                            <p style="font-size:28px;line-height:1.8;font-weight:300;padding-left:100px;padding-right:100px;">In order to stay below a temperature rise of 2 degrees,
                    we need to remove the excess carbon from our atmosphere. A simple nature-based solution exists.<br />According to the United Nations, countries must
                    have a forest cover of at least 25 per
                    cent of their total land and cities must have a forest cover of 10 per cent.Pakistan has less than 2.2 per cent total land that is forested. However,
                    another report indicates that country has even less than 1.91 per cent forest cover, which is devastating</p>
        </div>

        
        
        <div id="Repterr">     
     <asp:Repeater ID="RepterDetail" runat="server">  
     <HeaderTemplate>  
     <table style=" width:510px; " >  
     <tr style=" background-color:#690; "  >  
     <td >  
     <h1 style="padding-left:10px;  color:aliceblue; font-size:28px;  text-align:center; font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;">JOIN ACTIVITY</h1>  
     </td>  
     </tr>  
     </HeaderTemplate>  
    <ItemTemplate>  
    <tr style="background-color:white">  
    <td>  
    <table style="background-color:white;  width:500px; padding:14px; font-size:18px;" >  
    <tr >  
    <td >  
    Activity:  
    <asp:Label ID="TextBox1" runat="server" Text='<%#Eval("Activity_Name") %>' Font-Bold="true" />  
    </td>  
    </tr>
    <tr>  
    <td> 
        User_Name:
    <asp:Label ID="TextBox2" runat="server" Text='<%#Eval("User_Name") %>'/>  
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
    <table style="background-color:white;border-top:1px solid grey;border-bottom:1px solid grey; width:510px; font-size:18px;" >  
    <tr>  
    <td >Post By: <asp:Label ID="TextBox5" runat="server" Font-Bold="true" Text='<%#Eval("User_Name") %>'/></td>  
    <td >Created Date:<asp:Label ID="lblDate" runat="server" Font-Bold="true" Text='<%#Eval("Post_Date") %>'/></td>  
    </tr>  
    </table>  
    </td>  
    </tr>  
         <table style="background-color:white;border-top:1px solid grey;border-bottom:1px solid grey; width:510px" > 
    <tr>   
         <td > <asp:Button ID="Button" runat="server" Text="Join"  class="j1" CommandName="bind"   /> </td>
    <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender3" runat="server" CancelControlID="Button1" BackgroundCssClass="Background" PopupControlID="Panel2" TargetControlID="Button"></ajaxToolkit:ModalPopupExtender>
    
    </tr>  
    </table>  
    </td>  
    </tr> 
    <tr> 
    <tr>  
    <td colspan="2"> </td>  
    </tr>  
    </ItemTemplate>  
    <FooterTemplate>  
    </table>  
    </FooterTemplate>  
    </asp:Repeater>       
    
                       
           
                <asp:Panel ID="Panel2" runat="server">
                     <div class="activity">
             <div style="background-color:#690; height:45px; text-align:center;padding-top:25px; color:white; font-size:26px;font-weight:500;">Let's JOIN</div>
            <table>
            <tr><td> <span class="glyphicon glyphicon-ok"></span>
          <%--  <asp:Button ID="Button1" runat="server" Text="Donor" CssClass="r1"  OnClick="Button1_Click" /></td></tr>--%>
              <a href="Land1.aspx">Land_Owner</a></td></tr>
         
           <tr><td><span class="glyphicon glyphicon-ok"></span>
               <a href="Admin.aspx">Admin</a> </td></tr>
                </table>
            <asp:Button ID="Button1" runat="server" Text="Cancel" CssClass="cancel" />
                         </div>
              </asp:Panel>            
                 </div>
      
           
          
       
    </form>
</body>
</html>
