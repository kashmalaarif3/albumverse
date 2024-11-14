--- Album Cover Table ---
CREATE TABLE album (
  id INTEGER NOT NULL UNIQUE,
  title TEXT NOT NULL UNIQUE,
  artist TEXT NOT NULL,
  year INTEGER NOT NULL,
  description TEXT NOT NULL,
  images TEXT,
  file_ext TEXT,
  PRIMARY KEY("id" AUTOINCREMENT)

);

INSERT INTO
  album (id, title, artist, year, description, images, file_ext)
VALUES
  (1, 'Nevermind','Nirvana', 1991, "Nevermind is the second studio album by the American rock band Nirvana, released on September 24, 1991, by DGC Records. It was Nirvana's first release on a major label and the first to feature drummer Dave Grohl. Produced by Butch Vig, Nevermind features a more polished, radio-friendly sound than the band's prior work. It was recorded at Sound City Studios in Van Nuys, California, and Smart Studios in Madison, Wisconsin in May and June 1991, and mastered that August at the Mastering Lab in Hollywood, California.", "nevermind", "jpeg");


INSERT INTO
  album (id, title, artist, year, description, images, file_ext)
VALUES
  (2, 'Thriller', 'Michael Jackson', 1981, "Thriller is the sixth studio album by the American singer and songwriter Michael Jackson, released on November 29, 1982, by Epic Records. It was produced by Quincy Jones, who had previously worked with Jackson on his 1979 album Off the Wall. Jackson wanted to create an album where 'every song was a killer'. With the ongoing backlash against disco music at the time, he moved in a new musical direction, resulting in a mix of pop, post-disco, rock, funk, and R&B sounds. Thriller foreshadows the contradictory themes of Jackson's personal life, as he began using a motif of paranoia and darker themes.", "thriller", "jpeg");

INSERT INTO
  album (id, title, artist, year, description, images, file_ext)
VALUES
(3, 'My Beautiful Dark Twisted Fantasy', 'Kanye West', 2010, "My Beautiful Dark Twisted Fantasy is the fifth studio album by American rapper and producer Kanye West. It was released by Def Jam Recordings and Roc-A-Fella Records on November 22, 2010, following a period of public controversy for West. Retreating to a self-imposed exile in Hawaii after a period of controversy in 2009 following his interruption at the MTV Music Awards, he recorded the album at Honolulu's Avex Recording Studio in a communal environment involving numerous musicians.", "my-beautiful-dark-twisted-fantasy", "jpeg");


INSERT INTO
  album (id, title, artist, year, description, images, file_ext)
VALUES
(4, 'SOS', 'SZA', 2022, "SOS is the second studio album by American singer SZA. It was released through Top Dawg Entertainment and RCA Records on December 9, 2022. The album features guest appearances from Don Toliver, Phoebe Bridgers, Travis Scott, and the late Ol' Dirty Bastard. SZA worked with a variety of record producers and songwriters such as Babyface, Jeff Bhasker, Benny Blanco, Rodney Jerkins, DJ Dahi, Gabriel Hardeman, Ant Clemons and Lizzo. It serves as the follow-up to SZA's previous album Ctrl (2017).", "sos", "jpeg" );

INSERT INTO
  album (id, title, artist, year, description, images, file_ext)
VALUES
(5, 'Call Me If You Get Lost', 'Tyler the Creator', 2021, "Call Me If You Get Lost (stylized in all caps) is the sixth studio album by American rapper and producer Tyler, the Creator. The album was released on June 25, 2021, through Columbia Records. The album is narrated by DJ Drama and features guest appearances from 42 Dugg, YoungBoy Never Broke Again, Ty Dolla Sign, Lil Wayne, Domo Genesis, Brent Faiyaz, Lil Uzi Vert, Pharrell Williams, Teezo Touchdown, Fana Hues and Daisy World. Tyler produced the album himself, with additional production contributed by Jamie xx and Jay Versace.", "call-me-if-you-get-lost", "jpeg");

INSERT INTO
  album (id, title, artist, year, description, images, file_ext)
VALUES
(6, 'Sour', 'Olivia Rodrigo', 2021, "Influenced by Rodrigo's favorite genres and singer-songwriters, Sour is primarily a pop record that spans from energetic pop-punk songs to bedroom pop ballads. Its subject matter centers on adolescence, failed romance, and heartache. She said the album explores her perils and discoveries as a 17-year-old, with its title referring to the 'sour' emotions young people experience but are often criticized for, such as anger, jealousy, and unhappiness.", "sour", "jpeg");

INSERT INTO
  album (id, title, artist, year, description, images, file_ext)
VALUES
(7, 'Unknown Pleasures', 'Joy Division', 1979, "Unknown Pleasures is the debut studio album by English rock band Joy Division, released on 15 June 1979 by Factory Records. The album was recorded and mixed over three successive weekends at Stockport's Strawberry Studios in April 1979, with producer Martin Hannett contributing a number of unconventional recording techniques to the group's sound. The cover artwork was designed by artist Peter Saville, using a data plot of signals from a radio pulsar. It is the only Joy Division album released during lead singer Ian Curtis's lifetime.", "unknown-pleasures", "jpeg");

INSERT INTO
  album (id, title, artist, year, description, images, file_ext)
VALUES
(8, 'To Pimp A Butterfly', 'Kendrick Lamar', 2015, "To Pimp a Butterfly is the third studio album by American rapper Kendrick Lamar. It was released on March 15, 2015, by Top Dawg Entertainment, Aftermath Entertainment and Interscope Records. The album was recorded in studios throughout the United States, with production from Sounwave, Terrace Martin, Taz 'Tisa' Arnold, Thundercat, Rahki, LoveDragon, Flying Lotus, Pharrell Williams, Boi-1da, Knxwledge, and several other high-profile hip hop producers, as well as executive production from Dr. Dre and Anthony 'Top Dawg' Tiffith. Guest appearances include Thundercat, George Clinton, Bilal, Anna Wise, Snoop Dogg, James Fauntleroy, Ronald Isley, and Rapsody.", "to-pimp-a-butterfly", "jpeg");


INSERT INTO
  album (id, title, artist, year, description, images, file_ext)
VALUES
(9, 'Four', 'One Direction', 2014, "Four (stylized as all caps) is the fourth studio album by English-Irish boy band One Direction, released on 17 November 2014 by Columbia Records and Syco Music. The album was preceded by two singles, 'Steal My Girl' and 'Night Changes', both achieving platinum status in the US, and scoring the band their tenth and eleventh UK top-ten hits. The album was also One Direction's last with member Zayn Malik, who announced he was leaving the band on 25 March 2015.", "four", "jpeg");

INSERT INTO
  album (id, title, artist, year, description, images, file_ext)
VALUES
(10, 'Twice As Tall', 'Burna Boy', 2020, "Twice as Tall is the fifth studio album by Nigerian singer Burna Boy. It was released on August 14, 2020, by Spaceship Entertainment, Bad Habit, Atlantic Records and Warner Music. Recording sessions took place in 2020, with Burna Boy, American singer and songwriter Diddy and Mama Burna Bose Ogulu serving as the record's executive producers. The album is a mixture of Afrobeats, Afrobeat, dancehall, pop and hip hop. It was produced primarily by Telz, along with production from Rexxie, Timbaland and DJDS, among others. The album features guest appearances from Youssou N'Dour, Naughty by Nature, Sauti Sol, Chris Martin and Stormzy. Its lead single is 'Wonderful', released on June 26, 2020.", "twice-as-tall", "jpeg");

INSERT INTO
  album (id, title, artist, year, description, images, file_ext)
VALUES
(11, 'Love Yourself:Tear', 'Bangtan Boys', 2020, "Love Yourself: Tear (stylized as Love Yourself 轉 Tear) is the third Korean-language studio album by South Korean boy band BTS. The album was released on May 18, 2018, by Big Hit Entertainment. It is available in four versions and contains eleven tracks, with 'Fake Love' as its lead single. The concept album explores themes relating to the pains and sorrows of separation.[4] On May 27, 2018, the album debuted at number one on the US Billboard 200, earning 135,000 album-equivalent units and becoming BTS' highest-charting album in a Western market at the time, as well as the first Korean album to top the US albums chart and the highest-charting album by an Asian act.", "love-yourself", "jpeg");

INSERT INTO
  album (id, title, artist, year, description, images, file_ext)
VALUES
(12, 'Ignorance is Bliss', 'Skepta', 2019, "Ignorance Is Bliss is the fifth studio album by British rapper Skepta. It was released on 31 May 2019 through Boy Better Know, and is the follow-up to his 2016 album Konnichiwa.[3] The album features appearances from Nafe Smallz, Key!, J Hus, Cheb Rabi, B Live, Lancey Foux, Lay-Z, Wizkid and Boy Better Know.Upon release, Ignorance Is Bliss was met with positive reviews and debuted at number two on the UK Albums Chart. The album was supported by the singles 'Bullet from a Gun' and 'Greaze Mode' with Nafe Smallz.", "ignorance-is-bliss", "jpeg");

INSERT INTO
  album (id, title, artist, year, description, images, file_ext)
VALUES
(13, 'Beauty Behind the Madness', 'The Weeknd', 2015, "Beauty Behind the Madness is the second studio album by Canadian singer the Weeknd, released on August 28, 2015, through XO and Republic Records. It features guest appearances from Labrinth, Ed Sheeran and Lana Del Rey.Five singles were released from Beauty Behind the Madness, including two US Billboard Hot 100 number-ones: 'The Hills; and 'Can't Feel My Face'. The album also includes the Academy Award-nominated track 'Earned It', which served as the lead single from the soundtrack to Fifty Shades of Grey. Beauty Behind the Madness received generally positive reviews from critics and debuted at number one in several countries.", "beauty-behind-the-madness", "jpeg");


--- Tags Table ---
CREATE TABLE tags (
  id INTEGER NOT NULL UNIQUE,
  tag_name TEXT NOT NULL,
  PRIMARY KEY(id AUTOINCREMENT)
);

-- Genre Tags --
INSERT INTO
   tags (id, tag_name)
VALUES
  (1, 'Alternative Rock');

INSERT INTO
   tags (id, tag_name)
VALUES
  (2, 'Funk');

INSERT INTO
   tags (id, tag_name)
VALUES
  (3, 'Hip-Hop');

INSERT INTO
   tags (id, tag_name)
VALUES
  (4, 'Punk');

INSERT INTO
   tags (id, tag_name)
VALUES
  (5, 'R&B');

INSERT INTO
   tags (id, tag_name)
VALUES
  (6, 'Pop');

INSERT INTO
   tags (id, tag_name)
VALUES
  (7, 'Indie');

INSERT INTO
   tags (id, tag_name)
VALUES
  (8, 'Rap');

INSERT INTO
   tags (id, tag_name)
VALUES
  (9, 'Afrobeats');

INSERT INTO
   tags (id, tag_name)
VALUES
  (10, 'K-Pop');

INSERT INTO
   tags (id, tag_name)
VALUES
  (11, 'UK Rap');

-- Nation Tags --

INSERT INTO
   tags (id, tag_name)
VALUES
  (12, 'United States');

INSERT INTO
   tags (id, tag_name)
VALUES
  (13, 'United Kingdom');

INSERT INTO
   tags (id, tag_name)
VALUES
  (14, 'Nigeria');

INSERT INTO
   tags (id, tag_name)
VALUES
  (15, 'South Korea');


--- Combine Table ---
CREATE TABLE album_tags (
  id INTEGER NOT NULL UNIQUE,
  album_id TEXT NOT NULL,
  tag_id INTEGER NOT NULL,
  PRIMARY KEY(id AUTOINCREMENT),


  FOREIGN KEY(album_id) REFERENCES album(id),
  FOREIGN KEY(tag_id) REFERENCES tag(id)

);

INSERT INTO
   album_tags(id, album_id, tag_id)
VALUES
  (1, 1, 1);

INSERT INTO
   album_tags(id, album_id, tag_id)
VALUES
  (2, 1, 12);


INSERT INTO
   album_tags(id, album_id, tag_id)
VALUES
  (3, 2, 2);

INSERT INTO
   album_tags(id, album_id, tag_id)
VALUES
  (4, 2, 12);


INSERT INTO
   album_tags(id, album_id, tag_id)
VALUES
  (5, 3, 3);

INSERT INTO
   album_tags(id, album_id, tag_id)
VALUES
  (6, 3, 12);


INSERT INTO
   album_tags(id, album_id, tag_id)
VALUES
  (7, 4, 5);

INSERT INTO
   album_tags(id, album_id, tag_id)
VALUES
  (8, 4, 12);


INSERT INTO
   album_tags(id, album_id, tag_id)
VALUES
  (9, 5, 3);
INSERT INTO
   album_tags(id, album_id, tag_id)
VALUES
  (10, 5, 12);


INSERT INTO
   album_tags(id, album_id, tag_id)
VALUES
  (11, 6, 6);
INSERT INTO
   album_tags(id, album_id, tag_id)
VALUES
  (12, 6, 12);


INSERT INTO
   album_tags(id, album_id, tag_id)
VALUES
  (13, 7, 7);
  INSERT INTO
   album_tags(id, album_id, tag_id)
VALUES
  (14, 7, 12);


INSERT INTO
   album_tags(id, album_id, tag_id)
VALUES
  (15, 8, 8);
INSERT INTO
   album_tags(id, album_id, tag_id)
VALUES
  (16, 8, 12);


INSERT INTO
   album_tags(id, album_id, tag_id)
VALUES
  (17, 9, 6);
INSERT INTO
   album_tags(id, album_id, tag_id)
VALUES
  (18, 9, 13);


INSERT INTO
   album_tags(id, album_id, tag_id)
VALUES
  (19, 10, 9);
INSERT INTO
   album_tags(id, album_id, tag_id)
VALUES
  (20, 10, 14);


INSERT INTO
   album_tags(id, album_id, tag_id)
VALUES
  (21, 11, 10);
INSERT INTO
   album_tags(id, album_id, tag_id)
VALUES
  (22, 11, 15);


INSERT INTO
   album_tags(id, album_id, tag_id)
VALUES
  (23, 12, 11);
INSERT INTO
   album_tags(id, album_id, tag_id)
VALUES
  (24, 12, 13);


INSERT INTO
   album_tags(id, album_id, tag_id)
VALUES
  (25, 13, 5);
INSERT INTO
   album_tags(id, album_id, tag_id)
VALUES
  (26, 13, 12);



CREATE TABLE users (
  id INTEGER NOT NULL UNIQUE,
  name TEXT NOT NULL,
  email TEXT NOT NULL,
  username TEXT NOT NULL UNIQUE,
  password TEXT NOT NULL,
  PRIMARY KEY(id AUTOINCREMENT)
);

-- password: monkey
INSERT INTO
  users (id, name, email, username, password)
VALUES
  (
    1,
    'Kashmala Arif',
    'ka369@cornell.edu',
    'kashmala',
    '$2y$10$QtCybkpkzh7x5VN11APHned4J8fu78.eFXlyAMmahuAaNcbwZ7FH.' -- monkey
  );

--- Groups ----
CREATE TABLE groups (
  id INTEGER NOT NULL UNIQUE,
  name TEXT NOT NULL UNIQUE,
  PRIMARY KEY(id AUTOINCREMENT)
);

INSERT INTO
  groups (id, name)
VALUES
  (1, 'admin');

--- Group Membership ---
CREATE TABLE user_groups (
  id INTEGER NOT NULL UNIQUE,
  user_id INTEGER NOT NULL,
  group_id INTEGER NOT NULL,
  PRIMARY KEY(id AUTOINCREMENT) FOREIGN KEY(group_id) REFERENCES groups(id),
  FOREIGN KEY(user_id) REFERENCES users(id)
);

-- User 'kashmala' is a member of the 'admin' group.
INSERT INTO
  user_groups (user_id, group_id)
VALUES
  (1, 1);

--- Sessions ---
CREATE TABLE sessions (
  id INTEGER NOT NULL UNIQUE,
  user_id INTEGER NOT NULL,
  session TEXT NOT NULL UNIQUE,
  last_login TEXT NOT NULL,
  PRIMARY KEY(id AUTOINCREMENT) FOREIGN KEY(user_id) REFERENCES users(id)
);
