using System;
using System.Collections.Generic;

namespace JobPortalApiServices.DAO.Entities;

public partial class Position
{
    public int PositionId { get; set; }

    public string Title { get; set; }

    public string Description { get; set; }

    public DateTime StartDate { get; set; }

    public DateTime EndDate { get; set; }

    public DateTime CreatedOn { get; set; }

    public DateTime UpdateOn { get; set; }

    public string CreatedBy { get; set; }

    public string ModifiedBy { get; set; }

    public virtual ICollection<CandidatePosition> CandidatePositions { get; } = new List<CandidatePosition>();
}
