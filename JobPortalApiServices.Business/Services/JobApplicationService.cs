using JobPortalApiServices.DAO.Entities;
using JobPortalApiServices.DAO.Repositories;
using JobPortalApiServices.DataModel.Response;
using JobPortalApiServices.DataModel.Shared;
using static System.Net.Mime.MediaTypeNames;
using File = JobPortalApiServices.DAO.Entities.File;

namespace JobPortalApiServices.Business.Services
{
    public class JobApplicationService : IJobApplicationService
    {
        private readonly IJobApplicationRepository _jobApplicationRepository;
        public JobApplicationService(IJobApplicationRepository jobApplicationRepository)
        {
            _jobApplicationRepository = jobApplicationRepository;
        }

        public async Task<List<JobApplication>> GetJobApplications()
        {
            var canditates = await _jobApplicationRepository.GetJobApplications();
            var result = new List<JobApplication>();
            foreach (var candidate in canditates)
            {
                var application = new JobApplication();
                application.Id = candidate.CandidateId;
                application.FirstName = candidate.FirstName;
                application.LastName = candidate.LastName;
                application.CurrentCtc = candidate.CurrentCtc;
                application.Company = candidate.Company;
                application.Contact = candidate.Contact;
                application.AboutProject = candidate.AboutProject;
                application.InterestedJobsResponse = candidate.CandidatePositions.Select(r => r.Position.Title).ToArray();
                result.Add(application);
            }

            return result;
        }

        public async Task<List<Job>> GetJobOpenings()
        {
            var jobOpenings = await _jobApplicationRepository.GetJobOpenings();
            return jobOpenings.Select(r => new Job { Id = r.PositionId, Title = r.Title }).ToList();
        }

        public Task<List<string>> GetTechnology(string term)
        {
            return _jobApplicationRepository.GetTechnology(term);
        }

        public async Task<JobApplication> Save(JobApplication application)
        {
            try
            {
                var candidate = new Candidate();
                candidate.FirstName = application.FirstName;
                candidate.LastName = application.LastName;
                candidate.CurrentCtc = application.CurrentCtc;
                candidate.Company = application.Company;
                candidate.Contact = application.Contact;
                candidate.AboutProject = application.AboutProject;
                candidate.Email = application.Email;
                candidate.CreatedBy = "System";
                candidate.ModifiedBy = "System";
                candidate.CreatedOn = DateTime.Now;
                candidate.UpdatedOn = DateTime.Now;

                var file = new File();
                file.Name = application.FileName;
                file.Path = "Some Path";
                file.CreatedBy = "System";
                file.ModifiedBy = "System";
                file.CreatedOn = DateTime.Now;
                file.UpdatedOn = DateTime.Now;

                var techIds = await _jobApplicationRepository.GetTechologyIds(application.Technologies);
                await _jobApplicationRepository.BeginTransaction();
                await _jobApplicationRepository.AddItems(candidate);
                await _jobApplicationRepository.AddItems(file);
                await _jobApplicationRepository.SaveChanges();

                foreach (var item in techIds)
                {
                    await _jobApplicationRepository.AddItems(new CandidateTechnology() { CandidateId = candidate.CandidateId, TechnologyId = item });
                }

                foreach (var item in application.InterestedJobs)
                {
                    await _jobApplicationRepository.AddItems(new CandidatePosition() { CandidateId = candidate.CandidateId, PositionId = item });
                }
                await _jobApplicationRepository.SaveChanges();
                await _jobApplicationRepository.CommitChanges();

                application.Id = candidate.CandidateId;
            }
            catch (Exception)
            {
                await _jobApplicationRepository.RollbackChanges();
                throw;
            }

            return application;

        }

        public object UploadFile()
        {
            // Add logic to save file in file mangement system
            object file = new { fileName = "FileName" + DateTime.Now.ToString("ddMMyyyymmss") + ".pdf" };
            return file;
        }
    }
}
