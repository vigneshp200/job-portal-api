USE [JobPortal]
GO
SET IDENTITY_INSERT [dbo].[Position] ON 

INSERT [dbo].[Position] ([PositionId], [Title], [Description], [StartDate], [EndDate], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (3, N'Trainee Software Engineer', N'Trainee Software Engineer', CAST(N'2022-10-15' AS Date), CAST(N'2023-11-15' AS Date), CAST(N'2022-11-15T11:05:54.353' AS DateTime), CAST(N'2022-11-15T11:05:54.353' AS DateTime), N'System', N'System')
INSERT [dbo].[Position] ([PositionId], [Title], [Description], [StartDate], [EndDate], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (4, N'Software Engineer', N'Software Engineer', CAST(N'2022-10-15' AS Date), CAST(N'2023-11-15' AS Date), CAST(N'2022-11-15T11:05:54.353' AS DateTime), CAST(N'2022-11-15T11:05:54.353' AS DateTime), N'System', N'System')
INSERT [dbo].[Position] ([PositionId], [Title], [Description], [StartDate], [EndDate], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (5, N'Senior Software Engineer', N'Senior Software Engineer', CAST(N'2022-10-15' AS Date), CAST(N'2023-11-15' AS Date), CAST(N'2022-11-15T11:05:54.353' AS DateTime), CAST(N'2022-11-15T11:05:54.353' AS DateTime), N'System', N'System')
INSERT [dbo].[Position] ([PositionId], [Title], [Description], [StartDate], [EndDate], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (6, N'Module Lead', N'Module Lead', CAST(N'2022-10-15' AS Date), CAST(N'2023-11-15' AS Date), CAST(N'2022-11-15T11:05:54.353' AS DateTime), CAST(N'2022-11-15T11:05:54.353' AS DateTime), N'System', N'System')
INSERT [dbo].[Position] ([PositionId], [Title], [Description], [StartDate], [EndDate], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (7, N'Lead', N'Lead', CAST(N'2022-10-15' AS Date), CAST(N'2023-11-15' AS Date), CAST(N'2022-11-15T11:05:54.353' AS DateTime), CAST(N'2022-11-15T11:05:54.353' AS DateTime), N'System', N'System')
INSERT [dbo].[Position] ([PositionId], [Title], [Description], [StartDate], [EndDate], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (8, N'Manager', N'Manager', CAST(N'2022-10-15' AS Date), CAST(N'2023-11-15' AS Date), CAST(N'2022-11-15T11:05:54.353' AS DateTime), CAST(N'2022-11-15T11:05:54.353' AS DateTime), N'System', N'System')
INSERT [dbo].[Position] ([PositionId], [Title], [Description], [StartDate], [EndDate], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (9, N'Senior Manager', N'Senior Manager', CAST(N'2022-10-15' AS Date), CAST(N'2023-11-15' AS Date), CAST(N'2022-11-15T11:05:54.353' AS DateTime), CAST(N'2022-11-15T11:05:54.353' AS DateTime), N'System', N'System')
INSERT [dbo].[Position] ([PositionId], [Title], [Description], [StartDate], [EndDate], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (10, N'Vice-President', N'Vice-President', CAST(N'2022-10-15' AS Date), CAST(N'2023-11-15' AS Date), CAST(N'2022-11-15T11:05:54.353' AS DateTime), CAST(N'2022-11-15T11:05:54.353' AS DateTime), N'System', N'System')
SET IDENTITY_INSERT [dbo].[Position] OFF
GO
SET IDENTITY_INSERT [dbo].[Candidate] ON 

INSERT [dbo].[Candidate] ([CandidateId], [FirstName], [LastName], [Email], [Contact], [Company], [CurrentCtc], [AboutProject], [CreatedOn], [UpdatedOn], [CreatedBy], [ModifiedBy]) VALUES (1, N'Vignesh', N'Pandi', N'a@b.com', N'9876543211', N'MMGS', 11323, N'Test Project', CAST(N'2022-11-15' AS Date), CAST(N'2022-11-15' AS Date), N'System', N'System')
INSERT [dbo].[Candidate] ([CandidateId], [FirstName], [LastName], [Email], [Contact], [Company], [CurrentCtc], [AboutProject], [CreatedOn], [UpdatedOn], [CreatedBy], [ModifiedBy]) VALUES (2, N'Mala', N'Pandi', N'a@b.com', N'9876543211', N'Test company', 100000, N'assdfd', CAST(N'2022-11-15' AS Date), CAST(N'2022-11-15' AS Date), N'System', N'System')
INSERT [dbo].[Candidate] ([CandidateId], [FirstName], [LastName], [Email], [Contact], [Company], [CurrentCtc], [AboutProject], [CreatedOn], [UpdatedOn], [CreatedBy], [ModifiedBy]) VALUES (3, N'Jyothi', N'Vignesh', N'jyothi@gmail.co', N'9876543211', N'MMC', 100022, N'Test', CAST(N'2022-11-15' AS Date), CAST(N'2022-11-15' AS Date), N'System', N'System')
INSERT [dbo].[Candidate] ([CandidateId], [FirstName], [LastName], [Email], [Contact], [Company], [CurrentCtc], [AboutProject], [CreatedOn], [UpdatedOn], [CreatedBy], [ModifiedBy]) VALUES (4, N'Nirbhay', N'Giri', N'Nir@gmail.com', N'9876543211', N'LTI', 987652, N'Test', CAST(N'2022-11-15' AS Date), CAST(N'2022-11-15' AS Date), N'System', N'System')
INSERT [dbo].[Candidate] ([CandidateId], [FirstName], [LastName], [Email], [Contact], [Company], [CurrentCtc], [AboutProject], [CreatedOn], [UpdatedOn], [CreatedBy], [ModifiedBy]) VALUES (5, N'Pandi', N'K', N'pandi@test.com', N'9876543211', N'Accenture', 1003232, N'Projects', CAST(N'2022-11-15' AS Date), CAST(N'2022-11-15' AS Date), N'System', N'System')
SET IDENTITY_INSERT [dbo].[Candidate] OFF
GO
SET IDENTITY_INSERT [dbo].[CandidatePosition] ON 

INSERT [dbo].[CandidatePosition] ([CandidateId], [PositionId], [Id]) VALUES (1, 6, 1)
INSERT [dbo].[CandidatePosition] ([CandidateId], [PositionId], [Id]) VALUES (2, 4, 2)
INSERT [dbo].[CandidatePosition] ([CandidateId], [PositionId], [Id]) VALUES (3, 5, 3)
INSERT [dbo].[CandidatePosition] ([CandidateId], [PositionId], [Id]) VALUES (4, 7, 4)
INSERT [dbo].[CandidatePosition] ([CandidateId], [PositionId], [Id]) VALUES (5, 8, 5)
SET IDENTITY_INSERT [dbo].[CandidatePosition] OFF
GO
SET IDENTITY_INSERT [dbo].[Technology] ON 

INSERT [dbo].[Technology] ([Id], [Name], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (1, N'C', CAST(N'2022-11-15T11:05:54.013' AS DateTime), CAST(N'2022-11-15T11:05:54.013' AS DateTime), N'System', N'System')
INSERT [dbo].[Technology] ([Id], [Name], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (2, N'C#', CAST(N'2022-11-15T11:05:54.013' AS DateTime), CAST(N'2022-11-15T11:05:54.013' AS DateTime), N'System', N'System')
INSERT [dbo].[Technology] ([Id], [Name], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (3, N'C++', CAST(N'2022-11-15T11:05:54.013' AS DateTime), CAST(N'2022-11-15T11:05:54.013' AS DateTime), N'System', N'System')
INSERT [dbo].[Technology] ([Id], [Name], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (4, N'Java', CAST(N'2022-11-15T11:05:54.013' AS DateTime), CAST(N'2022-11-15T11:05:54.013' AS DateTime), N'System', N'System')
INSERT [dbo].[Technology] ([Id], [Name], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (5, N'Go', CAST(N'2022-11-15T11:05:54.013' AS DateTime), CAST(N'2022-11-15T11:05:54.013' AS DateTime), N'System', N'System')
INSERT [dbo].[Technology] ([Id], [Name], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (6, N'Python', CAST(N'2022-11-15T11:05:54.013' AS DateTime), CAST(N'2022-11-15T11:05:54.013' AS DateTime), N'System', N'System')
INSERT [dbo].[Technology] ([Id], [Name], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (7, N'Javascript', CAST(N'2022-11-15T11:05:54.013' AS DateTime), CAST(N'2022-11-15T11:05:54.013' AS DateTime), N'System', N'System')
INSERT [dbo].[Technology] ([Id], [Name], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (8, N'Angular', CAST(N'2022-11-15T11:05:54.013' AS DateTime), CAST(N'2022-11-15T11:05:54.013' AS DateTime), N'System', N'System')
INSERT [dbo].[Technology] ([Id], [Name], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (9, N'React', CAST(N'2022-11-15T11:05:54.013' AS DateTime), CAST(N'2022-11-15T11:05:54.013' AS DateTime), N'System', N'System')
INSERT [dbo].[Technology] ([Id], [Name], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (10, N'AngularJS', CAST(N'2022-11-15T11:05:54.013' AS DateTime), CAST(N'2022-11-15T11:05:54.013' AS DateTime), N'System', N'System')
INSERT [dbo].[Technology] ([Id], [Name], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (11, N'.Net', CAST(N'2022-11-15T11:05:54.013' AS DateTime), CAST(N'2022-11-15T11:05:54.013' AS DateTime), N'System', N'System')
INSERT [dbo].[Technology] ([Id], [Name], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (12, N'Asp.Net', CAST(N'2022-11-15T11:05:54.013' AS DateTime), CAST(N'2022-11-15T11:05:54.013' AS DateTime), N'System', N'System')
INSERT [dbo].[Technology] ([Id], [Name], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (13, N'Asp.Net MVC', CAST(N'2022-11-15T11:05:54.013' AS DateTime), CAST(N'2022-11-15T11:05:54.013' AS DateTime), N'System', N'System')
INSERT [dbo].[Technology] ([Id], [Name], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (14, N'Html', CAST(N'2022-11-15T11:05:54.013' AS DateTime), CAST(N'2022-11-15T11:05:54.013' AS DateTime), N'System', N'System')
INSERT [dbo].[Technology] ([Id], [Name], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (15, N'Scala', CAST(N'2022-11-15T11:05:54.013' AS DateTime), CAST(N'2022-11-15T11:05:54.013' AS DateTime), N'System', N'System')
INSERT [dbo].[Technology] ([Id], [Name], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (16, N'.Net Core', CAST(N'2022-11-15T11:05:54.013' AS DateTime), CAST(N'2022-11-15T11:05:54.013' AS DateTime), N'System', N'System')
INSERT [dbo].[Technology] ([Id], [Name], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (17, N'Spring', CAST(N'2022-11-15T11:05:54.013' AS DateTime), CAST(N'2022-11-15T11:05:54.013' AS DateTime), N'System', N'System')
INSERT [dbo].[Technology] ([Id], [Name], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (18, N'Spring Boot', CAST(N'2022-11-15T11:05:54.013' AS DateTime), CAST(N'2022-11-15T11:05:54.013' AS DateTime), N'System', N'System')
INSERT [dbo].[Technology] ([Id], [Name], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (19, N'Bootstrap', CAST(N'2022-11-15T11:05:54.013' AS DateTime), CAST(N'2022-11-15T11:05:54.013' AS DateTime), N'System', N'System')
INSERT [dbo].[Technology] ([Id], [Name], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (20, N'Angular Material', CAST(N'2022-11-15T11:05:54.013' AS DateTime), CAST(N'2022-11-15T11:05:54.013' AS DateTime), N'System', N'System')
INSERT [dbo].[Technology] ([Id], [Name], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (21, N'Redux', CAST(N'2022-11-15T11:05:54.013' AS DateTime), CAST(N'2022-11-15T11:05:54.013' AS DateTime), N'System', N'System')
INSERT [dbo].[Technology] ([Id], [Name], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (22, N'RxJs', CAST(N'2022-11-15T11:05:54.013' AS DateTime), CAST(N'2022-11-15T11:05:54.013' AS DateTime), N'System', N'System')
INSERT [dbo].[Technology] ([Id], [Name], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (23, N'Kotlin', CAST(N'2022-11-15T11:05:54.013' AS DateTime), CAST(N'2022-11-15T11:05:54.013' AS DateTime), N'System', N'System')
INSERT [dbo].[Technology] ([Id], [Name], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (24, N'Ruby', CAST(N'2022-11-15T11:05:54.013' AS DateTime), CAST(N'2022-11-15T11:05:54.013' AS DateTime), N'System', N'System')
INSERT [dbo].[Technology] ([Id], [Name], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (25, N'PHP', CAST(N'2022-11-15T11:05:54.013' AS DateTime), CAST(N'2022-11-15T11:05:54.013' AS DateTime), N'System', N'System')
INSERT [dbo].[Technology] ([Id], [Name], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (26, N'Swift', CAST(N'2022-11-15T11:05:54.013' AS DateTime), CAST(N'2022-11-15T11:05:54.013' AS DateTime), N'System', N'System')
INSERT [dbo].[Technology] ([Id], [Name], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (27, N'Matlab', CAST(N'2022-11-15T11:05:54.013' AS DateTime), CAST(N'2022-11-15T11:05:54.013' AS DateTime), N'System', N'System')
INSERT [dbo].[Technology] ([Id], [Name], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (28, N'TypeScript', CAST(N'2022-11-15T11:05:54.013' AS DateTime), CAST(N'2022-11-15T11:05:54.013' AS DateTime), N'System', N'System')
INSERT [dbo].[Technology] ([Id], [Name], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (29, N'ADF', CAST(N'2022-11-15T11:05:54.013' AS DateTime), CAST(N'2022-11-15T11:05:54.013' AS DateTime), N'System', N'System')
INSERT [dbo].[Technology] ([Id], [Name], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (30, N'PL SQL', CAST(N'2022-11-15T11:05:54.013' AS DateTime), CAST(N'2022-11-15T11:05:54.013' AS DateTime), N'System', N'System')
INSERT [dbo].[Technology] ([Id], [Name], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (31, N'TSQL', CAST(N'2022-11-15T11:05:54.013' AS DateTime), CAST(N'2022-11-15T11:05:54.013' AS DateTime), N'System', N'System')
INSERT [dbo].[Technology] ([Id], [Name], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (32, N'Oracle', CAST(N'2022-11-15T11:05:54.013' AS DateTime), CAST(N'2022-11-15T11:05:54.013' AS DateTime), N'System', N'System')
INSERT [dbo].[Technology] ([Id], [Name], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (33, N'Sql Server', CAST(N'2022-11-15T11:05:54.013' AS DateTime), CAST(N'2022-11-15T11:05:54.013' AS DateTime), N'System', N'System')
INSERT [dbo].[Technology] ([Id], [Name], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (34, N'Node', CAST(N'2022-11-15T11:05:54.013' AS DateTime), CAST(N'2022-11-15T11:05:54.013' AS DateTime), N'System', N'System')
INSERT [dbo].[Technology] ([Id], [Name], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (35, N'MEAN', CAST(N'2022-11-15T11:05:54.013' AS DateTime), CAST(N'2022-11-15T11:05:54.013' AS DateTime), N'System', N'System')
INSERT [dbo].[Technology] ([Id], [Name], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (36, N'MERN', CAST(N'2022-11-15T11:05:54.013' AS DateTime), CAST(N'2022-11-15T11:05:54.013' AS DateTime), N'System', N'System')
INSERT [dbo].[Technology] ([Id], [Name], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (37, N'MongoDB', CAST(N'2022-11-15T11:05:54.013' AS DateTime), CAST(N'2022-11-15T11:05:54.013' AS DateTime), N'System', N'System')
INSERT [dbo].[Technology] ([Id], [Name], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (38, N'Azure', CAST(N'2022-11-15T11:05:54.013' AS DateTime), CAST(N'2022-11-15T11:05:54.013' AS DateTime), N'System', N'System')
INSERT [dbo].[Technology] ([Id], [Name], [CreatedOn], [UpdateOn], [CreatedBy], [ModifiedBy]) VALUES (39, N'AWS', CAST(N'2022-11-15T11:05:54.013' AS DateTime), CAST(N'2022-11-15T11:05:54.013' AS DateTime), N'System', N'System')
SET IDENTITY_INSERT [dbo].[Technology] OFF
GO
SET IDENTITY_INSERT [dbo].[CandidateTechnology] ON 

INSERT [dbo].[CandidateTechnology] ([CandidateId], [TechnologyId], [Id]) VALUES (1, 2, 1)
INSERT [dbo].[CandidateTechnology] ([CandidateId], [TechnologyId], [Id]) VALUES (1, 8, 2)
INSERT [dbo].[CandidateTechnology] ([CandidateId], [TechnologyId], [Id]) VALUES (1, 11, 3)
INSERT [dbo].[CandidateTechnology] ([CandidateId], [TechnologyId], [Id]) VALUES (2, 3, 4)
INSERT [dbo].[CandidateTechnology] ([CandidateId], [TechnologyId], [Id]) VALUES (3, 23, 5)
INSERT [dbo].[CandidateTechnology] ([CandidateId], [TechnologyId], [Id]) VALUES (4, 8, 6)
INSERT [dbo].[CandidateTechnology] ([CandidateId], [TechnologyId], [Id]) VALUES (4, 20, 7)
INSERT [dbo].[CandidateTechnology] ([CandidateId], [TechnologyId], [Id]) VALUES (5, 5, 8)
SET IDENTITY_INSERT [dbo].[CandidateTechnology] OFF
GO
SET IDENTITY_INSERT [dbo].[File] ON 

INSERT [dbo].[File] ([FileId], [Name], [Path], [CreatedOn], [UpdatedOn], [CreatedBy], [ModifiedBy]) VALUES (1, N'FileName151120220736.pdf', N'Some Path                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ', CAST(N'2022-11-15T11:07:46.777' AS DateTime), CAST(N'2022-11-15T11:07:46.777' AS DateTime), N'System', N'System')
INSERT [dbo].[File] ([FileId], [Name], [Path], [CreatedOn], [UpdatedOn], [CreatedBy], [ModifiedBy]) VALUES (2, N'FileName151120220944.pdf', N'Some Path                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ', CAST(N'2022-11-15T11:09:50.337' AS DateTime), CAST(N'2022-11-15T11:09:50.337' AS DateTime), N'System', N'System')
INSERT [dbo].[File] ([FileId], [Name], [Path], [CreatedOn], [UpdatedOn], [CreatedBy], [ModifiedBy]) VALUES (3, N'FileName151120221114.pdf', N'Some Path                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ', CAST(N'2022-11-15T11:11:20.957' AS DateTime), CAST(N'2022-11-15T11:11:20.957' AS DateTime), N'System', N'System')
INSERT [dbo].[File] ([FileId], [Name], [Path], [CreatedOn], [UpdatedOn], [CreatedBy], [ModifiedBy]) VALUES (4, N'FileName151120221217.pdf', N'Some Path                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ', CAST(N'2022-11-15T11:12:22.887' AS DateTime), CAST(N'2022-11-15T11:12:22.887' AS DateTime), N'System', N'System')
INSERT [dbo].[File] ([FileId], [Name], [Path], [CreatedOn], [UpdatedOn], [CreatedBy], [ModifiedBy]) VALUES (5, N'FileName151120221308.pdf', N'Some Path                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ', CAST(N'2022-11-15T11:13:18.517' AS DateTime), CAST(N'2022-11-15T11:13:18.517' AS DateTime), N'System', N'System')
SET IDENTITY_INSERT [dbo].[File] OFF
GO
