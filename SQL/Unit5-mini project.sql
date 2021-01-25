--Create a "videos" table.
create table videos(
ID serial primary key,
Title varchar(200)unique not null,
Length varchar(200) not null,
URL varchar(200) unique not null));

--Populate the "videos" table.

select * from videos;
insert into videos
values
('1','China works to contain new COVID-19 surge','2:43','https://www.youtube.com/watch?v=OKf4NZL78Is'),
('2','Biden Unveils National Strategy For Covid-19 Vaccinations','4:37','https://www.youtube.com/watch?v=BE8iGthT5ns'),
('3','Tensions Build Over COVID-19 Vaccine Rollout And UK Strain','2:31','https://www.youtube.com/watch?v=-VhmON3PSSU&t=3s');
select * from videos;

--Create and populate "Reviewers" table.

create table Reviewers(
ID int,
Name varchar(100)unique not null,
Rating varchar(100),Review varchar(100));
select * from Reviewers;
insert into reviewers
values
('1','Asher','1','Love it!'),
('1','John','3','Really?'),
('2','Tom','2','I agree.'),
('2','Jimmy','2','True.');
select * from reviewers;

--Report on Video Reviews.

select * from videos
inner join Reviewers on reviewers.id=videos.id;
