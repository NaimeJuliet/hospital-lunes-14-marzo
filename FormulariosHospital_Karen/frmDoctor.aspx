<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmDoctor.aspx.cs" Inherits="FormulariosHospital_Karen.frmDoctor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
        <link href="css/estilos.css" rel="stylesheet" />
    <link href="css/frmDoctor.css" rel="stylesheet" />
</head>
<body>
      <form id="formulario" runat="server">
        <h4>Agregar doctor: </h4>
        <div class="contenedor">
        
            <div class="input">
                <label for="identificacion">Numero de identificacion: *</label>
                <input id="identificacion"  class="form-control" type="number" required="required" />      
            </div>

            <div class="input">
                <label for="nombre">Nombre: *</label>
                <input id="nombre"  class="form-control w-100" type="text" required="required" /> 
            </div>

            <div class="input">
                <label for="tipoId">Especialidad: *</label>
                <select id="tipoId" class="form-control"  required="required" name="Tipo Identificacion">
                    <option value="1">Seleccionar...</option> 
                    <option value="2">Medico general</option> 
                    <option value="3">Odontologo</option>
                    <option value="4">Oftometra</option>
                    <option value="5">Psicologo</option>
                 </select>
            </div>

            <div class="input">
                <label for="telefono">Telefono: *</label>
                <input id="telefono"  class="form-control" type="number" required="required" /> 
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
