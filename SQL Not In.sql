/*
id: the unique user ID;
username: the username of the user;
role the user's role;
email: the user's email.
You want to send users automatic notifications to let them know about the most recent updates. However, not all users should get these notifications: Administrators don't need notifications since they know about the updates already, and premium users don't need them since they get personalized weekly updates.

Return the emails of all the users who should get notifications, i.e. those whose role is not equal to "admin" or "premium". Note that roles are case insensitive, so users with roles of "Admin", "pReMiUm", etc. should also be excluded.

The resulting table should contain a single email column and be sorted by emails in ascending order.
*/

--Solution:
SELECT email
    FROM users
    WHERE role NOT IN ("admin", "premium")

    ORDER BY email;
