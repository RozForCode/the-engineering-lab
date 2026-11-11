DROP TABLE IF EXISTS log_events;
CREATE TABLE log_events (
    event_id INT,
    user_id INT,
    event_type VARCHAR(50),
    created_at TIMESTAMP,
    payload TEXT
);

INSERT INTO log_events (event_id, user_id, event_type, created_at, payload) VALUES
(1, 101, 'login', '2024-01-01 09:00:00', 'payload-a'),
(2, 101, 'click', '2024-01-01 09:01:00', 'payload-b'),
(3, 102, 'login', '2024-01-01 09:03:00', 'payload-c'),
(4, 103, 'purchase', '2024-01-01 09:07:00', 'payload-d'),
(5, 101, 'purchase', '2024-01-01 10:00:00', 'payload-e'),
(6, 104, 'login', '2024-01-02 08:15:00', 'payload-f'),
(7, 105, 'click', '2024-01-02 09:10:00', 'payload-g'),
(8, 106, 'purchase', '2024-01-02 09:20:00', 'payload-h');

CREATE INDEX idx_log_events_user_id ON log_events(user_id);
CREATE INDEX idx_log_events_user_event_created ON log_events(user_id, event_type, created_at);

-- Question 1: Write a query to return all events for user_id = 101.
-- Question 2: Write an EXPLAIN statement for the query above and describe what the plan suggests.
-- Question 3: Write a query to count events by event_type.
-- Question 4: Why does an index help for WHERE user_id = 101 but not necessarily for SELECT * FROM log_events ORDER BY created_at?
-- Question 5: Explain how a B-tree supports equality and range lookups.
-- Question 6: Describe the trade-off between index maintenance and query speed for writes.
