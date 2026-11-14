INSERT INTO tbl_collections (
    collection_set_name,
    release_date,
    total_cards_in_collection
)
VALUES
    ('Base Set', '1999-01-09', 102)
ON CONFLICT (collection_set_name) DO NOTHING;


INSERT INTO tbl_types (type_name)
VALUES
    ('Grass'),
    ('Fire'),
    ('Water'),
    ('Lightning'),
    ('Psychic'),
    ('Fighting'),
    ('Darkness'),
    ('Metal'),
    ('Dragon'),
    ('Colorless')
ON CONFLICT (type_name) DO NOTHING;


INSERT INTO tbl_stages (stage_name)
VALUES
    ('Basic'),
    ('Stage 1'),
    ('Stage 2')
ON CONFLICT (stage_name) DO NOTHING;


INSERT INTO tbl_cards (
    hp,
    name,
    information,
    attack,
    damage,
    weak,
    resistance,
    retreat,
    card_number_in_collection,
    collection_id,
    type_id,
    stage_id
)
VALUES

(
    40,
    'Bulbasaur',
    'A strange seed was planted on its back at birth. The plant sprouts and grows with this Pokémon.',
    'Leech Seed',
    '20',
    'Fire',
    NULL,
    1,
    '44/102',
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set'),
    (SELECT id FROM tbl_types WHERE type_name = 'Grass'),
    (SELECT id FROM tbl_stages WHERE stage_name = 'Basic')
),

(
    60,
    'Ivysaur',
    'When the bulb on its back grows large, it appears to lose the ability to stand on its hind legs.',
    'Vine Whip',
    '30',
    'Fire',
    NULL,
    2,
    '30/102',
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set'),
    (SELECT id FROM tbl_types WHERE type_name = 'Grass'),
    (SELECT id FROM tbl_stages WHERE stage_name = 'Stage 1')
),

(
    100,
    'Venusaur',
    'The plant blooms when it is absorbing solar energy. It stays on the move to seek sunlight.',
    'Solarbeam',
    '60',
    'Fire',
    NULL,
    2,
    '15/102',
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set'),
    (SELECT id FROM tbl_types WHERE type_name = 'Grass'),
    (SELECT id FROM tbl_stages WHERE stage_name = 'Stage 2')
),

(
    50,
    'Charmander',
    'Obviously prefers hot places. When it rains, steam is said to spout from the tip of its tail.',
    'Scratch',
    '10',
    'Water',
    NULL,
    1,
    '46/102',
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set'),
    (SELECT id FROM tbl_types WHERE type_name = 'Fire'),
    (SELECT id FROM tbl_stages WHERE stage_name = 'Basic')
),

(
    80,
    'Charmeleon',
    'When it swings its burning tail, it elevates the temperature to unbearably high levels.',
    'Slash',
    '30',
    'Water',
    NULL,
    1,
    '24/102',
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set'),
    (SELECT id FROM tbl_types WHERE type_name = 'Fire'),
    (SELECT id FROM tbl_stages WHERE stage_name = 'Stage 1')
),

(
    120,
    'Charizard',
    'Spits fire that is hot enough to melt boulders. Known to cause forest fires unintentionally.',
    'Fire Spin',
    '100',
    'Water',
    'Fighting',
    3,
    '4/102',
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set'),
    (SELECT id FROM tbl_types WHERE type_name = 'Fire'),
    (SELECT id FROM tbl_stages WHERE stage_name = 'Stage 2')
),

(
    40,
    'Squirtle',
    'After birth, its back swells and hardens into a shell. Powerfully sprays foam from its mouth.',
    'Bubble',
    '10',
    'Lightning',
    NULL,
    1,
    '63/102',
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set'),
    (SELECT id FROM tbl_types WHERE type_name = 'Water'),
    (SELECT id FROM tbl_stages WHERE stage_name = 'Basic')
),

(
    70,
    'Wartortle',
    'Often hides in water to stalk unwary prey. For swimming fast, it moves its ears to maintain balance.',
    'Withdraw',
    NULL,
    'Lightning',
    NULL,
    1,
    '42/102',
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set'),
    (SELECT id FROM tbl_types WHERE type_name = 'Water'),
    (SELECT id FROM tbl_stages WHERE stage_name = 'Stage 1')
),

(
    100,
    'Blastoise',
    'A brutal Pokémon with pressurized water jets on its shell. They are used for high-speed tackles.',
    'Hydro Pump',
    '40+',
    'Lightning',
    NULL,
    3,
    '2/102',
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set'),
    (SELECT id FROM tbl_types WHERE type_name = 'Water'),
    (SELECT id FROM tbl_stages WHERE stage_name = 'Stage 2')
),

(
    40,
    'Pikachu',
    'When several of these Pokémon gather, their electricity could build and cause lightning storms.',
    'Thunder Jolt',
    '30',
    'Fighting',
    'Metal',
    1,
    '58/102',
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set'),
    (SELECT id FROM tbl_types WHERE type_name = 'Lightning'),
    (SELECT id FROM tbl_stages WHERE stage_name = 'Basic')
)

ON CONFLICT (collection_id, card_number_in_collection) DO NOTHING;
