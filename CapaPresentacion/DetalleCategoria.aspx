<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetalleCategoria.aspx.cs" Inherits="CapaPresentacion.DetalleCategoria" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!--Librerias de Css-->
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0" />
    <title>Detalles Categoria --Admin--</title>
</head>
<body>
    <form id="form1" runat="server">
        <!--inicio container -->
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-10 col-sm-12 m-auto">
                    <!-- inicio card -->
                    <div class="card mt-3">
                        <!--inicio card header-->
                        <div class="card-header bg-black text-white">
                            <h5 class="card-title">Detalles de Categoria</h5>
                        </div>
                        <!-- fin card header-->
                        
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover table-stripped">
                                <tr>
                                    <th class="col-2">Nombre</th>
                                    <td class="col-10">
                                        <asp:Label ID="LabelNombre" Text="text" runat="server" />
                                    </td>  
                                </tr>
                                <tr>
                                    <th colspan="2">Descripción</th>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="LabelDescripción" Text="text" runat="server"></asp:Label>
                                    </td>  
                                </tr>
                            </table>
                        </div>

                        <!--inicio card footer-->
                        <div class="card-footer">
                            <button type="button" class="btn btn-primary"
                                data-bs-toggle="modal" data-bs-target="#modal-editar-categoria">
                                Editar
                            </button>

                            <button type="button" class="btn btn-danger"
                                data-bs-toggle="modal" data-bs-target="#modal-eliminar-categoria">
                                Eliminar
                            </button>

                            <a href="Categorias.aspx" class="btn btn-secondary">Regresar</a>
                        </div>
                        <!--fin card footer-->

                    </div>
                    <!-- fin card -->
                </div>
            </div>
        </div>
        <!--fin container -->

        <!-- inicio modal editar -->
        <div class="modal fade" id="modal-editar-categoria" tabindex="-1" aria-labelledby="modal-editar"
            aria-hidden="true">
            <div class="modal-dialog modal-fullscreen">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Formulario de Registro</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <h4>Actualización de Categorias</h4>
                        <asp:TextBox ID="TextBoxIdCategoria" Visible="false" runat="server"></asp:TextBox>
                        <!--fomulario-->
                        <div class="row">
                            <div class="col-lg-6 col-md-8 col-sm-12">
                                <div class="mb-3">
                                    <label class="form-label">Nombre</label>
                                    <asp:TextBox
                                        runat="server"
                                        ID="TextBoxNombreCategoria"
                                        CssClass="form-control"
                                        placeholder="Ingresa el nombre de la categoria"></asp:TextBox>
                                </div>

                                <div class="mb-3">
                                    <label class="form-label">Descripcion</label>
                                    <asp:TextBox
                                        runat="server"
                                        ID="TextBoxDescripcionCategoria"
                                        CssClass="form-control"
                                        TextMode="MultiLine"
                                        Rows="5"
                                        placeholder="Ingresa la descripcion de la categoria"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <!--fin formuario-->

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>

                        <asp:Button
                            ID="ButtonActualizarCategoria"
                            Text="Guadar Categoria"
                            CssClass="btn btn-primary"
                            runat="server" 
                            OnClick="ButtonActualizarCategoria_Click" />

                    </div>
                </div>
            </div>
        </div>
        <!-- fin modal editar -->

        <!-- inicio modal eliminar -->
        <div class="modal fade" id="modal-eliminar-categoria" tabindex="-1" aria-labelledby="modal-eliminar"
            aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Mensaje se confirmación</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <p>Estas seguro de eliminar esta categoria?</p>
                    </div>

                    <div class="modal-footer">
                        <asp:Button
                            ID="ButtonEliminarCategoria"
                            Text="Si Continuar!"
                            CssClass="btn btn-danger"
                            runat="server" OnClick="ButtonEliminarCategoria_Click" />
                        
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- fin modal eliminar -->

        <!--Librerias de javascript-->
        <script src="Scripts/bootstrap.min.js"></script>
    </form>
</body>
</html>
