
-- DROP TABLE IF EXISTS balanceSheet CASCADE;
-- DROP TABLE IF EXISTS payment_request CASCADE;
-- DROP TABLE IF EXISTS friendlist CASCADE;
--
-- DROP TABLE IF EXISTS users CASCADE;
CREATE TABLE IF NOT EXISTS users (
	userId SERIAL PRIMARY KEY,
	givenName TEXT NOT NULL,
	familyName TEXT NOT NULL,
	email TEXT NOT NULL,
	profileName TEXT NOT NULL,
	picture TEXT,
	auth0Id TEXT NOT NULL,
	userBalance INTEGER NOT NULL
);

-- DROP TABLE IF EXISTS event CASCADE;
CREATE TABLE IF NOT EXISTS event (
	eventId SERIAL PRIMARY KEY,
	eventName TEXT NOT NULL,
	eventDate TIMESTAMP NOT NULL,
	totalExpense INTEGER NOT NULL,
	eachPersonExpense INTEGER NOT NULL,
	paxCount INTEGER NOT NULL,
	userId INTEGER REFERENCES users(userId)
);

-- DROP TABLE IF EXISTS bills CASCADE;
CREATE TABLE IF NOT EXISTS bills (
	billId SERIAL PRIMARY KEY,
	amount INTEGER NOT NULL,
	createTime TIMESTAMP NOT NULL,
	billsName TEXT NOT NULL,
	userId INTEGER REFERENCES users(userId),
	eventId INTEGER REFERENCES event(eventId)
);


-- DROP TABLE IF EXISTS cashflow  CASCADE;
CREATE TABLE IF NOT EXISTS cashflow (
	cashflowId SERIAL PRIMARY KEY,
	amountPaid INTEGER NOT NULL,
	userId INTEGER REFERENCES users(userId),
	eventId INTEGER REFERENCES event(eventId)
);



-- DROP TABLE IF EXISTS friend_group CASCADE;
CREATE TABLE IF NOT EXISTS friend_group (
	groupId SERIAL PRIMARY KEY,
	eventId INTEGER REFERENCES event(eventId),
	userId INTEGER REFERENCES users(userId)
);
