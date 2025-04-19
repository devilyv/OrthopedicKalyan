<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="OrthopedicKalyan.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Hero Carousel -->
    <div id="homeCarousel" class="carousel slide mb-5" data-bs-ride="carousel" data-bs-interval="3000">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="images/images12.jpeg" class="d-block w-100" alt="Orthopedic Care" style="height: 500px; object-fit: cover;" loading="lazy">
                <div class="carousel-caption d-none d-md-block">
                    <h5> Orthopedic Kalyan </h5>
                    <p>We care for your bones and joints</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="images/images11.jpeg" class="d-block w-100" alt="Joint Pain Treatment" style="height: 500px; object-fit: cover;" loading="lazy">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Relieve Your Joint Pain</h5>
                    <p>Advanced treatments from certified specialists</p>
                </div>
            </div>
        </div>
        <!-- Carousel Controls -->
        <button class="carousel-control-prev" type="button" data-bs-target="#homeCarousel" data-bs-slide="prev" aria-label="Previous">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#homeCarousel" data-bs-slide="next" aria-label="Next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

    <!-- About Section -->
    <div class="row align-items-center mb-5">
        <div class="col-md-6">
            <img src="images/images13.jpeg" alt="Clinic" class="img-fluid rounded shadow" loading="lazy" />
        </div>
        <div class="col-md-6">
            <h3>Welcome to OrthoCare Kalyan</h3>
            <p>We provide the best orthopedic care in Kalyan with 10+ years of experience treating fractures, sports injuries, and chronic joint pain. Our clinic uses the latest technology and personalized treatments.</p>
        </div>
    </div>

    <!-- Services -->
    <div class="text-center mb-5">
        <h4>Our Specialties</h4>
        <div class="row mt-4">
            <div class="col-md-4">
                <div class="card p-3">
                    <i class="fas fa-bone fa-3x mb-2 text-primary"></i>
                    <h5>Fracture Treatment</h5>
                    <p>Effective bone fracture management for all age groups.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card p-3">
                    <i class="fas fa-running fa-3x mb-2 text-success"></i>
                    <h5>Sports Injury</h5>
                    <p>Advanced rehab and recovery for athletes.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card p-3">
                    <i class="fas fa-walking fa-3x mb-2 text-danger"></i>
                    <h5>Joint Replacement</h5>
                    <p>Modern surgical solutions for knee and hip joints.</p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
