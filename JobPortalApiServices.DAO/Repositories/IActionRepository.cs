using System.Threading.Tasks;

namespace JobPortalApiServices.DAO.Repositories
{
    /// <summary>
    /// IActionRepository is used to exposes database operations
    /// </summary>
    public interface IActionRepository
    {
        public Task<bool> BeginTransaction();
        public Task<bool> SaveChanges();
        public Task<bool> CommitChanges();
        public Task<bool> RollbackChanges();
        public Task<bool> AddItems(params object[] items);
    }
}
