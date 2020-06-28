<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="bakwas.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link rel="stylesheet" type="text/css" href="StyleSheet1.css" />
    <script src="http://localhost:50256/Scripts/jquery-3.3.1.js"></script>
     <script type="text/javascript">  
  
         
        function AddEmp() {  
            
            var Emp = {};  
            Emp.Name = $("#TextBox5").val();  
            Emp.User_Name = $("#TextBox1").val();           
            Emp.Password = $("#TextBox2").val();    
            Emp.Confirm_Password = $("#TextBox3").val();  
            Emp.Phone = $("#TextBox4").val();           
            Emp.CNIC = $("#TextBox6").val();
  
            $.ajax({  
                url:"<%=Page.ResolveUrl("/api/Emp/AddEmployees")%>",   
                type: "POST",  
                contentType: "application/json;charset=utf-8",  
                data: JSON.stringify(Emp),  
                dataType: "json",  
                success: function (response) {  
  
                    alert(response);           
  
                },  
  
                error: function (x, e) {  
                    alert('Failed');  
                    alert(x.responseText);  
                    alert(x.status);  
  
                }  
            });   
        }       
  
        $(document).ready(function ()  
         {   
            $("#Button1").click(function (e) {               
  
                AddEmp();  
                e.preventDefault();  
            });    
        });  
  
    </script> 
     <style type="text/css">
        .auto-style6 {
            width: 373px;
        }
        .auto-style9 {
            width: 300px;
            height: 40px;
            margin-bottom: 5px;
            padding-left: 15px;
            border-radius: 5px;
            float: left;
            font-size: larger;
            margin-top: 14px;
        }
        .auto-style10 {
            height: 45px;
        }
        .auto-style11 {
            height: 45px;
            width: 373px;
        }
        .auto-style14 {
            width: 300px;
            height: 40px;
            margin-bottom: 12px;
            padding-left: 15px;
            border-radius: 5px;
            float: left;
            font-size: larger;
            margin-top: 19px;
        }
        .auto-style21 {
            width: 300px;
            height: 40px;
            margin-bottom: 6px;
            padding-left: 15px;
            border-radius: 5px;
            float: left;
            margin-top: 17px;
            font-size: larger;
        }
        .auto-style22 {
            height: 28px;
        }
        .auto-style23 {
            width: 373px;
            height: 28px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" autocomplete="off">
        <div>
              <div>
             <div>
            <div class="registerbox">
                
            <h2 class="h22" style="padding-left:5px;">Register</h2><hr />
                 <table class="reg">
                    <tr><td><asp:Label ID="Label5" runat="server" Text=" Name" CssClass="l1" ></asp:Label></td>
                  <td class="auto-style4"> <asp:TextBox ID="TextBox5" runat="server"  CssClass="bj"></asp:TextBox></td></tr >
                 <tr><td></td><td> <asp:RegularExpressionValidator ID="regName" runat="server" forecolor="Red" ControlToValidate="TextBox5"   ValidationExpression="^[a-zA-Z'.\s]{1,30}" Text="Enter a valid name" /> </td></tr>
                     


                <tr> <td><asp:Label ID="Label1" runat="server" Text="User Name" CssClass="l1"></asp:Label></td>
                   <td class="auto-style4"> <asp:TextBox ID="TextBox1" runat="server"  CssClass="b8"> </asp:TextBox></td></tr>
      
                   <tr><td class="auto-style5"></td>  <td class="auto-style6">  <asp:regularexpressionvalidator id="RegularExpressionValidator4" display="Dynamic" errormessage="  7-10 character including numeric character." forecolor="Red" validationexpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{7,10})$" controltovalidate="TextBox1" runat="server">
                  </asp:regularexpressionvalidator></td></tr>
               
                     


               <tr> <td><asp:Label ID="Label2" runat="server" Text="Password"      CssClass ="l1"></asp:Label></td>
               <td class="auto-style4"> <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="b8" ></asp:TextBox>
              <%-- <button id="show_password"  class="primary" type="button" /> 
                    <span class="glyphicon glyphicon-eye-open"></span>--%>
               </td></tr>
                     <tr>
                         <td class="auto-style5"></td><td class="auto-style6"> <asp:regularexpressionvalidator id="RegularExpressionValidator1" display="Dynamic" errormessage=" 8-10 character including numeric character." forecolor="Red" validationexpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$" controltovalidate="TextBox2" runat="server">
               </asp:regularexpressionvalidator></td></tr>
                   <%-- <tr><td></td>   <td class="auto-style4">  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Password required" ForeColor="Red" ></asp:RequiredFieldValidator></td></tr> --%>


                                 <tr><td> <asp:Label ID="Label3" runat="server" Text="Confirm Password"  CssClass="l1"></asp:Label></td>
                                 <td class="auto-style4"> <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"  CssClass="b8"></asp:TextBox><br /></td></tr>
                    <tr><td></td><td class="auto-style4">  <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox3" ControlToCompare="TextBox2" ErrorMessage="Confirmation required" ForeColor="Red" ></asp:CompareValidator></td></tr>

                     
                                 <tr><td> <asp:Label ID="Label4" runat="server" Text="Phone Number" CssClass="l1"></asp:Label></td>
                                     <td class="auto-style4"> <asp:TextBox ID="TextBox4" runat="server"  CssClass="b8"></asp:TextBox></td></tr>
                   
                                     <%--<tr><td></td><td class="auto-style4">  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Phone_Number required" ForeColor="Red" ></asp:RequiredFieldValidator></td></tr >--%>
             <tr><td></td> <td class="auto-style4">  <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" ForeColor="Red" ErrorMessage="Invalid Phone_Number"  ValidationExpression="[0-9]{11}"></asp:RegularExpressionValidator></td></tr> 
                                     

                  
                     <tr><td> <asp:Label ID="Label6" runat="server" Text="CNIC" CssClass="l1"></asp:Label></td>
                                           <td class="auto-style4"> <asp:TextBox ID="TextBox6" runat="server"  CssClass="auto-style9"></asp:TextBox><br /></td></tr>
                    <%-- <tr><td></td><td class="auto-style4">   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox6" ErrorMessage="CNIC required" ForeColor="Red" ></asp:RequiredFieldValidator></td></tr>--%>
                  <tr><td></td><td class="auto-style4"> <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox6" ForeColor="Red" ErrorMessage="Invalid CNIC"  ValidationExpression="[0-9]{5}-[0-9]{7}-[0-9]{1}"></asp:RegularExpressionValidator>   </td></tr>

                 </table>
                              
                        <asp:CheckBox ID="CheckBox1" runat="server" text="I agree to the"   Checked ="true"  /><a href="#" class="comments">  Terms of policy</a> &nbsp;&nbsp;&nbsp;<br /><br />
           <asp:Button ID="Button1" runat="server" Text="Register" CssClass="b9" OnClick="Button1_Click" Width="107px" Height="54px"   />
          <br />
        </div>
        </div>

        </div>
        </div>
    </form>
</body>
</html>
