<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ecommerce.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
       <div class="carousel-inner">
         <div class="carousel-item active" data-bs-interval="3000">
           <img src="img/motoBanner.jpg" class="d-block w-100" alt="...">
         </div>

         <div class="carousel-item" data-bs-interval="3000">
           <img src="img/SonyBanner.jpg" class="d-block w-100" alt="...">
         </div>

         <div class="carousel-item" data-bs-interval="3000">
           <img src="img/GalaxyBanner.jpg" class="d-block w-100 " alt="...">
         </div>
       </div>

       <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
         <span class="carousel-control-prev-icon" aria-hidden="true"></span>
         <span class="visually-hidden">Previous</span>
       </button>
       <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
         <span class="carousel-control-next-icon" aria-hidden="true"></span>
         <span class="visually-hidden">Next</span>
       </button>
     </div>


     <div class="row bg-ligth">
          <div class="col col-12 col-sm-6 col-md-4  ">
               <div class="seguridad">
                     <p>
                        <i class="bi bi-truck"></i>
                    </p>
                    <h3>Envío gratis</h3>
                    <h6>Tenés envios gratis en miles de productos</h6>
               </div>
          </div>
          <div class="col col-12 col-sm-6 col-md-4 ">
               <div class="seguridad">
                     <p>
                        <i  class="bi bi-credit-card"></i>
                    </p>
                    <h3>Pagá con tarjeta o en efectivo</h3>
                    <h6>Tenés cuotas sin interés con tarjeta o efectivo en puntos de pago. ¡Y siempre es seguro!
                    </h6>
                </div>
          </div>
          <div class="col col-12  col-md-4  ">
              <div class="seguridad">
                     <p>
                        <i class="bi bi-shield-shaded"></i>
                    </p>
                    <h3>Seguridad, de principio a fin</h3>
                    <h6>No te gustá? Devolvelo sin problemas,siempre estas protegido</h6>
                </div>
          </div>
      </div>

</asp:Content>
