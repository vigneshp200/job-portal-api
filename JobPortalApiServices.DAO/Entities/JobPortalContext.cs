using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace JobPortalApiServices.DAO.Entities;

public partial class JobPortalContext : DbContext
{
    public JobPortalContext()
    {
    }

    public JobPortalContext(DbContextOptions<JobPortalContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Candidate> Candidates { get; set; }

    public virtual DbSet<CandidateFile> CandidateFiles { get; set; }

    public virtual DbSet<CandidatePosition> CandidatePositions { get; set; }

    public virtual DbSet<CandidateTechnology> CandidateTechnologies { get; set; }

    public virtual DbSet<File> Files { get; set; }

    public virtual DbSet<Position> Positions { get; set; }

    public virtual DbSet<Technology> Technologies { get; set; }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Candidate>(entity =>
        {
            entity.ToTable("Candidate");

            entity.Property(e => e.AboutProject)
                .IsRequired()
                .HasMaxLength(500);
            entity.Property(e => e.Company)
                .IsRequired()
                .HasMaxLength(150);
            entity.Property(e => e.Contact)
                .IsRequired()
                .HasMaxLength(10)
                .IsUnicode(false);
            entity.Property(e => e.CreatedBy)
                .IsRequired()
                .HasMaxLength(100);
            entity.Property(e => e.CreatedOn).HasColumnType("date");
            entity.Property(e => e.Email)
                .IsRequired()
                .HasMaxLength(100);
            entity.Property(e => e.FirstName)
                .IsRequired()
                .HasMaxLength(100);
            entity.Property(e => e.LastName)
                .IsRequired()
                .HasMaxLength(100);
            entity.Property(e => e.ModifiedBy)
                .IsRequired()
                .HasMaxLength(100);
            entity.Property(e => e.UpdatedOn).HasColumnType("date");
        });

        modelBuilder.Entity<CandidateFile>(entity =>
        {
            entity.ToTable("CandidateFile");

            entity.Property(e => e.Id).HasColumnName("id");

            entity.HasOne(d => d.Candidate).WithMany(p => p.CandidateFiles)
                .HasForeignKey(d => d.CandidateId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_CandidateFile_Candidate");

            entity.HasOne(d => d.File).WithMany(p => p.CandidateFiles)
                .HasForeignKey(d => d.FileId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_CandidateFile_File");
        });

        modelBuilder.Entity<CandidatePosition>(entity =>
        {
            entity.ToTable("CandidatePosition");

            entity.HasOne(d => d.Candidate).WithMany(p => p.CandidatePositions)
                .HasForeignKey(d => d.CandidateId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_CandidatePosition_Candidate");

            entity.HasOne(d => d.Position).WithMany(p => p.CandidatePositions)
                .HasForeignKey(d => d.PositionId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_CandidatePosition_Position");
        });

        modelBuilder.Entity<CandidateTechnology>(entity =>
        {
            entity.ToTable("CandidateTechnology");

            entity.HasOne(d => d.Candidate).WithMany(p => p.CandidateTechnologies)
                .HasForeignKey(d => d.CandidateId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_CandidateTechnology_Candidate");

            entity.HasOne(d => d.Technology).WithMany(p => p.CandidateTechnologies)
                .HasForeignKey(d => d.TechnologyId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_CandidateTechnology_Technology");
        });

        modelBuilder.Entity<File>(entity =>
        {
            entity.ToTable("File");

            entity.Property(e => e.CreatedBy)
                .IsRequired()
                .HasMaxLength(100);
            entity.Property(e => e.CreatedOn).HasColumnType("datetime");
            entity.Property(e => e.ModifiedBy)
                .IsRequired()
                .HasMaxLength(100);
            entity.Property(e => e.Name)
                .IsRequired()
                .HasMaxLength(100);
            entity.Property(e => e.Path)
                .IsRequired()
                .HasMaxLength(1000)
                .IsFixedLength();
            entity.Property(e => e.UpdatedOn).HasColumnType("datetime");
        });

        modelBuilder.Entity<Position>(entity =>
        {
            entity.ToTable("Position");

            entity.Property(e => e.CreatedBy)
                .IsRequired()
                .HasMaxLength(100);
            entity.Property(e => e.CreatedOn)
                .HasDefaultValueSql("(sysdatetime())")
                .HasColumnType("datetime");
            entity.Property(e => e.Description)
                .IsRequired()
                .HasMaxLength(1500);
            entity.Property(e => e.EndDate).HasColumnType("date");
            entity.Property(e => e.ModifiedBy)
                .IsRequired()
                .HasMaxLength(100);
            entity.Property(e => e.StartDate).HasColumnType("date");
            entity.Property(e => e.Title)
                .IsRequired()
                .HasMaxLength(100);
            entity.Property(e => e.UpdateOn).HasColumnType("datetime");
        });

        modelBuilder.Entity<Technology>(entity =>
        {
            entity.ToTable("Technology");

            entity.Property(e => e.CreatedBy)
                .IsRequired()
                .HasMaxLength(100);
            entity.Property(e => e.CreatedOn).HasColumnType("datetime");
            entity.Property(e => e.ModifiedBy)
                .IsRequired()
                .HasMaxLength(100);
            entity.Property(e => e.Name)
                .IsRequired()
                .HasMaxLength(500);
            entity.Property(e => e.UpdateOn).HasColumnType("datetime");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
