CREATE TABLE galaxy (
    galaxy_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE,
    number_of_stars int NOT NULL,
    otro1 VARCHAR(100) NOT NULL,
    otro2 VARCHAR(100) NOT NULL
);

CREATE TABLE star (
    star_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE,
    otro1 VARCHAR(100),
    otro2 VARCHAR(100),
    galaxy_id INT NOT NULL,
    FOREIGN KEY (galaxy_id) REFERENCES galaxy (galaxy_id) ON DELETE CASCADE
);


CREATE TABLE planet (
    planet_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE,
    description text,
    mass NUMERIC NOT NULL,
    number_moons INT NOT NULL,
    is_spherical boolean NOT NULL,
    has_atmosphere boolean NOT NULL,
    otro1 varchar(100),
    star_id INT NOT NULL,
    FOREIGN KEY (star_id) REFERENCES star (star_id) ON DELETE CASCADE
);

CREATE TABLE moon (
    moon_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    planet_id INT NOT NULL,
    otro1 VARCHAR(100) UNIQUE,
    otro2 VARCHAR(100),
    FOREIGN KEY (planet_id) REFERENCES planet (planet_id) ON DELETE CASCADE
);



CREATE TABLE users (
    users_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL unique,
    email VARCHAR(255) NOT NULL,
    otro1 VARCHAR(100),
    otro2 VARCHAR(100)
);



insert into users (name, email) values('alvaro', 'alvaro1@gmail.com');
insert into users (name, email) values('alvaro1', 'alvaro1@gmail.com');
insert into users (name, email) values('alvaro2', 'alvaro1@gmail.com');

insert into galaxy (name, number_of_stars, otro1, otro2) values ('galaxy1', 5000000, 'otros', 'otross');
insert into galaxy (name, number_of_stars, otro1, otro2) values ('galaxy2', 6000000, 'otros', 'otross');
insert into galaxy (name, number_of_stars, otro1, otro2) values ('galaxy3', 7000000, 'otros', 'otross');
insert into galaxy (name, number_of_stars, otro1, otro2) values ('galaxy4', 8000000, 'otros', 'otross');
insert into galaxy (name, number_of_stars, otro1, otro2) values ('galaxy5', 9000000, 'otros', 'otross');
insert into galaxy (name, number_of_stars, otro1, otro2) values ('galaxy6', 1000000, 'otros', 'otross');


insert into star (name, galaxy_id) values ('star1', 1);
insert into star (name, galaxy_id) values ('star2', 1);
insert into star (name, galaxy_id) values ('star3', 2);
insert into star (name, galaxy_id) values ('star4', 2);
insert into star (name, galaxy_id) values ('star5', 4);
insert into star (name, galaxy_id) values ('star6', 5);


insert into planet (name, number_moons, mass, description, is_spherical, has_atmosphere, star_id) values ('planet1', 12, 84000, 'description1', true, true, 1);
insert into planet (name, number_moons, mass, description, is_spherical, has_atmosphere, star_id) values ('planet2', 12, 84000, 'description2', true, true, 1);
insert into planet (name, number_moons, mass, description, is_spherical, has_atmosphere, star_id) values ('planet3', 12, 84000, 'description3', true, true, 2);
insert into planet (name, number_moons, mass, description, is_spherical, has_atmosphere, star_id) values ('planet4', 12, 84000, 'description4', true, true, 3);
insert into planet (name, number_moons, mass, description, is_spherical, has_atmosphere, star_id) values ('planet5', 12, 84000, 'description5', true, true, 5);
insert into planet (name, number_moons, mass, description, is_spherical, has_atmosphere, star_id) values ('planet6', 12, 84000, 'description6', true, true, 5);
insert into planet (name, number_moons, mass, description, is_spherical, has_atmosphere, star_id) values ('planet7', 12, 84000, 'description7', true, false, 5);
insert into planet (name, number_moons, mass, description, is_spherical, has_atmosphere, star_id) values ('planet8', 12, 84000, 'description8', true, true, 5);
insert into planet (name, number_moons, mass, description, is_spherical, has_atmosphere, star_id) values ('planet9', 12, 84000, 'description9', true, true, 1);
insert into planet (name, number_moons, mass, description, is_spherical, has_atmosphere, star_id) values ('planet10', 12, 84000, 'description10', true, true, 2);
insert into planet (name, number_moons, mass, description, is_spherical, has_atmosphere, star_id) values ('planet11', 12, 84000, 'description11', true, true, 2);
insert into planet (name, number_moons, mass, description, is_spherical, has_atmosphere, star_id) values ('planet12', 12, 84000, 'description112', true, false, 2);

insert into moon (name, planet_id) values ('moon1', 1);
insert into moon (name, planet_id) values ('moon1', 1);
insert into moon (name, planet_id) values ('moon1', 1);
insert into moon (name, planet_id) values ('moon1', 1);
insert into moon (name, planet_id) values ('moon1', 1);
insert into moon (name, planet_id) values ('moon2', 1);
insert into moon (name, planet_id) values ('moon2', 1);
insert into moon (name, planet_id) values ('moon2', 1);
insert into moon (name, planet_id) values ('moon2', 1);
insert into moon (name, planet_id) values ('moon2', 1);
insert into moon (name, planet_id) values ('moon3', 1);
insert into moon (name, planet_id) values ('moon3', 1);
insert into moon (name, planet_id) values ('moon3', 1);
insert into moon (name, planet_id) values ('moon3', 1);
insert into moon (name, planet_id) values ('moon3', 1);
insert into moon (name, planet_id) values ('moon4', 1);
insert into moon (name, planet_id) values ('moon4', 1);
insert into moon (name, planet_id) values ('moon4', 1);
insert into moon (name, planet_id) values ('moon4', 1);
insert into moon (name, planet_id) values ('moon4', 1);





