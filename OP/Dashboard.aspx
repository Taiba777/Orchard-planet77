<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="bakwas.Dashboard" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <style>

body {
    font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
    background-color:#17202A;
    
}
.land {
    position: absolute;
    top: 40%;
    left: 20%;
    width: 580px;
    height: 790px;
    padding: 15px 30px;
    transform: translate(-50%,-40%);
    background-color: rgba(255,255,255,0.5);
    border: 1px solid darkgrey;
    border-radius: 8px;
}
.d2 {
    width: 340px;
    height: 40px;
    margin-left: 65px;
    margin-top: 30px;
    margin-bottom: 10px;
    padding-left: 15px;
    font-size: 20px;
    border-radius: 7px;
}
.b1 {
    margin-top: 45px;
    width: 90px;
    height: 40px;
    background-color: #690;
    font-size: 20px;
    color: white;
    border-radius: 7px;
    float: left;
    margin-left: 70px;
    cursor: pointer;
}
 .Background  
        {  
            background-color: Black;  
            filter: alpha(opacity=90);  
            opacity: 0.8;  
        }  
        #vertical {
            height: 100%;
            width: 280px;
            position: fixed;
            z-index: 1;
            top: 0;
            left: 0;
            background-color: black;
            overflow-x: hidden;
            padding-top: 4px;
            border-right:1px solid #5D6D7E ;
        }
        .na{
            list-style:none;
                margin:0px;
                padding:0px;
                 position: fixed;
                height: 100%;
                overflow: auto
        }
        li a {
  display: block;
   text-decoration:none;
   color:white;
   font-size:20px;
   padding-left:20px;
   padding-bottom:10px;
   margin-top:15px;
    padding:30px,10px;
}
        li a:hover{
           
            background-color:#17202A;
            color:white;
            width:280px;
            
            
        }
     .pop{
         display: block;
   text-decoration:none;
   color:white;
   font-size:20px;
   padding-left:20px;
   padding-bottom:10px;
   margin-top:15px;
    padding:30px,10px;
    background-color:transparent;
    border:none;
     }
     .pop:hover{
           background-color:#17202A;
            color:white;
        
     }
        

    #head{
        width:85%;
        height:60px;
        background-color:black;
        z-index:1;
        margin-top:6px;
       padding-top:10px;
       margin-left:270px;
       padding-left:10px;
    }
/* On mouse-over */



/* Main content */
.main {
  margin-left: 280px; /* Same as the width of the sidenav */
  font-size: 20px; /* Increased text to enable scrolling */
  padding: 0px 10px;
}

 .activity{
     position: absolute;
    width: 390px;
    height: 470px;
    padding: 20px 40px;
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
        }
        .r1:hover{
            background-color:transparent;
        }
        .cancel{
             margin-top: 25px;
            margin-bottom: 25px;
            background-color: blue;
            border-radius: 8px;
            color: white;
            font-size: 20px;
            float: right;
            cursor: pointer;
            margin-right:8px;
        }

   

</style>

</head>
<body>
    <form id="form1" runat="server">
         <div>
            <div id="head">
               
          <h2 style="color:white;margin-top:0px;margin-left:5px;">Orchard Planet</h2>
            </div>
             <div id="vertical">
                <ul  class="na">
                    <li>  <a href="Dashboard.aspx">  <span style="padding-right:6px;" class="glyphicon glyphicon-th-large"></span>Dashboard</a>

                    </li>
                     <li><a href="Activity.aspx"> <span style="padding-right:6px;" class="glyphicon glyphicon-tree-deciduous"></span>Activity</a>
                        <ul style="text-decoration:none;">
                            <li> <asp:Button ID="Button2" runat="server" Text="Create Activity" CssClass="pop" /> </li>
                            <li><a href="join.aspx">Join Activity</a> </li>
                       </ul>
                    </li>
                    <li><a href="Map.html">  <span style="padding-right:6px;" class="glyphicon glyphicon-globe"></span>Map View</a></li>
                    <li><a href="Chat.aspx">Chat Portal</a></li>
                    <li><a  href="reports.aspx">   <span style="padding-right:8px;"  class="glyphicon glyphicon-tasks"></span>Reports</a></li>
                    </ul>
                 </div>




  <div class="1st"style="width:85%;margin-left:270px;height:370px;margin-top:50px;">
            <div class="blue" style="width:500px;height:300px;background-color:brown;margin-left:160px;border-radius:5px;">
                <h2 style="color:white;padding-left:40px;padding-top:50px;">JOIN ACTIVITY</h2>
                <p style="color:white;padding-left:40px;font-size:18px;">
                    join activity to contribute your asset
                </p><br /><br /><br /><br /><hr /><hr />
                <a style="text-decoration:none;color:white;font-size:18px;padding-left:40px;" href="#">Join Activity</a></div>
                <div class="aqua" style="width:500px;height:300px;background-color:DodgerBlue;margin-left:780px;border-radius:5px;margin-top:-300px;">
 </div></div>  </div>



        
                  <div class="orange" style="width:500px;height:300px;background-color:#28B463;margin-left:420px;margin-top:10px;border-radius:5px;">
                <a href="#">Join Activity</a></div>
                       <div class="aqua" style="width:500px;height:300px;background-color:#D68910 ;margin-left:1050px;border-radius:5px;margin-top:-300px;">
             </div>

         <div class="land">
            <h1 style="text-align:center;">Comments</h1>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="d2" placeholder="Activity_Name"></asp:TextBox>
                <asp:TextBox ID="TextBox6" runat="server" CssClass="d2" placeholder="User_Name"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox6" ErrorMessage="User_Name required" ForeColor="Red" ></asp:RequiredFieldValidator>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="d2" placeholder="City" style="background-color:white;" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="City Require" ForeColor="Red" ></asp:RequiredFieldValidator>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="d2" placeholder="Address"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Address required" ForeColor="Red" ></asp:RequiredFieldValidator>
             <asp:Button ID="Butt1" runat="server" Text="Add" CssClass="b1"   /></div>    


        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                       
           
                <asp:Panel ID="Panel1" runat="server">
                     <div class="activity">
             <h2>JOIN</h2><hr />
            <table>
            <tr><td> <span class="glyphicon glyphicon-ok"></span>
            <asp:Button ID="Button1" runat="server" Text="Donor" CssClass="r1" postbackurl="~/Donr1.aspx" /></td></tr>
              
           <tr><td> <span class="glyphicon glyphicon-ok"></span>
               <asp:Button ID="Button3" runat="server" Text="Land_Owner" CssClass="r1" postbackurl="~/LandOwner.aspx" /></td></tr>
           
                </table>
            <asp:Button ID="Button5" runat="server" Text="Cancel" CssClass="cancel" />
        </div>

                </asp:Panel>
                
        <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender2" runat="server" CancelControlID="Button5" BackgroundCssClass="Background" PopupControlID="Panel1" TargetControlID="Button2"></ajaxToolkit:ModalPopupExtender>

    </form>
</body>
</html>
