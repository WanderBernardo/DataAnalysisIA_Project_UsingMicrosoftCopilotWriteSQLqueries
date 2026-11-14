INSERT INTO tbl_collections (
    collection_set_name,
    release_date,
    total_cards_in_collection
)
VALUES (
    'Jungle Set',
    '1999-06-16',
    64
)
ON CONFLICT (collection_set_name) DO NOTHING;


WITH seed (
    hp,
    name,
    information,
    attack,
    damage,
    weak,
    resistance,
    retreat,
    card_number_in_collection,
    type_name,
    stage_name
) AS (
    VALUES
    (70, 'Clefable', 'Fairy Pokémon that uses its wings to float.', 'Metronome', 'Variable', 'Fighting', 'Psychic', 2, '1/64', 'Colorless', 'Stage 1'),
    (90, 'Electrode', 'Stores electrical energy inside its body.', 'Electric Shock', '50', 'Fighting', NULL, 1, '2/64', 'Lightning', 'Stage 1'),
    (70, 'Flareon', 'Its body temperature increases when it stores heat.', 'Flamethrower', '60', 'Water', NULL, 1, '3/64', 'Fire', 'Stage 1'),
    (70, 'Jolteon', 'Uses electrical energy to attack its opponents.', 'Pin Missile', '20x', 'Fighting', NULL, 1, '4/64', 'Lightning', 'Stage 1'),
    (90, 'Kangaskhan', 'Carries its young in a pouch on its belly.', 'Comet Punch', '20x', 'Fighting', 'Psychic', 3, '5/64', 'Colorless', 'Basic'),
    (40, 'Mr. Mime', 'Creates invisible barriers using its psychic abilities.', 'Meditate', '10+', 'Psychic', NULL, 1, '6/64', 'Psychic', 'Basic'),
    (90, 'Nidoqueen', 'Uses its powerful body and armor to protect itself.', 'Boyfriends', '20+', 'Psychic', NULL, 3, '7/64', 'Grass', 'Stage 2'),
    (80, 'Pidgeot', 'Flies at high speeds while searching for prey.', 'Wing Attack', '20', 'Lightning', 'Fighting', 1, '8/64', 'Colorless', 'Stage 2'),
    (60, 'Pinsir', 'Uses its powerful pincers to grab and crush opponents.', 'Iron Grip', '20', 'Fire', NULL, 1, '9/64', 'Grass', 'Basic'),
    (70, 'Scyther', 'Moves quickly through grass using its sharp blades.', 'Slash', '30', 'Fire', 'Fighting', 1, '10/64', 'Grass', 'Basic'),
    (90, 'Snorlax', 'Sleeps most of the day and has an enormous appetite.', 'Body Slam', '30', 'Fighting', 'Psychic', 4, '11/64', 'Colorless', 'Basic'),
    (80, 'Vaporeon', 'Can dissolve into water and become nearly invisible.', 'Water Gun', '30+', 'Lightning', NULL, 1, '12/64', 'Water', 'Stage 1'),
    (70, 'Venomoth', 'Uses poisonous scales to defend itself.', 'Venom Powder', '10', 'Fire', NULL, 1, '13/64', 'Grass', 'Stage 1'),
    (80, 'Victreebel', 'Uses its digestive fluid to dissolve its prey.', 'Lure', NULL, 'Fire', NULL, 2, '14/64', 'Grass', 'Stage 2'),
    (80, 'Vileplume', 'Produces pollen that can cause allergic reactions.', 'Petal Dance', '40x', 'Fire', NULL, 2, '15/64', 'Grass', 'Stage 2'),
    (80, 'Wigglytuff', 'Inflates its body to intimidate its opponents.', 'Do the Wave', '10+', 'Fighting', 'Psychic', 2, '16/64', 'Colorless', 'Stage 1'),

    (70, 'Clefable', 'Evolves from Clefairy and uses its wings to float.', 'Metronome', 'Variable', 'Fighting', 'Psychic', 2, '17/64', 'Colorless', 'Stage 1'),
    (90, 'Electrode', 'A highly explosive Pokémon filled with electricity.', 'Electric Shock', '50', 'Fighting', NULL, 1, '18/64', 'Lightning', 'Stage 1'),
    (70, 'Flareon', 'Its fluffy fur helps regulate its body temperature.', 'Flamethrower', '60', 'Water', NULL, 1, '19/64', 'Fire', 'Stage 1'),
    (70, 'Jolteon', 'Its fur can launch sharp electrical needles.', 'Pin Missile', '20x', 'Fighting', NULL, 1, '20/64', 'Lightning', 'Stage 1'),
    (90, 'Kangaskhan', 'Protects its baby while fighting against enemies.', 'Comet Punch', '20x', 'Fighting', 'Psychic', 3, '21/64', 'Colorless', 'Basic'),
    (40, 'Mr. Mime', 'Uses its hands to create invisible walls.', 'Meditate', '10+', 'Psychic', NULL, 1, '22/64', 'Psychic', 'Basic'),
    (90, 'Nidoqueen', 'Its tough scales provide strong defensive protection.', 'Boyfriends', '20+', 'Psychic', NULL, 3, '23/64', 'Grass', 'Stage 2'),
    (80, 'Pidgeot', 'Can fly at remarkable speeds using powerful wings.', 'Wing Attack', '20', 'Lightning', 'Fighting', 1, '24/64', 'Colorless', 'Stage 2'),
    (60, 'Pinsir', 'Grabs enemies with its powerful horns.', 'Iron Grip', '20', 'Fire', NULL, 1, '25/64', 'Grass', 'Basic'),
    (70, 'Scyther', 'Uses sharp blades on its arms to cut through obstacles.', 'Slash', '30', 'Fire', 'Fighting', 1, '26/64', 'Grass', 'Basic'),
    (90, 'Snorlax', 'Can sleep for long periods without waking up.', 'Body Slam', '30', 'Fighting', 'Psychic', 4, '27/64', 'Colorless', 'Basic'),
    (80, 'Vaporeon', 'Has the ability to manipulate water.', 'Water Gun', '30+', 'Lightning', NULL, 1, '28/64', 'Water', 'Stage 1'),
    (70, 'Venomoth', 'Its wings release poisonous dust when it flies.', 'Venom Powder', '10', 'Fire', NULL, 1, '29/64', 'Grass', 'Stage 1'),
    (80, 'Victreebel', 'Attracts prey using a sweet-smelling liquid.', 'Lure', NULL, 'Fire', NULL, 2, '30/64', 'Grass', 'Stage 2'),
    (80, 'Vileplume', 'Releases large quantities of pollen into the air.', 'Petal Dance', '40x', 'Fire', NULL, 2, '31/64', 'Grass', 'Stage 2'),
    (80, 'Wigglytuff', 'Its soft body can inflate to enormous proportions.', 'Do the Wave', '10+', 'Fighting', 'Psychic', 2, '32/64', 'Colorless', 'Stage 1'),

    (70, 'Butterfree', 'Uses its wings to spread poisonous powder.', 'Whirlwind', '20', 'Fire', 'Fighting', 0, '33/64', 'Grass', 'Stage 2'),
    (60, 'Dodrio', 'Uses three heads to watch its surroundings.', 'Rage', '10+', 'Lightning', 'Fighting', 0, '34/64', 'Colorless', 'Stage 1'),
    (80, 'Exeggutor', 'Its three heads think independently of each other.', 'Big Eggsplosion', '20x', 'Fire', NULL, 3, '35/64', 'Grass', 'Stage 1'),
    (60, 'Fearow', 'Uses its large wings to fly long distances.', 'Drill Peck', '30', 'Lightning', 'Fighting', 0, '36/64', 'Colorless', 'Stage 1'),
    (60, 'Gloom', 'Produces a strong and unpleasant smell.', 'Foul Odor', NULL, 'Fire', NULL, 2, '37/64', 'Grass', 'Stage 1'),
    (90, 'Lickitung', 'Uses its long tongue to explore its surroundings.', 'Tongue Wrap', '10', 'Fighting', 'Psychic', 3, '38/64', 'Colorless', 'Basic'),
    (60, 'Marowak', 'Uses a bone as a weapon when attacking.', 'Bonemerang', '30x', 'Grass', NULL, 1, '39/64', 'Fighting', 'Stage 1'),
    (70, 'Nidorina', 'Uses its sharp claws to defend itself.', 'Supersonic', NULL, 'Psychic', NULL, 1, '40/64', 'Grass', 'Stage 1'),
    (60, 'Parasect', 'The mushroom on its back controls its behavior.', 'Spore', NULL, 'Fire', NULL, 2, '41/64', 'Grass', 'Stage 1'),
    (60, 'Persian', 'Moves silently and attacks with sharp claws.', 'Scratch', '20', 'Fighting', 'Psychic', 0, '42/64', 'Colorless', 'Stage 1'),
    (70, 'Primeape', 'Becomes furious when it is disturbed.', 'Fury Swipes', '20x', 'Psychic', NULL, 1, '43/64', 'Fighting', 'Stage 1'),
    (70, 'Rapidash', 'Can run extremely fast using its powerful legs.', 'Stomp', '20+', 'Water', NULL, 0, '44/64', 'Fire', 'Stage 1'),
    (90, 'Rhydon', 'Its powerful horn can destroy solid rock.', 'Horn Attack', '30', 'Grass', 'Lightning', 3, '45/64', 'Fighting', 'Stage 1'),
    (70, 'Seaking', 'Uses its horn to fight and protect its territory.', 'Horn Attack', '20', 'Lightning', NULL, 1, '46/64', 'Water', 'Stage 1'),
    (60, 'Tauros', 'Charges aggressively when it becomes angry.', 'Stomp', '20+', 'Fighting', 'Psychic', 2, '47/64', 'Colorless', 'Basic'),
    (60, 'Weepinbell', 'Uses its acidic fluid to capture prey.', 'Poison Powder', NULL, 'Fire', NULL, 1, '48/64', 'Grass', 'Stage 1'),
    (40, 'Bellsprout', 'Its thin body allows it to bend and sway.', 'Vine Whip', '10', 'Fire', NULL, 1, '49/64', 'Grass', 'Basic'),
    (40, 'Cubone', 'Wears the skull of its deceased mother.', 'Rage', '10+', 'Grass', NULL, 1, '50/64', 'Fighting', 'Basic')
)
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
SELECT
    s.hp,
    s.name,
    s.information,
    s.attack,
    s.damage,
    s.weak,
    s.resistance,
    s.retreat,
    s.card_number_in_collection,
    col.id,
    t.id,
    st.id
FROM seed s
JOIN tbl_collections col
    ON col.collection_set_name = 'Jungle Set'
JOIN tbl_types t
    ON t.type_name = s.type_name
JOIN tbl_stages st
    ON st.stage_name = s.stage_name
ON CONFLICT (collection_id, card_number_in_collection) DO NOTHING;