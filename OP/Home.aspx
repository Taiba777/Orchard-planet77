<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="bakwas.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        #header {
            height: 700px;
            width: 99.55%;
            border: 3px solid #E3E3E3;
            background-image: url('image/pexels-photo-807598.jpeg');
            background-repeat: no-repeat;
            background-size: cover;
        }

.centered {
    position: absolute;
    height: 120px;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    color: transparent;
    font-size: 65px;
    font-family: Arial, Helvetica, sans-serif;
    font-weight: 600;
}
.join {
    width: 450px;
    height: 70px;
    margin-top: 40px;
    font-size: 24px;
    background-color: #690;
    color: white;
    border-radius: 8px;
    margin-left: 38%;
    
}

    .join:hover {
       cursor:pointer;
    }
    </style>
  <div id="header">
         
          <div class="centered"></div>
                 </div>
			<div class="home" style="margin-top:20px;" >
			<div class="entry" style="font-size:20px;width:480px;margin-left:80px">
                
     
                <div style="margin-top:93px;margin-left:30px;padding-bottom:10px; ">
                    <h2 class="title"> Orchard Planet</h2>
                <img src ="image/pexels-photo-2686987.jpeg"          style ="width:480px;height:290px" />
                
				<div><p>We Welcome you to our Humble  Community. Our Goal is to create an community with green and clean Pakistan. First of all we are providing a platform through which people can easily identify the  on which we can grow plants and for this purpose friendly discussion portal is also available, visit our Social sites for more information  .</p>
               <%-- <asp:Button ID="Button1" runat="server" Text="Continue to read"  OnClick="Button1_Click" />
				<p>And not just that we periodically change our themes in tribute to a season ,  and with each theme new discovries are made to the website. Since you are here please check out our whole site and leave a feedback. </p>--%>
			</div>
	

			</div>
		<div class="post" >
			
		
			<div class="entry"style="font-size:20px;width:480px;margin-left:620px;margin-top:-610px;">
                <h2 class="title">Current Theme</h2>
                <img src="image/pexels-photo-1125776.jpeg" style="width:480px;height:290px" />
				<p>Right now we are supporting Tree-planting generally for forestry and land reclamation. Trees contribute to their environment over long periods of time by providing oxygen, improving air quality, climate amelioration, conserving water, preserving soil, and supporting wildlife. .</p>
				<p class="links"><a href="#" class="comments">Comments</a> &nbsp;&nbsp;&nbsp; <a href="theme1.aspx" class="permalink">Full article</a></p>
			</div>
		</div>
		<div class="post">
			
		
			<div class="entry" style="font-size:20px;width:480px;margin-left:1170px;margin-top:-580px;">
                <h2 class="title">Library</h2>
                 <img src="image/pexels-photo-2468399.jpeg" style="width:480px;height:290px"/>
				<p>We are providing encouraging and inspiring material in the form of previous projects. Currently we are providing in the form of images and video with basic information. </p>
				<p class="links"><a href="#" class="comments">Comments</a> &nbsp;&nbsp;&nbsp; <a href="#" class="permalink">Full article</a></p>
			</div>
            </div>
                </div></div>

    <div class="feature"  style="text-align:center;margin-top:15%;font-size:20px;">
        <h1 >Featured Work</h1>
        <p style="">Work all across pakistan with quickly maxmize deliverable <br />Let's join us
        </p>
    </div>
  <div>
        <img style="width:920px;height:400px;margin-left:75px;border-radius:8px;margin-top:40px;" src="image/pexels-photo-1108572.jpeg" />
        <img style="width:600px;height:400px;margin-left:40px;border-radius:8px;" src="image/pexels-photo-1463186.jpeg" />
        <img style="width:550px;height:400px;margin-left:30px;border-radius:8px;margin-top:30px;" src="image/pexels-photo-1495160.jpeg" />
        <img style="width:550px;height:400px;margin-left:30px;border-radius:8px;margin-top:30px;" src="image/pexels-photo-963063.jpeg" />
        <img style="width:550px;height:400px;margin-left:30px;border-radius:8px;margin-top:30px;" src="image/pexels-photo-255441.jpeg" /></div>
    
    <asp:Button ID="Button1" runat="server" Text="Let's Join Us" CssClass="join" PostBackUrl="~/Register.aspx" />
















</asp:Content>
