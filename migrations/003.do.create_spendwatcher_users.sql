CREATE TABLE spendwatcher_users (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    full_name TEXT NOT NULL,
    user_name TEXT NOT NULL UNIQUE,
    password TEXT,
    date_created TIMESTAMP NOT NULL DEFAULT now()
);