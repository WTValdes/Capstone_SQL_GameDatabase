/* 	Database Capstone Project
	CS-499
	February 17, 2021
    William Valdes

	Nintendo 64 Games Collection Database Project
   Script will form database with CRUD functions
   Will output table and index results to test
   speed of index by notating time before and 
   after index is created.                       */
   
CREATE DATABASE IF NOT EXISTS games;
USE games;

/* Table creation statement */
CREATE TABLE IF NOT EXISTS nintendo (
game_id int(4) AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(64) NOT NULL,
developer VARCHAR(64) NOT NULL,
publisher VARCHAR(64) NOT NULL,
release_date DATE NOT NULL
) auto_increment=1000;

/* Populates table with entries */
INSERT INTO nintendo (title, developer, publisher, release_date)
VALUES
("1080 Snowboarding", "Nintendo", "Nintendo", "1998-02-28"),
("Banjo Kazooie", "Rare", "Nintendo", "1998-06-29"),
("Banjo Tooie", "Rare", "Nintendo", "2000-11-20"),
("Blast Corps", "Rare", "Nintendo", "1997-03-21"),
("Bomberman 64", "Hudson Soft", "Hudson Soft", "1997-09-26"),
("Castlevania", "Konami", "Konami", "1999-01-26"),
("Clay Fighter 63 1/3", "Interplay Productions", "Interplay Productions", "1997-10-23"),
("Clay Fighter Sculptor's Cut", "Interplay Productions", "Interplay Productions", "1998-05-15"),
("Command & Conquer", "Looking Glass Studios", "Nintendo", "1999-06-29"),
("Conker's Bad Fur Day", "Rare", "Rare", "2001-03-05"),
("Cruis'n USA", "Williams", "Nintendo", "1996-12-03"),
("Diddy Kong Racing", "Rare", "Rare", "1997-11-21"),
("Donkey Kong 64", "Rare", "Nintendo", "1999-11-22"),
("Doom 64", "Midway", "Midway", "1997-04-04"),
("Dr. Mario 64", "Newcom", "Nintendo", "2001-04-08"),
("Duke Nukem 64", "3D Realms", "GT Interactive", "1997-10-31"),
("Earthworm Jim 3D", "VIS Interactive", "Rockstar Games", "1999-10-31"),
("ECW Hardcore Revolution", "Acclaim", "Acclaim", "2000-02-17"),
("Excitebike 64", "Left Field Productions", "Nintendo", "2000-04-30"), 
("Extreme-G", "Probe", "Acclaim", "1997-09-30"),
("Extreme-G 2", "Probe", "Acclaim", "1998-11-17"),
("Fighting Force 64", "Core Design", "Crave Entertainment", "1999-04-30"),
("Forsaken 64", "Iguana Entertainment", "Acclaim", "1998-04-30"),
("Goldeneye 007", "Rare", "Nintendo", "1997-08-23"),
("Harvest Moon 64", "Victor Interactive", "Natsume", "1999-02-05"),
("Jet Force Gemini", "Rare", "Rare", "1999-10-11"),
("Legend of Zelda Majora's Mask", "Nintendo", "Nintendo", "2000-04-27"),
("Legend of Zelda Ocarina of Time", "Nintendo", "Nintendo", "1998-11-21"),
("Madden Football 64", "Tiburon Entertainment", "EA Sports", "1997-10-31"), 
("Madden NFL 2000", "EA Tiburon", "EA Sports", "1999-08-31"), 
("Madden NFL 2001", "EA Tiburon", "EA Sports", "2000-08-28"), 
("Madden NFL 2002", "Budcat Creations", "EA Sports", "2001-09-12"), 
("Madden NFL 99", "EA Tiburon", "EA Sports", "1998-11-01"), 
("Mario Kart 64", "Nintendo", "Nintendo", "1996-12-14"),
("Mario Party", "Hudson Soft", "Nintendo", "1998-12-18"),
("Mario Party 2", "Hudson Soft", "Nintendo", "1999-12-19"),
("Mario Party 3", "Hudson Soft", "Nintendo", "2000-12-07"),
("Mario Tennis", "Camelot", "Nintendo", "2000-07-21"),
("Mega Man 64", "Capcom", "Capcom", "2000-11-22"),
("Mission Impossible", "Infogrames", "Ocean Software", "1998-07-18"),
("Mortal Kombat 4", "Eurocom", "Midway", "1998-06-23"),
("Mortal Kombat Trilogy", "Midway", "Williams", "1996-11-11"),
("NBA Courtside 2", "Left Field Productions", "Nintendo", "1999-11-08"),
("NBA Hangtime", "Funcom", "Midway", "1997-01-17"),
("NFL Blitz", "Midway", "Midway", "1998-09-09"), 
("NFL Blitz 2000", "Midway", "Midway", "1999-08-17"), 
("NFL Blitz 2001", "Point of View", "Midway", "2000-09-14"), 
("NFL Blitz Special Edition", "Point of View", "Midway", "2001-11-28"), 
("NFL QB Club 2001", "High Voltage Software", "Acclaim", "2000-08-24"), 
("NFL Quarterback Club 2000", "Acclaim", "Acclaim", "1999-08-26"), 
("NFL Quarterback Club 98", "Iguana Entertainment", "Acclaim", "1997-10-24"), 
("NFL Quarterback Club 99", "Iguana Entertainment", "Acclaim", "1998-11-10"), 
("NHL 99", "MBL Research", "EA Sports", "1998-10-01"), 
("NHL Blades of Steel 99", "Konami", "EA Sports", "1999-04-05"),
("NHL Breakaway 98", "Iguana Entertainment", "Acclaim", "1998-02-26"),
("NHL Breakaway 99", "Iguana Entertainment", "Acclaim", "1998-11-30"),
("Paper Mario", "Intelligent Systems", "Nintendo", "2000-08-11"),
("Perfect Dark", "Rare", "Rare", "2000-06-30"),
("Pilotwings 64", "Nintendo", "Nintendo", "1996-06-23"),
("Pokemon Snap", "HAL Laboratory", "Nintendo", "1999-03-21"),
("Pokemon Stadium", "Nintendo", "Nintendo", "1999-04-30"),
("Pokemon Stadium 2", "Nintendo", "Nintendo", "2000-12-14"),
("Quake 64", "Midway", "Midway", "1998-03-24"),
("Rampage World Tour", "Saffire", "Midway", "1998-03-30"),
("Ready 2 Rumble Boxing", "Point of View", "Midway", "1998-03-30"),
("Resident Evil 2", "Capcom", "Capcom", "1999-10-31"),
("South Park", "Iguana", "Acclaim", "1998-12-21"),
("Star Fox 64", "Nintendo", "Nintendo", "1997-04-27"),
("StarCraft 64", "Blizzard", "Nintendo", "2000-06-12"), 
("Star Wars Episode I: Battle for Naboo", "Factor 5", "LucasArts", "2000-12-18"), 
("Star Wars Episode I: Racer", "LucasArts", "LucasArts", "1999-05-18"), 
("Star Wars Rogue Squadron", "Factor 5", "LucasArts", "1998-12-07"), 
("Star Wars Shadows of the Empire", "LucasArts", "Nintendo", "1996-12-03"), 
("Super Mario 64", "Nintendo", "Nintendo", "1996-06-23"), 
("Super Smash Bros.", "HAL Laboratory", "Nintendo", "1999-01-21"), 
("Tetris 64", "Amtex", "SETA Corporation", "1998-11-13"), 
("Tetrisphere", "H20 Entertainment", "Nintendo", "1997-08-11"), 
("Tony Hawk's Pro Skater", "Edge of Reality", "Activision", "2000-02-29"), 
("Tony Hawk's Pro Skater 2", "Edge of Reality", "Activision", "2001-08-21"), 
("Tony Hawk's Pro Skater 3", "Edge of Reality", "Activision", "2002-08-20"), 
("Turok: Dinosaur Hunter", "Iguana Entertainment", "Acclaim", "1997-03-04"), 
("Turok 2: Seeds Of Evil", "Iguana Entertainment", "Acclaim", "1998-12-10"), 
("Turok 3: Shadow of Oblivion", "Acclaim", "Acclaim", "2000-09-06"), 
("Turok: Rage Wars", "Acclaim", "Acclaim", "1999-11-23"), 
("Vigilante 8", "Luxoflux", "Activision", "1999-03-17"), 
("Vigilante 8: 2nd Offense", "Luxoflux", "Activision", "2000-02-01"), 
("War Gods", "Eurocom", "Midway", "1997-05-21"), 
("Wave Race 64", "Nintendo", "Nintendo", "1996-09-27"), 
("Wayne Gretzky's 3D Hockey", "Midway", "Midway", "1996-11-11"), 
("Wayne Gretzky's 3D Hockey '98", "Software Creations", "Midway", "1997-12-03"), 
("WCW Backstage Assault", "Kodiak Interactive", "Electronic Arts", "2000-12-12"), 
("WCW Mayhem", "Kodiak Interactive", "Electronic Arts", "1999-09-21"), 
("WCW Nitro", "Inland Productions", "THQ", "1999-02-01"), 
("WCW vs. nWo: World Tour", "AKI Corporation", "THQ", "1997-11-30"), 
("WCW/nWo Revenge", "AKI Corporation", "THQ", "1998-10-26"), 
("WWF Attitude", "Acclaim", "Acclaim", "1999-07-31"), 
("WWF No Mercy", "AKI Corporation", "THQ", "2000-11-17"),
("WWF War Zone", "Iguana Entertainment", "Acclaim", "1998-08-11"), 
("WWF Wrestlemania 2000", "AKI Corporation", "THQ", "1999-10-12"),
("Xena: Warrior Princess", "Saffire", "Titus Software", "1999-12-14"),
("Yoshi's Story", "Nintendo", "Nintendo", "1997-12-21"),
("Test Title", "Test Developer", "Test Publisher", "1776-07-04");

/* Delete Test Title table entry */
DELETE FROM nintendo WHERE release_date = "1776-07-04";

/* Update table to include expansion pak compatability column */
ALTER TABLE nintendo ADD expansion_pak VARCHAR(1) NOT NULL DEFAULT "n"; 
UPDATE nintendo SET expansion_pak = "y" WHERE title = "Donkey Kong 64";
UPDATE nintendo SET expansion_pak = "y" WHERE title = "Legend of Zelda Majora's Mask";
UPDATE nintendo SET expansion_pak = "y" WHERE title = "Perfect Dark";

/* Read and Output table with all entries in ascending order by release date */
SELECT game_id, title, developer, publisher, expansion_pak, release_date FROM nintendo ORDER BY release_date ASC;

/* Output number of titles in table */
SELECT COUNT(game_id) FROM nintendo;

/* Initial database performance test */
EXPLAIN ANALYZE SELECT * FROM nintendo WHERE developer = 'Nintendo';

/* Index creation for developer column */
CREATE INDEX index_nintendo ON nintendo (developer);

/* New performance test after index */
EXPLAIN ANALYZE SELECT * FROM nintendo WHERE developer = 'Nintendo';