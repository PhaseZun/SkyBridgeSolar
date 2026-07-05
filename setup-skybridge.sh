#!/bin/bash

echo "====================================="
echo "SKY BRIDGE SOLAR MVC PROJECT SETUP"
echo "====================================="

# Create MVC Project if not already created

if [ ! -f "SkyBridgeSolar.csproj" ]; then
echo "Creating ASP.NET Core MVC Project..."
dotnet new mvc
fi

echo "Creating folders..."

mkdir -p Controllers
mkdir -p Models
mkdir -p Services
mkdir -p Repositories
mkdir -p ViewModels

mkdir -p Views/Home
mkdir -p Views/About
mkdir -p Views/Services
mkdir -p Views/Contact
mkdir -p Views/Shared

mkdir -p wwwroot/css
mkdir -p wwwroot/js
mkdir -p wwwroot/images
mkdir -p wwwroot/videos

echo "Creating Controllers..."

cat > Controllers/HomeController.cs << 'EOF'
using Microsoft.AspNetCore.Mvc;

namespace SkyBridgeSolar.Controllers
{
public class HomeController : Controller
{
public IActionResult Index()
{
return View();
}
}
}
EOF

cat > Controllers/AboutController.cs << 'EOF'
using Microsoft.AspNetCore.Mvc;

namespace SkyBridgeSolar.Controllers
{
public class AboutController : Controller
{
public IActionResult Index()
{
return View();
}
}
}
EOF

cat > Controllers/ServicesController.cs << 'EOF'
using Microsoft.AspNetCore.Mvc;

namespace SkyBridgeSolar.Controllers
{
public class ServicesController : Controller
{
public IActionResult Index()
{
return View();
}
}
}
EOF

cat > Controllers/ContactController.cs << 'EOF'
using Microsoft.AspNetCore.Mvc;

namespace SkyBridgeSolar.Controllers
{
public class ContactController : Controller
{
public IActionResult Index()
{
return View();
}
}
}
EOF

echo "Creating Shared Layout..."

cat > Views/Shared/_Layout.cshtml << 'EOF'

<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Sky Bridge Solar</title>

```
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="~/css/site.css">
```

</head>
<body>

```
@await Html.PartialAsync("_Header")

<main>
    @RenderBody()
</main>

@await Html.PartialAsync("_Footer")

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="~/js/site.js"></script>
```

</body>
</html>
EOF

echo "Creating Header..."

cat > Views/Shared/_Header.cshtml << 'EOF'

<header class="navbar navbar-expand-lg navbar-light bg-white shadow-sm">
    <div class="container">

```
    <a class="navbar-brand fw-bold text-success" href="/">
        SKY BRIDGE SOLAR
    </a>

    <button class="navbar-toggler"
            data-bs-toggle="collapse"
            data-bs-target="#menu">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="menu">
        <ul class="navbar-nav ms-auto">

            <li class="nav-item">
                <a class="nav-link" href="/">Home</a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="/About">About</a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="/Services">Services</a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="/Contact">Contact</a>
            </li>

        </ul>
    </div>

</div>
```

</header>
EOF

echo "Creating Footer..."

cat > Views/Shared/_Footer.cshtml << 'EOF'

<footer class="bg-dark text-white text-center py-4">
    <div class="container">
        <p>© 2026 Sky Bridge Solar. All Rights Reserved.</p>
    </div>
</footer>
EOF

echo "Creating Home Page..."

cat > Views/Home/Index.cshtml << 'EOF'
@{
ViewData["Title"] = "Home";
}

<section class="hero-section">
    <div class="container">
        <div class="row align-items-center">

```
        <div class="col-lg-6">

            <span class="badge bg-warning text-dark">
                Renewable Energy
            </span>

            <h1 class="display-3 fw-bold mt-3">
                Solar Energy For
                A Sustainable Future
            </h1>

            <p class="lead">
                Sky Bridge Solar provides
                residential, commercial and
                industrial solar solutions.
            </p>

            <a href="/Contact" class="btn btn-success btn-lg">
                Get Free Consultation
            </a>

        </div>

        <div class="col-lg-6">
            <img src="/images/solar-hero.jpg"
                 class="img-fluid rounded shadow">
        </div>

    </div>
</div>
```

</section>

<section class="py-5">
    <div class="container">

```
    <h2 class="text-center mb-5">
        Our Services
    </h2>

    <div class="row">

        <div class="col-md-4">
            <div class="card shadow">
                <div class="card-body">
                    <h4>Residential Solar</h4>
                    <p>Complete rooftop solar solutions.</p>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card shadow">
                <div class="card-body">
                    <h4>Commercial Solar</h4>
                    <p>Reduce electricity costs.</p>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card shadow">
                <div class="card-body">
                    <h4>Industrial Solar</h4>
                    <p>High-capacity solar systems.</p>
                </div>
            </div>
        </div>

    </div>

</div>
```

</section>
EOF

echo "Creating Other Views..."

echo "<h1>About Us</h1>" > Views/About/Index.cshtml
echo "<h1>Services</h1>" > Views/Services/Index.cshtml
echo "<h1>Contact Us</h1>" > Views/Contact/Index.cshtml

echo "Creating CSS..."

cat > wwwroot/css/site.css << 'EOF'
body{
font-family:Segoe UI,Tahoma,Geneva,Verdana,sans-serif;
}

.hero-section{
padding:120px 0;
background:#f8faf8;
}

.hero-section h1{
color:#0c3b2e;
}

.card{
transition:.3s;
}

.card:hover{
transform:translateY(-10px);
}
EOF

echo "Creating JS..."

cat > wwwroot/js/site.js << 'EOF'
console.log("Sky Bridge Solar Loaded");
EOF

echo "Creating Models..."

cat > Models/ContactModel.cs << 'EOF'
namespace SkyBridgeSolar.Models
{
public class ContactModel
{
public string Name { get; set; } = string.Empty;
public string Email { get; set; } = string.Empty;
public string Phone { get; set; } = string.Empty;
public string Message { get; set; } = string.Empty;
}
}
EOF

echo ""
echo "====================================="
echo "PROJECT CREATED SUCCESSFULLY"
echo "====================================="
echo ""
echo "Run:"
echo "dotnet watch run"
echo ""
EOF
