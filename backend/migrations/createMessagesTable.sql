CREATE TABLE IF NOT EXISTS messages (
        id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
        message_body TEXT NOT NULL,
        created_at TIMESTAMP NOT NULL DEFAULT NOW(),
        updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
        chat_id UUID REFERENCES chat(id),
        user_id UUID REFERENCES users(id),
        deleted BOOLEAN NOT NULL DEFAULT FALSE
    );

