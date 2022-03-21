﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
    <title>Login Module</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    

    <!-- Font Icon -->
    <link rel="stylesheet" href="src/fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="src/css/style.css">
</head>
<body>
    <div class="main">

        <!-- Sign up form -->
        <section class="sign-in">
            <div class="container">
                <div class="signin-content">
                    <div class="signin-image">
                        <img src="src/images/signin-image.jpg" alt="sing up image">
                        <a href="Registration.aspx" class="signup-image-link">Create an account</a>
                    </div>

                    <div class="signin-form">
                        <h2 class="form-title">Sign up</h2>
                            <form id="form1" runat="server">

                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
                                <asp:TextBox ID="TextBox1" runat="server" name="your_name" placeholder="Your Email"></asp:TextBox>
                         
                            </div>
                            <div class="form-group">
                                <label for="your_pass"><i class="zmdi zmdi-lock"></i></label>
                              
                                <asp:TextBox ID="TextBox2" runat="server"  name="your_pass"  
                                    placeholder="Password" TextMode="Password"></asp:TextBox>
                               
                            </div>
                            
                            <div class="form-group">
                                <input type="checkbox" name="remember-me" id="remember-me" class="agree-term" />    
                                <asp:Literal ID="Literal1" runat="server"></asp:Literal>   
                                <label for="remember-me" class="label-agree-term"><span><span></span></span>Remember me</label>
                            </div>
                            <div class="form-group form-button">
                            <asp:Button ID="Button1" runat="server" Text="Submit" name="signin"  
                                    class="form-submit" onclick="Button1_Click"></asp:Button>

                            </div>
                        </form>
                        <div class="social-login">
                            <span class="social-label">Or login with</span>
                            <ul class="socials">
                                <li><a href="#"><i class="display-flex-center zmdi zmdi-facebook"></i></a></li>
                                <li><a href="#"><i class="display-flex-center zmdi zmdi-twitter"></i></a></li>
                                <li><a href="#"><i class="display-flex-center zmdi zmdi-google"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    
</body>
</html>
