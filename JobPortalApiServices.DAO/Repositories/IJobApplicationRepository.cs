using JobPortalApiServices.DAO.Entities;
using JobPortalApiServices.DataModel.Response;
using JobPortalApiServices.DataModel.Shared;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JobPortalApiServices.DAO.Repositories
{
    public interface IJobApplicationRepository : IActionRepository
    {
        public Task<List<Position>> GetJobOpenings();
        public Task<List<Candidate>> GetJobApplications();
        public Task<List<string>> GetTechnology(string term);
        public Task<List<int>> GetTechologyIds(string[] technologies);
    }
}
