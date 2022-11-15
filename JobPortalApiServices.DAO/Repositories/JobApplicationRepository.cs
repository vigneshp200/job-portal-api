using JobPortalApiServices.DAO.Entities;
using JobPortalApiServices.DataModel.Shared;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Storage;

namespace JobPortalApiServices.DAO.Repositories
{
    public class JobApplicationRepository : IJobApplicationRepository
    {
        private IDbContextTransaction _transaction;
        private readonly JobPortalContext _jobPortalContext;

        public JobApplicationRepository(JobPortalContext JobPortalContext)
        {
            _jobPortalContext = JobPortalContext;
        }

        /// <summary>
        /// Begins a database transaction
        /// </summary>
        /// <returns>Returns true after successful database transaction</returns>
        public async Task<bool> BeginTransaction()
        {
            _transaction = await _jobPortalContext.Database.BeginTransactionAsync();
            return true;
        }

        /// <summary>
        /// Saves changes to database
        /// </summary>
        /// <returns>Returns true after successful database save</returns>
        public async Task<bool> SaveChanges()
        {
            await _jobPortalContext.SaveChangesAsync();
            return true;
        }

        /// <summary>
        /// Commits a database transaction
        /// </summary>
        /// <returns>Returns true after successful database commit</returns>
        public async Task<bool> CommitChanges()
        {
            await _transaction.CommitAsync();
            return true;
        }

        /// <summary>
        /// Adds entities to context for database saving
        /// </summary>
        /// <param name="items">entity objects</param>
        /// <returns>Returns true after successful database entity inclusion for saving</returns>
        public async Task<bool> AddItems(params object[] items)
        {
            await _jobPortalContext.AddRangeAsync(items);
            return true;
        }

        /// <summary>
        /// Rollbacks database changes in case of an error
        /// </summary>
        /// <returns>Returns true after successful database rollback</returns>s
        public async Task<bool> RollbackChanges()
        {
            await _transaction.RollbackAsync();
            return true;
        }

        public Task<List<Position>> GetJobOpenings()
        {
            //Seed();
            return _jobPortalContext.Positions.Where(r => r.StartDate <= DateTime.Now && r.EndDate >= DateTime.Now).ToListAsync();
        }

        public Task<List<Candidate>> GetJobApplications()
        {
            return _jobPortalContext.Candidates.Include(r => r.CandidatePositions).ThenInclude(r => r.Position).OrderByDescending(r => r.CandidateId).ToListAsync();
        }

        public Task<List<string>> GetTechnology(string term)
        {
            return _jobPortalContext.Technologies.Where(r => r.Name.ToLower().StartsWith(term.ToLower())).Select(r => r.Name).ToListAsync();
        }

        public async Task<List<int>> GetTechologyIds(string[] technologies)
        {
            List<int> ids = new List<int>();
            foreach (var item in technologies)
            {
                var id = await _jobPortalContext.Technologies.Where(r => r.Name == item).Select(r => r.Id).FirstOrDefaultAsync();
                if (id != 0)
                {
                    ids.Add(id);
                }
                else
                {
                    // Needs to add logic to Add technlogy and get id
                }
            }
            return ids;
        }

        public void Seed()
        {
            if (_jobPortalContext.Technologies.Count() == 0)
            {
                var technology = new string[] {"C", "C#", "C++", "Java", "Go", "Python", "Javascript", "Angular", "React", "AngularJS", ".Net", "Asp.Net", "Asp.Net MVC", "Html",
                "Scala", ".Net Core", "Spring", "Spring Boot", "Bootstrap", "Angular Material", "Redux", "RxJs", "Kotlin", "Ruby", "PHP", "Swift", "Matlab", "TypeScript", "ADF", "PL SQL",
                "TSQL", "Oracle", "Sql Server", "Node", "MEAN", "MERN", "MongoDB", "Azure", "AWS" };
                List<Technology> a = new List<Technology>();
                foreach (var item in technology)
                {
                    a.Add(new Technology { Name = item, CreatedBy = "System", ModifiedBy = "System", CreatedOn = DateTime.Now, UpdateOn = DateTime.Now });
                }

                _jobPortalContext.AddRange(a);
            }

            if (_jobPortalContext.Positions.Count() == 0)
            {
                var positions = new string[] { "Trainee Software Engineer", "Software Engineer", "Senior Software Engineer", "Module Lead", "Lead", "Manager", "Senior Manager", "Vice-President" };
                List<Position> b = new List<Position>();

                foreach (var item in positions)
                {
                    b.Add(new Position { Title = item, Description = item, CreatedBy = "System", ModifiedBy = "System", CreatedOn = DateTime.Now, UpdateOn = DateTime.Now, StartDate = DateTime.Now.AddMonths(-1), EndDate = DateTime.Now.AddYears(1) });
                }

                _jobPortalContext.AddRange(b);
            }

            _jobPortalContext.SaveChanges();
        }
    }
}
