CREATE DATABASE feedback;

    \connect feedback;

    CREATE TABLE messages (
        id SERIAL PRIMARY KEY,
        text TEXT
    );
