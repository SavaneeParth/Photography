<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Project.Admin.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .dashboard-container {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 20px;
            margin: 40px auto;
            max-width: 1000px;
        }

        .dashboard-box {
            flex: 1;
            min-width: 250px;
            background: linear-gradient(135deg, #3498db, #2980b9);
            color: white;
            padding: 20px;
            text-align: center;
            border-radius: 12px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s ease-in-out;
            font-size: 18px;
            font-weight: 600;
        }

        .dashboard-box h3 {
            font-size: 28px;
            margin-top: 10px;
            font-weight: bold;
        }

        .dashboard-box:hover {
            transform: translateY(-5px);
        }

        .users {
            background: linear-gradient(135deg, #e74c3c, #c0392b);
        }

        .orders {
            background: linear-gradient(135deg, #27ae60, #1e8449);
        }

        .categories {
            background: linear-gradient(135deg, #f39c12, #d68910);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="dashboard-container">
     
     <div class="dashboard-box users">
         Total Users
         <h3><asp:Label ID="lbl_user" runat="server" Text="100"></asp:Label></h3>
     </div>
     <div class="dashboard-box orders">
         Total Appointment
         <h3><asp:Label ID="lbl_appointment" runat="server" Text="250"></asp:Label></h3>
     </div>
     
     <div class="dashboard-box categories">
         Total Package
         <h3><asp:Label ID="lbl_package" runat="server" Text="10"></asp:Label></h3>
     </div>
    
 </div>

    <br />
     <br />
     <br />
     <br />
     <br />

    <br />
     <br />
     <br />
     <br />
     <br />
    <br />
     <br />
     <br />
     <br />
     <br />
    <br />
     <br />
     <br />
 
</asp:Content>
