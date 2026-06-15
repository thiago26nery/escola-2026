CREATE TABLE `resource` (
                            `id` INT NOT NULL AUTO_INCREMENT,
                            `title` VARCHAR(100) NULL,
                            `description` VARCHAR(200) NULL,
                            `position` INT NULL,
                            `imgUri` VARCHAR(200) NULL,
                            `type` VARCHAR(60) NULL,
                            `offer_id` BIGINT NOT NULL,
                            PRIMARY KEY (`id`),
                            INDEX `FK_resource_offer_idx` (`offer_id` ASC) VISIBLE,
                            CONSTRAINT `FK_resource_offer`
                                FOREIGN KEY (`offer_id`)
                                    REFERENCES `escola`.`offer` (`id`)
                                    ON DELETE NO ACTION
                                    ON UPDATE NO ACTION);