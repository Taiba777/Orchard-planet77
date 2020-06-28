<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Activity.aspx.cs" Inherits="bakwas.Activity" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
     <<script type="text/javascript">
    //function ToggleDiv(Flag) {
    //    if (Flag == "first") {
    //        document.getElementById('div1').style.display = 'block';
    //        document.getElementById('div2').style.display = 'none';
    //    }
    //    else {
    //        document.getElementById('div1').style.display = 'none';
    //        document.getElementById('div2').style.display = 'block';
    //  }
    //     }
         

//$(function(){
//    $(".js-btn").on("click",function(){
//        window.location = "#div1";
  //  });
   //       })
    //      function TestsFunction() {
    //var T = document.getElementById("#div1");
    //T.style.display = "block";  // <-- Set it to block
}
</script>
    <style>
        #Wizard1{
              position: absolute;
    top: 44%;
    left: 50%;
    width: 470px;
    height: 550px;
    padding: 20px 40px;
    transform: translate(-50%,-50%);
    background-color: white;
    border: 1px solid;
    border-color: darkgrey;
    border-radius: 5px;
        }
        #WizardStep{
            text-decoration:none;
             font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;

        }
    </style>


   

 







</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="3">
                <WizardSteps>
                    <asp:WizardStep ID="WizardStep1" runat="server" Title="Activity_Name">
                     <h1>Activity Name</h1>

                        ewrrf
                    </asp:WizardStep>
                    <asp:WizardStep ID="WizardStep2" runat="server" Title="Join">
                         <table>
            <tr><td> <span class="glyphicon glyphicon-ok"></span>
        <asp:RadioButton ID="RadioButton1" runat="server" Text="Donor" OnClientClick="TestsFunction()" /></td></tr>
              
           <tr><td> <span class="glyphicon glyphicon-ok"></span>
               <asp:Button ID="Button3" runat="server" Text="Land_Owner" CssClass="r2" OnClientClick="ToggleDiv('second');return false;"  /></td></tr>
           <tr><td><span class="glyphicon glyphicon-ok"></span>
               </tr>
                </table>
                   
                    </asp:WizardStep>
                      <asp:WizardStep ID="WizardStep3" runat="server" Title="Description">

        
    
     
        
    <div id="div2">
            <h1 style="text-align:center;">Land_Owner</h1>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="d2" placeholder="User_Name"></asp:TextBox>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="d2" placeholder="City" style="background-color:white;" ></asp:TextBox>
            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="User Name required" ForeColor="Red" ></asp:RequiredFieldValidator>--%>
            <asp:TextBox ID="TextBox6" runat="server" CssClass="d2" placeholder="Address"></asp:TextBox>
                 <asp:TextBox ID="TextBox7" runat="server" CssClass="d4" placeholder="latitude"></asp:TextBox>
                 <asp:TextBox ID="TextBox8" runat="server" CssClass="d4" placeholder="longitude"></asp:TextBox>
                 <asp:TextBox ID="TextBox9" runat="server" CssClass="d2" placeholder="Days_Require"></asp:TextBox>
                 <asp:TextBox ID="TextBox10" runat="server" CssClass="d2" placeholder="Plant_Require"></asp:TextBox>
                <asp:TextBox ID="TextBox11" runat="server" CssClass="d2" placeholder="Participant_Require"></asp:TextBox>


               <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="User Name required" ForeColor="Red" ></asp:RequiredFieldValidator>  --%>
               <asp:Button ID="Butt1" runat="server" Text="Add" CssClass="b1"  /></div>















                      </asp:WizardStep>
                      <asp:WizardStep ID="WizardStep4" runat="server" Title="Map">

                      



                      </asp:WizardStep>
                      <asp:WizardStep ID="WizardStep5" runat="server" Title="Create"></asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>

        </div>
    </form>
</body>
</html>
