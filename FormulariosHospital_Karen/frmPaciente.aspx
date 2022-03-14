<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmPaciente.aspx.cs" Inherits="FormulariosHospital_Karen.frmPaciente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
  
      <link href="Content/bootstrap.min.css" rel="stylesheet" />
        <link href="css/estilos.css" rel="stylesheet" />
    <link href="css/frmPaciente.css" rel="stylesheet" />
</head>
<body>
      <form id="formulario" class="text-center" runat="server">
        <h4 >Ingresar paciente</h4>
        <div class="contenedor">
           <div class="input">
                <label for="tipoId">Tipo de identificacion: *</label>
                <select id="tipoId" class="form-control"  required="required" name="Tipo Identificacion">
                    <option value="1">Seleccionar...</option> 
                    <option value="2">Registro civil</option> 
                    <option value="3">Tarjeta de identidad</option>
                    <option value="4">Cedula</option> 
                 </select>
            </div>

           <div class="input">
                <label for="identificacion">Numero de identificacion: *</label>
                <input id="identificacion"  class="form-control" type="number" required="required" />      
            </div>

            <div class="input">
                <label for="nombre">Nombre: *</label>
                <input id="nombre"  class="form-control w-100" type="text" required="required" /> 
            </div>

            <div class="input">
                <label for="telefono">Telefono: *</label>
                <input id="telefono"  class="form-control" type="number" required="required" /> 
            </div>

            <div class="input">
                <label for="celular">Celular: *</label>
                <input id="celular"  class="form-control" type="number" required="required" /> 
            </div>

            <div class="input">
                <label for="correo">Correo: *</label>
                <input id="correo"  class="form-control" type="email"/> 
            </div>

            <div class="input">
                <label for="activo">¿Actualmente se encuentra activo?</label>
                <select id="activo" class="form-control"  required="required" name="Tipo Identificacion">
                    <option value="1">Seleccionar...</option> 
                    <option value="2">Si</option> 
                    <option value="3">No</option>
                 </select>
            </div>
        </div>
        <button class="btn btn-primary" type="submit">Ingresar</button>
    </form>

    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>
