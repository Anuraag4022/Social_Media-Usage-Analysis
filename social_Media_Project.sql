use Project

select count(Gender),Location from Social_Media where Age<50
Group by Location

select * from Social_Media

select top 5 Location, Profession  from Social_Media 
group by Profession

select Count(UserID),PLATFORM from Social_Media
Group By PLATFORM
ORDER BY Location

select cOUNT(UserID) from Social_Media

SELECT TOP 10 
    Location, 
    COUNT(UserID) AS NumberOfUsers
FROM 
    Social_Media
GROUP BY 
    Location
ORDER BY 
    NumberOfUsers DESC;


SELECT 
    Category, 
    COUNT(UserID) AS NumberOfUsers
FROM 
    Social_Media
GROUP BY 
    Category
ORDER BY 
    NumberOfUsers ASC;


SELECT Gender, COUNT(UserID) * 100.0 / (SELECT COUNT(*) FROM Social_Media) AS Percentage
FROM Social_Media 
GROUP BY Gender;


SELECT Demographics, 
       COUNT(UserID) AS NumberOfUsers 
FROM Social_Media 
GROUP BY Demographics 
ORDER BY NumberOfUsers DESC 


SELECT Demographics, 
       COUNT(UserID) AS NumberOfUsers,
       (COUNT(UserID) * 100.0 / (SELECT COUNT(*) FROM Social_Media)) AS Percentage
FROM Social_Media 
GROUP BY Demographics 
ORDER BY NumberOfUsers DESC 

/*This query groups the users by both location and profession, counts the number of users in each group, and 
orders the results by location and then by the number of users in descending order.*/

SELECT Location, 
       Profession, 
       COUNT(UserID) AS NumberOfUsers
FROM Social_Media 
GROUP BY Location, Profession
ORDER BY Location, NumberOfUsers DESC;


/*To find which profession has the highest number of users, you can use the following SQL query:*/

SELECT Profession, 
       COUNT(UserID) AS NumberOfUsers
FROM Social_Media 
GROUP BY Profession 
ORDER BY NumberOfUsers DESC 


SELECT Platform, 
       COUNT(UserID) AS NumberOfUsers
FROM Social_Media 
GROUP BY Platform 
ORDER BY NumberOfUsers DESC 
LIMIT 1;


SELECT Location, 
       Platform, 
       COUNT(UserID) AS NumberOfUsers_in_Mil
FROM Social_Media 
GROUP BY Location, Platform 
ORDER BY Location, NumberOfUsers_in_Mil DESC;


SELECT 
    [Platform],
    [Video_Category],
    COUNT(*) AS [Count]
FROM 
    [Project].[dbo].[Social_Media]
GROUP BY 
    [Platform],
    [Video_Category]
ORDER BY 
    [Platform],
    [Count] DESC;


SELECT 
    Gender, 
    Platform, 
    COUNT(UserID) AS NumberOfUsers
FROM 
    Social_Media
GROUP BY 
    Gender, 
    Platform
ORDER BY 
    Gender, 
    NumberOfUsers DESC;


	SELECT 
    Location, 
    Platform, 
    AVG(Income) AS AverageIncome
FROM 
    Social_Media
GROUP BY 
    Location, 
    Platform
ORDER BY 
    Location, 
    AverageIncome DESC;


SELECT 
    Video_Category, 
    Platform, 
    SUM(Time_Spent_On_Video) AS TotalTimeSpent
FROM 
    Social_Media
GROUP BY 
    Video_Category, 
    Platform
ORDER BY 
    Video_Category, 
    TotalTimeSpent DESC;

SELECT 
    DeviceType, 
    Platform, 
    COUNT(UserID) AS NumberOfUsers
FROM 
    Social_Media
GROUP BY 
    DeviceType, 
    Platform
ORDER BY 
    DeviceType, 
    NumberOfUsers DESC;

