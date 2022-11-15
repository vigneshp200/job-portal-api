using System;
using System.Collections.Generic;

namespace JobPortalApiServices.DAO.Entities;

public partial class File
{
    public int FileId { get; set; }

    public string Name { get; set; }

    public string Path { get; set; }

    public DateTime CreatedOn { get; set; }

    public DateTime UpdatedOn { get; set; }

    public string CreatedBy { get; set; }

    public string ModifiedBy { get; set; }

    public virtual ICollection<CandidateFile> CandidateFiles { get; } = new List<CandidateFile>();
}
