BEGIN;

TRUNCATE
    expense_logs,
    spendwatcher_users
    RESTART IDENTITY CASCADE;

INSERT INTO spendwatcher_users(full_name, user_name, password)
VALUES
    ('Dunder Mifflin', 'dunder', '$2a$12$lHK6LVpc15/ZROZcKU00QeiD.RyYq5dVlV/9m4kKYbGibkRc5l4Ne'),
    ('Sam Smith', 's.smith', '$2a$12$/4P5/ylaB7qur/McgrEKwuCy.3JZ6W.cRtqxiJsYCdhr89V4Z3rp.'),
    ('Julia Johnson', 'jjohnson', '$2a$12$Hq9pfcWWvnzZ8x8HqJotveRHLD13ceS7DDbrs18LpK6rfj4iftNw.');

INSERT INTO expense_logs(amount, style, description)
VALUES
    ('15.45', 'Food', 'Monday Night Dinner'),
    ('750.00', 'Bills', 'February Rent'),
    ('21.95', 'Entertainment', 'Weekend Movie Package'),
    ('19.95', 'Personal', 'Monthly Haircut'),
    ('250.00', 'Transportation', 'Monthly Commuter Pass'),
    ('500.00', 'Travel', 'Florida Trip');
COMMIT;