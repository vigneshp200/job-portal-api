using Microsoft.AspNetCore.Mvc;
using JobPortalApiServices.DataModel.Shared;
using JobPortalApiServices.Business.Services;
using System.Threading.Tasks;

namespace JobPortalApiServices.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class JobApplicationController : Controller
    {
        private readonly IJobApplicationService _jobApplicationService;
        public JobApplicationController(IJobApplicationService jobApplicationService)
        {
            _jobApplicationService = jobApplicationService;
        }

        [HttpPost("Save")]
        public async Task<IActionResult> Save(JobApplication applictaion)
        {
            return Ok(await _jobApplicationService.Save(applictaion));
        }

        [HttpPost("UploadFile")]
        public IActionResult UploadFile()
        {
            return Ok(_jobApplicationService.UploadFile());
        }

        [HttpGet("GetJobOpenings")]
        public async Task<IActionResult> GetJobOpenings()
        {
            return  Ok(await _jobApplicationService.GetJobOpenings());
        }

        [HttpGet("GetJobApplications")]
        public async Task<IActionResult> GetJobApplications()
        {
            return Ok(await _jobApplicationService.GetJobApplications());
        }

        [HttpGet("GetTechnology")]
        public async Task<IActionResult> GetTechnology(string term)
        {
            return Ok(await _jobApplicationService.GetTechnology(term));
        }

    }
}
