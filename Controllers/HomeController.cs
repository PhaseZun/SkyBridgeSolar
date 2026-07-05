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
