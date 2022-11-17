-- CreateTable
CREATE TABLE `onu` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `customer` VARCHAR(255) NOT NULL,
    `cpe_user` VARCHAR(255) NOT NULL,
    `contract` VARCHAR(255) NOT NULL,
    `onu_name` VARCHAR(255) NOT NULL,
    `olt` VARCHAR(255) NOT NULL,
    `pon` VARCHAR(255) NOT NULL,
    `serial` VARCHAR(255) NOT NULL,
    `distance` VARCHAR(255) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
