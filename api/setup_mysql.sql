-- create database
CREATE DATABASE IF NOT EXISTS blog_app;

-- create table users
CREATE TABLE IF NOT EXISTS `blog_app`.`users` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `username` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    `img` VARCHAR(255) NULL,
    PRIMARY KEY (`id`)
);

-- create table posts
CREATE TABLE IF NOT EXISTS `blog_app`.`posts` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) NOT NULL,
    `desc` VARCHAR(1000) NOT NULL,
    `img` VARCHAR(255) NOT NULL,
    `cat` VARCHAR(255) NOT NULL,
    `date` DATETIME NOT NULL,
    `uid` INT NOT NULL,
    PRIMARY KEY (`id`),
    CONSTRAINT `fk_uid` FOREIGN KEY (`uid`) REFERENCES `users`(`id`) ON DELETE CASCADE ON UPDATE CASCADE
);
