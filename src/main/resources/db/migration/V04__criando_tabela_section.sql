CREATE TABLE `section` (
                           `id` BIGINT NOT NULL AUTO_INCREMENT,
                           `title` VARCHAR(100) NULL,
                           `description` VARCHAR(200) NULL,
                           `position` INT NULL,
                           `img_uri` VARCHAR(200) NULL,
                           `resource_id` INT NULL,
                           `prerequisite_id` BIGINT NULL,
                           PRIMARY KEY (`id`),
                           INDEX `Fk_section_resource_idx` (`resource_id` ASC) VISIBLE,
                           CONSTRAINT `Fk_section_resource`
                               FOREIGN KEY (`resource_id`)
                                   REFERENCES `resource` (`id`)
                                   ON DELETE NO ACTION
                                   ON UPDATE NO ACTION);

ALTER TABLE `section`
    ADD INDEX `Fk_self_relationship_idx` (`prerequisite_id` ASC) VISIBLE;
;
ALTER TABLE `section`
    ADD CONSTRAINT `Fk_self_relationship`
        FOREIGN KEY (`prerequisite_id`)
            REFERENCES `section` (`id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION;