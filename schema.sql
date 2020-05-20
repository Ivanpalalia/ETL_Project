-- Create four Tables
CREATE TABLE books (
	id SERIAL PRIMARY KEY,
	link TEXT,
	title TEXT,
	description TEXT,
	price FLOAT
);

CREATE TABLE quotes (
  quote_speaker TEXT
);

CREATE TABLE speakers (
  id SERIAL PRIMARY KEY,
  speaker TEXT
);

CREATE TABLE matches (
	book_id INT,
	speaker_id INT
);

ALTER TABLE matches ADD CONSTRAINT fk_matches_book_id FOREIGN KEY(book_id)
REFERENCES books (id);

ALTER TABLE matches ADD CONSTRAINT fk_matches_speaker_id FOREIGN KEY(speaker_id)
REFERENCES speakers (id);