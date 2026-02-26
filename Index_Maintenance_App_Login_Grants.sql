-- Create applictaion login to perform Index maintenance on applictaion databases.
CREATE USER 'User'@'%' IDENTIFIED BY 'your_secure_password_here';

-- Grant access to perform maintenance on all tables in a applictaion database schema
GRANT SELECT, ALTER, INDEX, CREATE, ON app_db.* TO 'User'@'%';

-- Grant access to show all databases including applictaion database schemas.
GRANT SHOW DATABASES ON *.* TO 'User'@'%';

-- Grant access on all database schemas to retrieve table Metadata
GRANT SELECT ON *.* TO 'User'@'%';

-- Refresh PRIVILEGES
FLUSH PRIVILEGES;