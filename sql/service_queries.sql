-- Total number of service requests
SELECT COUNT(*) AS total_requests
FROM service_requests;

-- Requests by status
SELECT Status, COUNT(*) AS request_count
FROM service_requests
GROUP BY Status;

-- High priority requests
SELECT Request_ID, Customer_Name, Company, Product_or_Part, Status
FROM service_requests
WHERE Priority = 'High';

-- Requests assigned to technicians
SELECT Assigned_To, COUNT(*) AS task_count
FROM service_requests
GROUP BY Assigned_To;

-- Open requests (not closed)
SELECT Request_ID, Customer_Name, Company, Status
FROM service_requests
WHERE Status <> 'Closed';
