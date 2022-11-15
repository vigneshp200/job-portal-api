using System;
using System.Collections.Generic;

namespace JobPortalApiServices.DAO.Entities;

public partial class Candidate
{
    public int CandidateId { get; set; }

    public string FirstName { get; set; }

    public string LastName { get; set; }

    public string Email { get; set; }

    public string Contact { get; set; }

    public string Company { get; set; }

    public int CurrentCtc { get; set; }

    public string AboutProject { get; set; }

    public DateTime CreatedOn { get; set; }

    public DateTime UpdatedOn { get; set; }

    public string CreatedBy { get; set; }

    public string ModifiedBy { get; set; }

    public virtual ICollection<CandidateFile> CandidateFiles { get; } = new List<CandidateFile>();

    public virtual ICollection<CandidatePosition> CandidatePositions { get; } = new List<CandidatePosition>();

    public virtual ICollection<CandidateTechnology> CandidateTechnologies { get; } = new List<CandidateTechnology>();
}
