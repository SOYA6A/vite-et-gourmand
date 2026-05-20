USE vite_gourmand;

-- Utilisateurs (mot de passe = "Password1!" hashé en bcrypt)
INSERT INTO utilisateur (nom, prenom, email, mot_de_passe, telephone, adresse, role) VALUES
('Dupont', 'Julie', 'julie@vite-gourmand.fr', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0612345678', '12 rue des Fleurs, Bordeaux', 'administrateur'),
('Martin', 'José', 'jose@vite-gourmand.fr', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0698765432', '12 rue des Fleurs, Bordeaux', 'employe'),
('Bernard', 'Alice', 'alice@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0611223344', '5 avenue Victor Hugo, Paris', 'utilisateur'),
('Petit', 'Thomas', 'thomas@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0622334455', '8 rue de la Paix, Lyon', 'utilisateur');

-- Allergènes
INSERT INTO allergene (nom) VALUES
('Gluten'), ('Crustacés'), ('Oeufs'), ('Poisson'), ('Arachides'),
('Soja'), ('Lait'), ('Fruits à coque'), ('Céleri'), ('Moutarde');

-- Plats
INSERT INTO plat (nom, type, description) VALUES
('Velouté de potiron', 'entree', 'Velouté onctueux de potiron avec crème fraîche'),
('Saumon gravlax', 'entree', 'Saumon mariné aux herbes et citron'),
('Bûche de Noël', 'dessert', 'Bûche traditionnelle chocolat praliné'),
('Chapon rôti', 'plat', 'Chapon fermier rôti aux herbes de Provence'),
('Risotto aux truffes', 'plat', 'Risotto crémeux aux truffes noires'),
('Tarte Tatin', 'dessert', 'Tarte Tatin aux pommes caramélisées'),
('Foie gras maison', 'entree', 'Foie gras mi-cuit avec chutney de figues'),
('Agneau pascal', 'plat', 'Gigot d\'agneau rôti aux herbes'),
('Charlotte aux fraises', 'dessert', 'Charlotte légère aux fraises fraîches');

-- Allergènes des plats
INSERT INTO plat_allergene (plat_id, allergene_id) VALUES
(1, 7), (2, 4), (3, 1), (3, 3), (3, 7),
(4, 7), (5, 7), (6, 1), (6, 3), (7, 7), (8, 7), (9, 1), (9, 3), (9, 7);

-- Menus
INSERT INTO menu (titre, description, theme, regime, nb_personnes_min, prix, stock, conditions) VALUES
('Menu Noël Prestige', 'Un menu raffiné pour sublimer vos fêtes de Noël', 'noel', 'classique', 8, 320.00, 10, 'Commande minimum 7 jours avant la prestation. Conservation au réfrigérateur.'),
('Menu Pâques Famille', 'Un menu convivial pour célébrer Pâques en famille', 'paques', 'classique', 6, 180.00, 15, 'Commande minimum 5 jours avant la prestation.'),
('Menu Végétarien Classique', 'Un menu savoureux sans viande pour tous les régimes', 'classique', 'vegetarien', 4, 120.00, 20, 'Commande minimum 3 jours avant la prestation.');

-- Plats des menus
INSERT INTO menu_plat (menu_id, plat_id) VALUES
(1, 7), (1, 4), (1, 3),
(2, 1), (2, 8), (2, 9),
(3, 1), (3, 5), (3, 6);

-- Commandes
INSERT INTO commande (utilisateur_id, menu_id, statut, nb_personnes, prix_total, frais_livraison, adresse_prestation, date_prestation) VALUES
(3, 1, 'terminee', 10, 400.00, 5.00, '5 avenue Victor Hugo, Paris', '2025-12-25 12:00:00'),
(4, 2, 'accepte', 6, 180.00, 0.00, '12 rue des Fleurs, Bordeaux', '2026-04-20 13:00:00');

-- Suivi commandes
INSERT INTO suivi_commande (commande_id, statut) VALUES
(1, 'en_attente'), (1, 'accepte'), (1, 'en_preparation'), (1, 'en_cours_livraison'), (1, 'livre'), (1, 'terminee'),
(2, 'en_attente'), (2, 'accepte');

-- Avis
INSERT INTO avis (commande_id, utilisateur_id, note, commentaire, valide) VALUES
(1, 3, 5, 'Prestation excellente, tout était parfait !', TRUE),
(1, 3, 4, 'Très bon repas, livraison légèrement en retard.', TRUE);