<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="uas.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SISTEM LOGIN ADMIN</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body style="background-image:url(../bg5.jpg); background-repeat:no-repeat; background-position-x:center; background-size:cover">
    <div class="container mt-5">
            <div id="login-row" class="row justify-content-center align-items-center">
              
                <div id="Div3" class=" col-md-12 mt-5"></div>
                <div id="Div1" class=" card col-md-6">
                    <div id="Div2" class="card-body mt-5 shadow p-3 mb-5 bg-white rounded">
                        <form id="Form1" class="login" runat="server">
                            <div class="text-center" style="width: 100%; background-color:none">
                                  <h2 class="text-center text-primary ">SISTEM LOGIN ADMIN</h2>
                                <br />
                                <hr />
                            </div>
                            <div class="form-group mt-3 text-left">
                                <asp:Label CssClass="text-primary font-weight-bold " ID="Label2" runat="server" Text="USER"></asp:Label> <br />
                            <asp:TextBox  CssClass="form-control" ID="txtuser"  runat="server" ></asp:TextBox>
                            </div>
                            <div class="form-group text-left">
                                <asp:Label  CssClass="text-primary font-weight-bold" ID="Label4" runat="server" Text="PASSWORD"></asp:Label> <br />
                            <asp:TextBox  CssClass="form-control" ID="txtpass"  runat="server" MaxLength="20" TextMode="Password"></asp:TextBox>
                            </div>
                            
                            <div class="col col-12 text-right mb-3" >
                                 <asp:Label CssClass="text-danger " ID="notif" runat="server" Text=""></asp:Label>
                            </div>
                            <div class="col col-12">
                                <asp:Button CssClass="btn btn-primary col-12" ID="Button1" runat="server" Text="MASUK" OnClick="masuk_Click"  /> 
                            </div>
                        </form>
                    </div>
                </div>
                 <div id="login-column" class=" col-md-6">
                    <div id="login-box" class=" text-center">
                        
                    </div>
                </div
            </div>
        </div>
</body>
</html>
