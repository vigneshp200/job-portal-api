using System;
using System.Collections.Generic;

namespace JobPortalApiServices.DAO.Entities;

public partial class Technology
{
    public int Id { get; set; }

    public string Name { get; set; }

    public DateTime CreatedOn { get; set; }

    public DateTime UpdateOn { get; set; }

    public string CreatedBy { get; set; }

    public string ModifiedBy { get; set; }

    public virtual ICollection<CandidateTechnology> CandidateTechnologies { get; } = new List<CandidateTechnology>();
}
