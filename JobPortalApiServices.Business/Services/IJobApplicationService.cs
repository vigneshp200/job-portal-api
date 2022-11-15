using JobPortalApiServices.DataModel.Response;
using JobPortalApiServices.DataModel.Shared;

namespace JobPortalApiServices.Business.Services
{
    public interface IJobApplicationService
    {
        Task<JobApplication> Save(JobApplication application);
        Task<List<Job>> GetJobOpenings();
        Task<List<JobApplication>> GetJobApplications();
        Task<List<string>> GetTechnology(string term);
        object UploadFile();
    }
}
