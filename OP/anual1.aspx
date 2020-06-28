<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="anual1.aspx.cs" Inherits="bakwas.anual1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .a1{
            background-color:#690;
            padding:14px;
            font-size:28px;
            color:white;
            border-radius:12px;
            margin-left:450px;
            opacity:0.8;
        }




    </style>

    <img  style="width:100%"   src="image/a11.JPG" />

    <h1 style="font-size:54px;text-align:center;">Annual Report 2018</h1>
    <div style="margin-left:150px;">
    
    <img  style="width:1480px;height:550px;"  src="image/adobestock_133747314_chokniti_2018.jpeg" />
        <div  style = 'margin-bottom: 90px;margin-right:130px;font-size:22px;text-align:center;margin-top:25px;font-weight:100;'>2018 has been the year in which we doubled our team and our capacity, we planted 2,3 million trees across seven project sites in just one year, reaching a total of close to 19 million trees planted. 128 partners funded us in 2018 and the large majority are regular sponsors,&nbsp;engaging for the long term.&nbsp;&nbsp;More than ever are we on our way to reach a 100 million trees planted, and for this, our main focus in the year to come will be to grow the number and size of our forestry projects to enable more partners to join.&nbsp;</div>
 <asp:Button ID="btnMethodOne" runat="server" Text="Download Annual Report 2018 print.pdf" class="a1" onclick="btnMethodOne_Click"  />
 </div>













</asp:Content>
