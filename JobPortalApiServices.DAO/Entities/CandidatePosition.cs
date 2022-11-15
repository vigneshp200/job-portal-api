using System;
using System.Collections.Generic;

namespace JobPortalApiServices.DAO.Entities;

public partial class CandidatePosition
{
    public int CandidateId { get; set; }

    public int PositionId { get; set; }

    public int Id { get; set; }

    public virtual Candidate Candidate { get; set; }

    public virtual Position Position { get; set; }
}
