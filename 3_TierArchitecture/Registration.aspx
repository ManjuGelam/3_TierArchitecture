<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="_3_TierArchitecture.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <script>
    function notEmpty(){
        var Eid, Ename, Email,Password,Male,Female ;
        Eid = document.getElementById("txtId").value;
        Ename = document.getElementById("txtEname").value;
        Email = document.getElementById("txtEmail").value;
        Password = document.getElementById("txtPwd").value;
        Male = document.getElementById('rbtnMale').checked;
        Female = document.getElementById('rbtnFemale').checked;
        if (Eid == '' && Ename == '' && Email == '' && Password == '' && Male == '' && Female=='') {
               alert("Enter All Fields");
               return false;
        }
        Eid = document.getElementById("txtId").value;
            if (Eid == '') {
                alert("Please Enter id");
                return false;
            }
        Ename = document.getElementById("txtEname").value;
            if (Ename == '') {
                alert("Please Enter name");
                return false;
            }
        Email = document.getElementById("txtEmail").value;
            if (Email == '') {
                alert("Please Enter  Email");
                return false;
            }
        Password = document.getElementById("txtPwd").value;
        if (Password == '') {
            alert("Please Enter  Password");
            return false;
        }
        var Ename = document.getElementById('txtEname');
        var filter = /^[A-Za-z]+$/ ;
        if (!filter.test(Ename.value)) {
            alert('Invalid  Employee Name ');
            Ename.focus;
            return false;
        }
        var Email = document.getElementById('txtEmail');
        var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
        if (!filter.test(Email.value)) {
            alert('Please Enter Valid Email Address');
            Email.focus;
            return false;
        }
        var Password = document.getElementById('txtPwd');
        var filter = /^[A-Za-z]+$/;
        if (!filter.test(Ename.value)) {
            alert('Invalid  Password ');
            Password.focus;
            return false;
        }
        Male = document.getElementById('rbtnMale').checked;
        Female = document.getElementById('rbtnFemale').checked;
        if ((Male == "") && (Female == "")) {
            alert("Please Select Gender");
            Male.value = "";
            Female.value = "";
            return false;
        }
    }
            
     </script>
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
            margin-top: 66px;
        }
    </style>
</head>
<body>
    <center>
    <form id="form2" runat="server" style="border:solid;width:600px;height:400px;background-color:tan">
        <h1 align="center"> Employee Registration Page</h1>
       <table border="1" style="background-color:darkgray" >
           <tr>
                    <td align="center" colspan="2">Profile</td>
                </tr>
           <tr>
                <td colspan="2"  align="center">
                    <asp:Image id="img" ImageUrl="images/prof.jpg" style="height:30px;width:30px" runat="server" />
                        </td>
           </tr>
            <tr>
                   <td><asp:label ID="lblId" runat="server" Text="Enter Emp Id:"></asp:label></td>
                   <td>
                       <asp:TextBox ID="txtId" runat="server" ></asp:TextBox>
                   </td>
               </tr>
            <tr>
                   <td><asp:label ID="lblEname" runat="server" Text="Enter Employee name :"></asp:label></td>
                   <td>
                       <asp:TextBox ID="txtEname" runat="server" ></asp:TextBox>
                   </td>
               </tr>
           <tr>
               <td>
                   <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label></td>
                   <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
             
           </tr>
           <tr>
             <td><asp:Label ID="lblpwd" runat="server" Text="Password"></asp:Label> </td>
              <td><asp:TextBox ID="txtPwd" runat="server" Textmode="Password"></asp:TextBox></td>
           </tr>
            <tr>
                <td><asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label></td>
                   <td>
                       <asp:RadioButton ID="rbtnMale" runat="server" Text="Male" GroupName="Gender" />
                       <asp:RadioButton ID="rbtnFemale" runat="server" Text="Female" GroupName="Gender" />
                   </td>
               </tr>
            <tr>
                    <td>DOB: </td><td><asp:TextBox ID="dob" runat="server" TextMode="Date" Width="168px"></asp:TextBox> </td>
                </tr>
           <tr>
               <td colspan="2" align="center">
            <asp:Button  style="background-color:forestgreen" ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" CssClass="btn btn-primary" OnClientClick="return notEmpty() " />
                   
               </td>
           </tr> 
           </table>
        <br />
    </form>
         <asp:HyperLink id="link1" runat="server"  NavigateUrl="~/WebForm1.aspx">All Employee  Details</asp:HyperLink>
        </center>  
</body>
</html>
