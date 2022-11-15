using System;
using System.Collections.Generic;

namespace JobPortalApiServices.DAO.Entities;

public partial class CandidateTechnology
{
    public int CandidateId { get; set; }

    public int TechnologyId { get; set; }

    public int Id { get; set; }

    public virtual Candidate Candidate { get; set; }

    public virtual Technology Technology { get; set; }
}
