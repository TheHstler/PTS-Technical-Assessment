using Microsoft.AspNetCore.Mvc;

public class AccountController : Controller
{
    private const string ValidUsername = "admin";
    private const string ValidPassword = "password123";

    public IActionResult Login()
    {
        return View();
    }

    [HttpPost]
    public IActionResult Login(string username, string password)
    {
        if (username == ValidUsername && password == ValidPassword)
        {
            TempData["LoggedIn"] = true;
            return RedirectToAction("Welcome");
        }

        ViewBag.Error = "Invalid credentials";
        return View();
    }

    public IActionResult Welcome()
    {
        if (TempData["LoggedIn"] == null)
        {
            return RedirectToAction("Login");
        }

        return View();
    }
}
