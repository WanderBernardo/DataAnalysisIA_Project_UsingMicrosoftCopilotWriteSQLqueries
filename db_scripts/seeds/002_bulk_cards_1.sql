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
    50, 'Caterpie',
    'Its short feet are tipped with suction pads that enable it to tirelessly climb slopes and walls.',
    'String Shot', '10', 'Fire', NULL, 1, '45/102',
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set'),
    (SELECT id FROM tbl_types WHERE type_name = 'Grass'),
    (SELECT id FROM tbl_stages WHERE stage_name = 'Basic')
),
(
    70, 'Metapod',
    'This Pokémon is vulnerable to attack while its shell is soft, exposing its weak and tender body.',
    'Stiffen', NULL, 'Fire', NULL, 2, '54/102',
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set'),
    (SELECT id FROM tbl_types WHERE type_name = 'Grass'),
    (SELECT id FROM tbl_stages WHERE stage_name = 'Stage 1')
),
(
    80, 'Weedle',
    'Often found in forests, eating leaves. It has a sharp venomous stinger on its head.',
    'Poison Sting', '10', 'Fire', NULL, 1, '69/102',
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set'),
    (SELECT id FROM tbl_types WHERE type_name = 'Grass'),
    (SELECT id FROM tbl_stages WHERE stage_name = 'Basic')
),
(
    80, 'Kakuna',
    'Almost incapable of moving, this Pokémon can only harden its shell to protect itself.',
    'Stiffen', NULL, 'Fire', NULL, 2, '33/102',
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set'),
    (SELECT id FROM tbl_types WHERE type_name = 'Grass'),
    (SELECT id FROM tbl_stages WHERE stage_name = 'Stage 1')
),
(
    40, 'Pidgey',
    'A common sight in forests and woods. It flaps its wings at ground level to kick up blinding sand.',
    'Whirlwind', '10', 'Lightning', 'Fighting', 1, '57/102',
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set'),
    (SELECT id FROM tbl_types WHERE type_name = 'Colorless'),
    (SELECT id FROM tbl_stages WHERE stage_name = 'Basic')
),
(
    60, 'Pidgeotto',
    'Very protective of its sprawling territorial area. This Pokémon will fiercely peck at any intruder.',
    'Wing Attack', '20', 'Lightning', 'Fighting', 1, '22/102',
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set'),
    (SELECT id FROM tbl_types WHERE type_name = 'Colorless'),
    (SELECT id FROM tbl_stages WHERE stage_name = 'Stage 1')
),
(
    40, 'Rattata',
    'Bites anything when it attacks. Small and very quick, it is a common sight in many places.',
    'Bite', '20', 'Fighting', 'Psychic', 1, '61/102',
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set'),
    (SELECT id FROM tbl_types WHERE type_name = 'Colorless'),
    (SELECT id FROM tbl_stages WHERE stage_name = 'Basic')
),
(
    60, 'Raticate',
    'It uses its whiskers to maintain balance. It apparently slows down if they are cut off.',
    'Bite', '20', 'Fighting', 'Psychic', 1, '40/102',
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set'),
    (SELECT id FROM tbl_types WHERE type_name = 'Colorless'),
    (SELECT id FROM tbl_stages WHERE stage_name = 'Stage 1')
),
(
    40, 'Spearow',
    'Eats bugs in grassy areas. It has to flap its short wings at high speed to stay airborne.',
    'Peck', '10', 'Lightning', 'Fighting', 1, '62/102',
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set'),
    (SELECT id FROM tbl_types WHERE type_name = 'Colorless'),
    (SELECT id FROM tbl_stages WHERE stage_name = 'Basic')
),
(
    60, 'Fearow',
    'With its huge and magnificent wings, it can keep aloft without ever having to land for rest.',
    'Drill Peck', '30', 'Lightning', 'Fighting', 1, '36/102',
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set'),
    (SELECT id FROM tbl_types WHERE type_name = 'Colorless'),
    (SELECT id FROM tbl_stages WHERE stage_name = 'Stage 1')
),
(
    40, 'Jigglypuff',
    'When its huge eyes light up, it sings a mysteriously soothing melody that lulls its enemies to sleep.',
    'Lullaby', NULL, 'Fighting', 'Psychic', 1, '54/102',
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set'),
    (SELECT id FROM tbl_types WHERE type_name = 'Colorless'),
    (SELECT id FROM tbl_stages WHERE stage_name = 'Basic')
),
(
    60, 'Clefairy',
    'Its magical and cute appearance makes it very popular. It is rare and found only in certain areas.',
    'Sing', NULL, 'Fighting', 'Psychic', 1, '5/102',
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set'),
    (SELECT id FROM tbl_types WHERE type_name = 'Colorless'),
    (SELECT id FROM tbl_stages WHERE stage_name = 'Basic')
),
(
    70, 'Vulpix',
    'At the time of birth, it has just one tail. The tail splits from its tip as it grows older.',
    'Confuse Ray', NULL, 'Water', NULL, 1, '68/102',
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set'),
    (SELECT id FROM tbl_types WHERE type_name = 'Fire'),
    (SELECT id FROM tbl_stages WHERE stage_name = 'Basic')
),
(
    80, 'Growlithe',
    'Very protective of its territory. It will bark and bite to repel intruders from its space.',
    'Flamethrower', '50', 'Water', NULL, 1, '28/102',
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set'),
    (SELECT id FROM tbl_types WHERE type_name = 'Fire'),
    (SELECT id FROM tbl_stages WHERE stage_name = 'Basic')
),
(
    80, 'Ponyta',
    'Its hooves are ten times harder than diamonds. It can trample anything completely flat.',
    'Smash Kick', '20', 'Water', NULL, 1, '60/102',
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set'),
    (SELECT id FROM tbl_types WHERE type_name = 'Fire'),
    (SELECT id FROM tbl_stages WHERE stage_name = 'Basic')
),
(
    100, 'Magmar',
    'Its body always burns with an orange glow that enables it to hide perfectly among flames.',
    'Fire Punch', '30', 'Water', NULL, 2, '36/102',
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set'),
    (SELECT id FROM tbl_types WHERE type_name = 'Fire'),
    (SELECT id FROM tbl_stages WHERE stage_name = 'Basic')
),
(
    50, 'Poliwag',
    'Its newly grown legs prevent it from running. It appears to prefer swimming than walking.',
    'Water Gun', '10', 'Lightning', NULL, 1, '59/102',
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set'),
    (SELECT id FROM tbl_types WHERE type_name = 'Water'),
    (SELECT id FROM tbl_stages WHERE stage_name = 'Basic')
),
(
    60, 'Poliwhirl',
    'Its body is always wet and slippery. It can easily escape from the grasp of enemies.',
    'Water Gun', '20', 'Lightning', NULL, 1, '38/102',
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set'),
    (SELECT id FROM tbl_types WHERE type_name = 'Water'),
    (SELECT id FROM tbl_stages WHERE stage_name = 'Stage 1')
),
(
    90, 'Seel',
    'The protruding horn on its head is very hard. It is used for bashing through thick ice.',
    'Headbutt', '10', 'Lightning', NULL, 1, '41/102',
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set'),
    (SELECT id FROM tbl_types WHERE type_name = 'Water'),
    (SELECT id FROM tbl_stages WHERE stage_name = 'Basic')
),
(
    60, 'Horsea',
    'Known to shoot down flying bugs with precision blasts of ink from the surface of the water.',
    'Smokescreen', NULL, 'Lightning', NULL, 1, '49/102',
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set'),
    (SELECT id FROM tbl_types WHERE type_name = 'Water'),
    (SELECT id FROM tbl_stages WHERE stage_name = 'Basic')
),
(
    50, 'Magnemite',
    'Uses antigravity to stay suspended. Appears without warning and uses Thunder Wave.',
    'Thunder Wave', '10', 'Fighting', 'Metal', 1, '53/102',
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set'),
    (SELECT id FROM tbl_types WHERE type_name = 'Lightning'),
    (SELECT id FROM tbl_stages WHERE stage_name = 'Basic')
),
(
    80, 'Voltorb',
    'Usually found in power plants. Easily mistaken for a Poké Ball, it has zapped many people.',
    'Thunder Wave', '10', 'Fighting', 'Metal', 1, '67/102',
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set'),
    (SELECT id FROM tbl_types WHERE type_name = 'Lightning'),
    (SELECT id FROM tbl_stages WHERE stage_name = 'Basic')
),
(
    60, 'Abra',
    'Using its ability to read minds, it will identify impending danger and teleport to safety.',
    'Psyshock', '10', 'Psychic', NULL, 1, '43/102',
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set'),
    (SELECT id FROM tbl_types WHERE type_name = 'Psychic'),
    (SELECT id FROM tbl_stages WHERE stage_name = 'Basic')
),
(
    60, 'Kadabra',
    'It emits special alpha waves from its body that induce headaches just by being close by.',
    'Super Psy', '50', 'Psychic', NULL, 1, '32/102',
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set'),
    (SELECT id FROM tbl_types WHERE type_name = 'Psychic'),
    (SELECT id FROM tbl_stages WHERE stage_name = 'Stage 1')
),
(
    80, 'Gastly',
    'Almost invisible, this gaseous Pokémon cloaks the target and puts it to sleep without notice.',
    'Sleeping Gas', NULL, 'Psychic', 'Fighting', 1, '50/102',
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set'),
    (SELECT id FROM tbl_types WHERE type_name = 'Psychic'),
    (SELECT id FROM tbl_stages WHERE stage_name = 'Basic')
),
(
    60, 'Machop',
    'Loves to build its muscles. It trains in all styles of martial arts to become even stronger.',
    'Low Kick', '20', 'Psychic', NULL, 1, '52/102',
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set'),
    (SELECT id FROM tbl_types WHERE type_name = 'Fighting'),
    (SELECT id FROM tbl_stages WHERE stage_name = 'Basic')
),
(
    80, 'Machoke',
    'Its muscular body is so powerful that it must wear a power-save belt to be able to regulate its motions.',
    'Karate Chop', '50', 'Psychic', NULL, 3, '34/102',
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set'),
    (SELECT id FROM tbl_types WHERE type_name = 'Fighting'),
    (SELECT id FROM tbl_stages WHERE stage_name = 'Stage 1')
),
(
    60, 'Geodude',
    'Found in fields and mountains. Mistaking them for boulders, people often step or trip on them.',
    'Stone Barrage', '10', 'Grass', 'Lightning', 1, '47/102',
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set'),
    (SELECT id FROM tbl_types WHERE type_name = 'Fighting'),
    (SELECT id FROM tbl_stages WHERE stage_name = 'Basic')
),
(
    70, 'Onix',
    'As it grows, the stone portions of its body harden to become similar to a diamond, though colored black.',
    'Rock Throw', '10', 'Grass', 'Lightning', 3, '56/102',
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set'),
    (SELECT id FROM tbl_types WHERE type_name = 'Fighting'),
    (SELECT id FROM tbl_stages WHERE stage_name = 'Basic')
),
(
    60, 'Porygon',
    'A Pokémon that consists entirely of programming code. Capable of moving freely in cyberspace.',
    'Conversion', NULL, 'Fighting', 'Psychic', 1, '39/102',
    (SELECT id FROM tbl_collections WHERE collection_set_name = 'Base Set'),
    (SELECT id FROM tbl_types WHERE type_name = 'Colorless'),
    (SELECT id FROM tbl_stages WHERE stage_name = 'Basic')
)
ON CONFLICT (collection_id, card_number_in_collection) DO NOTHING;