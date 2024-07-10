-- DropIndex
DROP INDEX `Commande_userId_fkey` ON `commande`;

-- DropIndex
DROP INDEX `DetailsCommande_commandeId_fkey` ON `detailscommande`;

-- DropIndex
DROP INDEX `DetailsCommande_produitId_fkey` ON `detailscommande`;

-- AddForeignKey
ALTER TABLE `Commande` ADD CONSTRAINT `Commande_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `User`(`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `DetailsCommande` ADD CONSTRAINT `DetailsCommande_commandeId_fkey` FOREIGN KEY (`commandeId`) REFERENCES `Commande`(`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `DetailsCommande` ADD CONSTRAINT `DetailsCommande_produitId_fkey` FOREIGN KEY (`produitId`) REFERENCES `Produit`(`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
