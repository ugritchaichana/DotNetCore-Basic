using Microsoft.AspNetCore.Mvc;

namespace DotNetCore_Basic.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class TestController : ControllerBase
    {
        [HttpGet]
        public IActionResult Get()
        {
            return Ok("Hello from Controller!");
        }
    }
}