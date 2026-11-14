CREATE TABLE tbl_collections (
    id SERIAL PRIMARY KEY,
    collection_set_name VARCHAR(100) NOT NULL UNIQUE,
    release_date DATE,
    total_cards_in_collection INTEGER NOT NULL
        CHECK (total_cards_in_collection >= 0)
);

CREATE TABLE tbl_types (
    id SERIAL PRIMARY KEY,
    type_name VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE tbl_stages (
    id SERIAL PRIMARY KEY,
    stage_name VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE tbl_cards (
    id SERIAL PRIMARY KEY,
    hp INTEGER CHECK (hp >= 0),
    name VARCHAR(60) NOT NULL,
    information TEXT,
    attack TEXT,
    damage VARCHAR(10),
    weak VARCHAR(30),
    resistance VARCHAR(30),
    retreat SMALLINT CHECK (retreat >= 0),
    card_number_in_collection VARCHAR(10) NOT NULL,
    collection_id INTEGER NOT NULL,
    type_id INTEGER,
    stage_id INTEGER,

    CONSTRAINT fk_cards_collections
        FOREIGN KEY (collection_id)
        REFERENCES tbl_collections(id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    CONSTRAINT fk_cards_types
        FOREIGN KEY (type_id)
        REFERENCES tbl_types(id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    CONSTRAINT fk_cards_stages
        FOREIGN KEY (stage_id)
        REFERENCES tbl_stages(id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    CONSTRAINT uq_card_collection_number
        UNIQUE (collection_id, card_number_in_collection)
);

CREATE INDEX idx_cards_collection_id
ON tbl_cards(collection_id);

CREATE INDEX idx_cards_type_id
ON tbl_cards(type_id);

CREATE INDEX idx_cards_stage_id
ON tbl_cards(stage_id);