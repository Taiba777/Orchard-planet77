<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="bakwas.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" type="text/css" href="StyleSheet1.css" runat="server"           />
   
<script src="http://localhost:50256/Scripts/jquery-3.3.1.js"></script>
     <script type="text/javascript">
     function AddEmp() {  
            
            var Emp = {};    
            Emp.User_Name = $("#TextBox1").val();           
            Emp.Password = $("#TextBox2").val();    
           
  
            $.ajax({  
                url:"<%=Page.ResolveUrl("/api/Emp/Checkuser")%>",   
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
            $("#Button2").click(function (e) {               
  
                AddEmp();  
                e.preventDefault();  
            });    
        });  
  
    </script>
   
</head>
<body>
    <form id="form1" runat="server" autocomplete="off">
         
        <div class="loginbox">
            <h2 class="h22">Login</h2><hr />
                <asp:TextBox ID="TextBox1" runat="server" CssClass="b1" Placeholder="User Name"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="User Name required" ForeColor="Red" ></asp:RequiredFieldValidator>
            <asp:TextBox ID="TextBox2" runat="server" Placeholder="Password"   TextMode="Password"  CssClass="b2"></asp:TextBox><br />
               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  ControlToValidate="TextBox2" ErrorMessage="Password required" ForeColor="Red" ></asp:RequiredFieldValidator>   
            
 
      
            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="b3">Forget Password</asp:LinkButton><br />
            <asp:Button ID="Button2" runat="server" Text="Login" CssClass="b4"    /><br />
            <asp:LinkButton ID="LinkButton2" runat="server" CssClass="b5" PostBackUrl="~/Register.aspx">Register now</asp:LinkButton>
            </div>
    </form>
</body>
</html>
