using System;
using System.Collections.Generic;

namespace JobPortalApiServices.DAO.Entities;

public partial class CandidateFile
{
    public int CandidateId { get; set; }

    public int FileId { get; set; }

    public int Id { get; set; }

    public virtual Candidate Candidate { get; set; }

    public virtual File File { get; set; }
}
