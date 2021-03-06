USE ucode_web;

CREATE TABLE IF NOT EXISTS powers(
    id INT(6) UNSIGNED AUTO_INCREMENT,
    hero_id INT UNSIGNED NOT NULL,
    name TEXT,
    points INT NOT NULL,
    type ENUM('attack', 'defense') NOT NULL,
    FOREIGN KEY (hero_id) REFERENCES heroes(id) ON DELETE CASCADE,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS races(
    id INT(6) UNSIGNED AUTO_INCREMENT,
    hero_id INT UNSIGNED NOT NULL,
    name TEXT,
    FOREIGN KEY (hero_id)  REFERENCES heroes(id) ON DELETE CASCADE,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS teams(
    id INT(6) UNSIGNED AUTO_INCREMENT,
    hero_id INT UNSIGNED NOT NULL,
    name TEXT,
    FOREIGN KEY (hero_id)  REFERENCES heroes(id) ON DELETE CASCADE,
    PRIMARY KEY (id)
);