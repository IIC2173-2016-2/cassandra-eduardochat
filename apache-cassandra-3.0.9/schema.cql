CREATE KEYSPACE arquicoins WITH replication = {'class':'SimpleStrategy', 'replication_factor' : 1};

CREATE TABLE arquicoins.users (users_id bigint PRIMARY KEY,users_arquicoins int, users_updated_at timestamp);

CREATE TABLE arquicoins.purchase_transactions (
    purchase_transactions_id int PRIMARY KEY,
    purchase_transactions_server_id text,
    purchase_transactions_user_id bigint,
    purchase_transactions_amount int,
    purchase_transactions_created_at timestamp
);

CREATE TABLE arquicoins.gift_transactions (
    gift_transactions_id int PRIMARY KEY,
    gift_transactions_origin_user_id bigint,
    gift_transactions_end_user_id bigint,
    gift_transactions_amount int,
    gift_transactions_created_at timestamp
);
