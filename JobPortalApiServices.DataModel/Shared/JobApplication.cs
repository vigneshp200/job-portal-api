using System.ComponentModel.DataAnnotations;

namespace JobPortalApiServices.DataModel.Shared
{
    public class JobApplication
    {
        public int Id { get; set; }

        [Required]
        public string FirstName { get; set; }
        [Required]
        public string LastName { get; set; }

        [Required]
        [EmailAddress]
        public string Email { get; set; }

        [Required]
        public string Contact { get; set; }

        [Required]
        public string Company { get; set; }

        [Required]
        public string FileName { get; set; }

        [Required]
        public string AboutProject { get; set; }

        [Required]
        public int CurrentCtc { get; set; }

        [Required]
        public int[] InterestedJobs { get; set; }

        [Required]
        public string[] Technologies { get; set; }

        public string[] InterestedJobsResponse { get; set; }

    }
}
