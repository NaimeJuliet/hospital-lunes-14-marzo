﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmCita.aspx.cs" Inherits="FormulariosHospital_Karen.frmCita" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
      <link href="Content/bootstrap.min.css" rel="stylesheet" />
        <link href="css/estilos.css" rel="stylesheet" />
        <link rel="stylesheet" href="css/frmCita.css" />
</head>
<body>
  <form id="formulario" runat="server">
        <h4>Agendamiento de citas:</h4>
        <div class="contenedor">
           <div class="input">

                <asp:label runat="server" id="lblCodCita" for="codCita">Codigo de la cita: *</asp:label> 
               
                 <asp:TextBox ID="txtCita" runat="server" class="form-control"></asp:TextBox>  
           </div>
           <div class="input">
                <label for="fechaCita">Fecha de la cita: *</label>
               <asp:TextBox ID="txtFecha" runat="server"  class="form-control" Enabled="False" OnTextChanged="txtFecha_TextChanged"></asp:TextBox>
              
      
           </div>
           <div class="input">
                <label for="horaCita">Hora: *</label>
               <asp:TextBox ID="txtHora" runat="server" Enabled="False" OnTextChanged="txtHora_TextChanged"></asp:TextBox>
           </div>
           <div class="input">   
               <label for="idPaciente">Numero de identificacion paciente: *</label>
               <asp:TextBox ID="txtId_Paciente" runat="server" Enabled="False" OnTextChanged="txtId_Paciente_TextChanged"></asp:TextBox>   
            </div>
           <div class="input">
                <label for="idDoctor">Numero de identificacion Doctor: *</label>
               <asp:TextBox ID="txtId_Medico" runat="server" Enabled="False"></asp:TextBox>
           </div>
           <div class="input">
                <label for="valorCita">Valor: $</label>
               <asp:TextBox ID="txtValor" runat="server" Enabled="False"></asp:TextBox>
           </div>
          
           <div class="input">
                <label for="diagnostico">Diagnostico: </label>
               <asp:TextBox ID="txtDiagnostico" runat="server" Enabled="False"></asp:TextBox>
           </div>
           <div class="input"> 
               <label for="nombreAcompanante">Nombre del acompañante: </label>
               <asp:TextBox ID="txtAcompanante" runat="server" Enabled="False"></asp:TextBox>
            </div>
            <div class="input">
                <label for="activo">¿Actualmente el paciente se encuentra activo?</label>
                <asp:TextBox ID="txtActivo" runat="server" Enabled="False"></asp:TextBox>
            </div>
        </div>
      <div class="botones">
          <asp:Button runat="server" class="btn btn-primary" id="btnAgendar" Text="Agendar" OnClick="btnAgendar_Click" Enabled="False"></asp:Button>
          <asp:Button runat="server" class="btn btn-primary" id="btnConsultar" Text="Consultar" OnClick="btnConsultar_Click"></asp:Button>
          <asp:Button runat="server" class="btn btn-primary" id="btnLimpiar" Text="Limpiar" OnClick="btnLimpiar_Click" Enabled="False"></asp:Button>
          <asp:Button runat="server" class="btn btn-primary" id="btnNuevo" Text="Nuevo" OnClick="btnNuevo_Click" Enabled="False"></asp:Button>
      </div>
        
      </form>
     <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>
