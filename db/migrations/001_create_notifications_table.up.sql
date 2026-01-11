CREATE TABLE IF NOT EXISTS notifications (
    id SERIAL PRIMARY KEY,
    telegram_chat_id BIGINT NOT NULL,
    message TEXT NOT NULL,
    scheduled_at TIMESTAMPTZ NOT NULL,
    status VARCHAR(20) DEFAULT 'scheduled',
    attempt INTEGER DEFAULT 0,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT now()
);

CREATE INDEX IF NOT EXISTS idx_notifications_status ON notifications(status);
CREATE INDEX IF NOT EXISTS idx_notifications_scheduled_at ON notifications(scheduled_at);