<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tours and Travel Management System</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <style>
        .navbar {
            background-color: #004d99 !important;
            transition: background-color 0.3s;
        }
        .navbar-nav .nav-link {
            color: white !important;
            transition: color 0.3s;
        }
        .navbar-nav .nav-link:hover {
            color: #ffcc00 !important;
        }
        .hero-section {
            background: url('images/hero.jpg') no-repeat center center/cover;
            height: 80vh;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            color: white;
            animation: fadeIn 2s ease-in-out;
        }
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
        .feature-box {
            transition: transform 0.3s;
        }
        .feature-box:hover {
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="index.jsp"><i class="fas fa-plane"></i> Tours & Travel</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown">
                            <i class="fas fa-user"></i> Account
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="login.jsp"><i class="fas fa-sign-in-alt"></i> Login</a></li>
                            <li><a class="dropdown-item" href="register.jsp"><i class="fas fa-user-plus"></i> Register</a></li>
                        </ul>
                    </li>
                    <li class="nav-item"><a class="nav-link" href="packages.jsp"><i class="fas fa-box"></i> Packages</a></li>
                    <li class="nav-item"><a class="nav-link" href="contact.jsp"><i class="fas fa-envelope"></i> Contact</a></li>
                </ul>
            </div>
        </div>
    </nav>
    
    <section class="hero-section">
        <div class="container">
            <h1 class="display-4">Discover Amazing Destinations</h1>
            <p class="lead">Find and book your perfect trip with us today!</p>
            <a href="packages.jsp" class="btn btn-primary btn-lg">Explore Packages</a>
        </div>
    </section>
    
    <div class="container mt-5">
        <div class="row text-center">
            <div class="col-md-4">
                <div class="card feature-box p-4 shadow">
                    <h3><i class="fas fa-map-marked-alt"></i> Explore Destinations</h3>
                    <p>Discover breathtaking locations with our curated travel packages.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card feature-box p-4 shadow">
                    <h3><i class="fas fa-lock"></i> Secure Booking</h3>
                    <p>Book your trips securely with our trusted payment system.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card feature-box p-4 shadow">
                    <h3><i class="fas fa-headset"></i> 24/7 Support</h3>
                    <p>Our team is here to assist you anytime, anywhere.</p>
                </div>
            </div>
        </div>
    </div>
    
    <footer class="bg-dark text-white text-center py-3 mt-5">
        <p>&copy; 2025 Tours and Travel Management System. All Rights Reserved.</p>
    </footer>
</body>
</html>
