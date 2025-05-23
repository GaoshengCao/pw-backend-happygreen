-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versione server:              11.7.2-MariaDB - mariadb.org binary distribution
-- S.O. server:                  Win64
-- HeidiSQL Versione:            12.10.0.7000
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dump dei dati della tabella pwhappygreen_db.auth_group: ~0 rows (circa)

-- Dump dei dati della tabella pwhappygreen_db.auth_group_permissions: ~0 rows (circa)

-- Dump dei dati della tabella pwhappygreen_db.auth_permission: ~68 rows (circa)
/*
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add log entry', 1, 'add_logentry'),
	(2, 'Can change log entry', 1, 'change_logentry'),
	(3, 'Can delete log entry', 1, 'delete_logentry'),
	(4, 'Can view log entry', 1, 'view_logentry'),
	(5, 'Can add permission', 2, 'add_permission'),
	(6, 'Can change permission', 2, 'change_permission'),
	(7, 'Can delete permission', 2, 'delete_permission'),
	(8, 'Can view permission', 2, 'view_permission'),
	(9, 'Can add group', 3, 'add_group'),
	(10, 'Can change group', 3, 'change_group'),
	(11, 'Can delete group', 3, 'delete_group'),
	(12, 'Can view group', 3, 'view_group'),
	(13, 'Can add content type', 4, 'add_contenttype'),
	(14, 'Can change content type', 4, 'change_contenttype'),
	(15, 'Can delete content type', 4, 'delete_contenttype'),
	(16, 'Can view content type', 4, 'view_contenttype'),
	(17, 'Can add session', 5, 'add_session'),
	(18, 'Can change session', 5, 'change_session'),
	(19, 'Can delete session', 5, 'delete_session'),
	(20, 'Can view session', 5, 'view_session'),
	(21, 'Can add badge', 6, 'add_badge'),
	(22, 'Can change badge', 6, 'change_badge'),
	(23, 'Can delete badge', 6, 'delete_badge'),
	(24, 'Can view badge', 6, 'view_badge'),
	(25, 'Can add eco product', 7, 'add_ecoproduct'),
	(26, 'Can change eco product', 7, 'change_ecoproduct'),
	(27, 'Can delete eco product', 7, 'delete_ecoproduct'),
	(28, 'Can view eco product', 7, 'view_ecoproduct'),
	(29, 'Can add quiz', 8, 'add_quiz'),
	(30, 'Can change quiz', 8, 'change_quiz'),
	(31, 'Can delete quiz', 8, 'delete_quiz'),
	(32, 'Can view quiz', 8, 'view_quiz'),
	(33, 'Can add waste classification', 9, 'add_wasteclassification'),
	(34, 'Can change waste classification', 9, 'change_wasteclassification'),
	(35, 'Can delete waste classification', 9, 'delete_wasteclassification'),
	(36, 'Can view waste classification', 9, 'view_wasteclassification'),
	(37, 'Can add user', 10, 'add_user'),
	(38, 'Can change user', 10, 'change_user'),
	(39, 'Can delete user', 10, 'delete_user'),
	(40, 'Can view user', 10, 'view_user'),
	(41, 'Can add group', 11, 'add_group'),
	(42, 'Can change group', 11, 'change_group'),
	(43, 'Can delete group', 11, 'delete_group'),
	(44, 'Can view group', 11, 'view_group'),
	(45, 'Can add post', 12, 'add_post'),
	(46, 'Can change post', 12, 'change_post'),
	(47, 'Can delete post', 12, 'delete_post'),
	(48, 'Can view post', 12, 'view_post'),
	(49, 'Can add comment', 13, 'add_comment'),
	(50, 'Can change comment', 13, 'change_comment'),
	(51, 'Can delete comment', 13, 'delete_comment'),
	(52, 'Can view comment', 13, 'view_comment'),
	(53, 'Can add quiz result', 14, 'add_quizresult'),
	(54, 'Can change quiz result', 14, 'change_quizresult'),
	(55, 'Can delete quiz result', 14, 'delete_quizresult'),
	(56, 'Can view quiz result', 14, 'view_quizresult'),
	(57, 'Can add scanned object', 15, 'add_scannedobject'),
	(58, 'Can change scanned object', 15, 'change_scannedobject'),
	(59, 'Can delete scanned object', 15, 'delete_scannedobject'),
	(60, 'Can view scanned object', 15, 'view_scannedobject'),
	(61, 'Can add user badge', 16, 'add_userbadge'),
	(62, 'Can change user badge', 16, 'change_userbadge'),
	(63, 'Can delete user badge', 16, 'delete_userbadge'),
	(64, 'Can view user badge', 16, 'view_userbadge'),
	(65, 'Can add membership', 17, 'add_membership'),
	(66, 'Can change membership', 17, 'change_membership'),
	(67, 'Can delete membership', 17, 'delete_membership'),
	(68, 'Can view membership', 17, 'view_membership');
*/
-- Dump dei dati della tabella pwhappygreen_db.django_admin_log: ~0 rows (circa)

-- Dump dei dati della tabella pwhappygreen_db.django_content_type: ~17 rows (circa)
/*
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(4, 'contenttypes', 'contenttype'),
	(6, 'happygreen', 'badge'),
	(13, 'happygreen', 'comment'),
	(7, 'happygreen', 'ecoproduct'),
	(11, 'happygreen', 'group'),
	(17, 'happygreen', 'membership'),
	(12, 'happygreen', 'post'),
	(8, 'happygreen', 'quiz'),
	(14, 'happygreen', 'quizresult'),
	(15, 'happygreen', 'scannedobject'),
	(10, 'happygreen', 'user'),
	(16, 'happygreen', 'userbadge'),
	(9, 'happygreen', 'wasteclassification'),
	(5, 'sessions', 'session');
*/
-- Dump dei dati della tabella pwhappygreen_db.django_migrations: ~19 rows (circa)
/*
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2025-05-20 16:57:20.794514'),
	(2, 'contenttypes', '0002_remove_content_type_name', '2025-05-20 16:57:20.840934'),
	(3, 'auth', '0001_initial', '2025-05-20 16:57:20.962571'),
	(4, 'auth', '0002_alter_permission_name_max_length', '2025-05-20 16:57:20.991890'),
	(5, 'auth', '0003_alter_user_email_max_length', '2025-05-20 16:57:20.995529'),
	(6, 'auth', '0004_alter_user_username_opts', '2025-05-20 16:57:20.998703'),
	(7, 'auth', '0005_alter_user_last_login_null', '2025-05-20 16:57:21.001490'),
	(8, 'auth', '0006_require_contenttypes_0002', '2025-05-20 16:57:21.002611'),
	(9, 'auth', '0007_alter_validators_add_error_messages', '2025-05-20 16:57:21.005252'),
	(10, 'auth', '0008_alter_user_username_max_length', '2025-05-20 16:57:21.007815'),
	(11, 'auth', '0009_alter_user_last_name_max_length', '2025-05-20 16:57:21.010180'),
	(12, 'auth', '0010_alter_group_name_max_length', '2025-05-20 16:57:21.024929'),
	(13, 'auth', '0011_update_proxy_permissions', '2025-05-20 16:57:21.028788'),
	(14, 'auth', '0012_alter_user_first_name_max_length', '2025-05-20 16:57:21.031970'),
	(15, 'happygreen', '0001_initial', '2025-05-20 16:57:21.672748'),
	(16, 'admin', '0001_initial', '2025-05-20 16:57:21.727864'),
	(17, 'admin', '0002_logentry_remove_auto_add', '2025-05-20 16:57:21.737064'),
	(18, 'admin', '0003_logentry_add_action_flag_choices', '2025-05-20 16:57:21.750382'),
	(19, 'sessions', '0001_initial', '2025-05-20 16:57:21.772419');
*/
-- Dump dei dati della tabella pwhappygreen_db.django_session: ~0 rows (circa)

-- Dump dei dati della tabella pwhappygreen_db.happygreen_badge: ~0 rows (circa)

-- Dump dei dati della tabella pwhappygreen_db.happygreen_comment: ~0 rows (circa)

-- Dump dei dati della tabella pwhappygreen_db.happygreen_ecoproduct: ~0 rows (circa)

-- Dump dei dati della tabella pwhappygreen_db.happygreen_group: ~0 rows (circa)

-- Dump dei dati della tabella pwhappygreen_db.happygreen_membership: ~0 rows (circa)

-- Dump dei dati della tabella pwhappygreen_db.happygreen_post: ~0 rows (circa)

-- Dump dei dati della tabella pwhappygreen_db.happygreen_quiz: ~40 rows (circa)
INSERT INTO `happygreen_quiz` (`id`, `question_text`, `correct_answer`, `wrong_answers`) VALUES
	(1, 'Qual è il gas serra più abbondante nell\'atmosfera terrestre?', 'Vapore acqueo (H₂O)', '["Anidride carbonica (CO\\u2082)", "Metano (CH\\u2084)", "Ozono (O\\u2083)"]'),
	(2, 'Quale paese produce la maggiore quantità di energia eolica al mondo?', 'Cina', '["Germania", "Stati Uniti", "Danimarca"]'),
	(3, 'Qual è la principale causa della deforestazione nell\'Amazzonia?', 'Agricoltura intensiva', '["Urbanizzazione", "Disastri naturali", "Taglio illegale per legname"]'),
	(4, 'Quale di questi materiali impiega più tempo a decomporsi?', 'Bottiglia di plastica', '["Giornale", "Scatola di cartone", "Bucce di banana"]'),
	(5, 'Qual è la principale fonte di inquinamento dell\'oceano?', 'Plastica', '["Olio esausto", "Detersivi", "Acque reflue trattate"]'),
	(6, 'Cos\'è il protocollo di Kyoto?', 'Un accordo per ridurre le emissioni di gas serra', '["Una conferenza sulle foreste", "Un trattato sulla pesca", "Un codice per la protezione delle acque"]'),
	(7, 'Quale tra questi è un effetto diretto della deforestazione?', 'Perdita di biodiversità', '["Innalzamento del livello del mare", "Formazione di ozono", "Incremento della fauna"]'),
	(8, 'Quale dei seguenti animali è considerato un bioindicatore?', 'Rana', '["Cane", "Cavallo", "Mucca"]'),
	(9, 'Quale delle seguenti è una fonte di energia rinnovabile?', 'Energia solare', '["Petrolio", "Carbone", "Gas naturale"]'),
	(10, 'Quale di questi comportamenti aiuta a ridurre l’impronta ecologica?', 'Usare i mezzi pubblici', '["Usare spesso l\\u2019auto", "Comprare bottiglie di plastica", "Accendere molte luci"]'),
	(11, 'Cosa rappresenta il termine \'sostenibilità\'?', 'Equilibrio tra ambiente, economia e società', '["Sopravvivenza delle specie forti", "Riduzione del benessere per l\\u2019ambiente", "Crescita infinita"]'),
	(12, 'Quale tra i seguenti è un inquinante dell’aria?', 'Ossidi di azoto', '["Vapore acqueo", "Elio", "Ossigeno"]'),
	(13, 'Qual è una fonte importante di microplastiche negli oceani?', 'Abbigliamento sintetico', '["Piante marine", "Reti da pesca biologiche", "Fumo dei vulcani"]'),
	(14, 'Quale regione sta sperimentando un rapido scioglimento dei ghiacci?', 'Artico', '["Sahara", "Himalaya", "Alpi italiane"]'),
	(15, 'Qual è il principale scopo del riciclo?', 'Ridurre rifiuti e risparmiare risorse', '["Aumentare il volume delle discariche", "Riutilizzare cibo", "Eliminare l\\u2019acqua in eccesso"]'),
	(16, 'Quale tra questi è un gas serra?', 'Metano', '["Azoto", "Elio", "Neon"]'),
	(17, 'Che cos\'è l\'effetto serra?', 'Riscaldamento dovuto ai gas nell\'atmosfera', '["Raffreddamento dell\\u2019atmosfera", "Erosione del suolo", "Rottura dello strato di ozono"]'),
	(18, 'Qual è la principale causa del cambiamento climatico?', 'Attività umane', '["Attivit\\u00e0 solare", "Movimenti dei continenti", "Cicli naturali lenti"]'),
	(19, 'Cosa si intende per impronta ecologica?', 'Misura dell’impatto umano sull’ambiente', '["Quantit\\u00e0 di animali protetti", "Estensione delle foreste", "Numero di case ecologiche"]'),
	(20, 'Quale attività umana contribuisce maggiormente all’effetto serra?', 'Combustione di combustibili fossili', '["Pesca", "Coltivazione biologica", "Produzione di energia idroelettrica"]'),
	(21, 'Quale tra i seguenti combustibili è fossile?', 'Carbone', '["Etanolo", "Biodiesel", "Energia solare"]'),
	(22, 'Qual è l’elemento principale che causa l’acidificazione degli oceani?', 'CO₂', '["Zolfo", "Mercurio", "Azoto"]'),
	(23, 'Qual è lo scopo principale dei parchi nazionali?', 'Proteggere le specie e gli habitat', '["Favorire il turismo", "Fornire risorse alle imprese", "Costruire nuove citt\\u00e0 sostenibili"]'),
	(24, 'Cosa rappresenta il simbolo con tre frecce che formano un triangolo?', 'Riciclabile', '["Materiale pericoloso", "Prodotto chimico", "Plastica"]'),
	(25, 'Qual è uno dei principali vantaggi dell’energia solare?', 'Non produce gas serra durante l’uso', '["\\u00c8 disponibile solo di notte", "Produce molto rumore", "Richiede combustibili fossili"]'),
	(26, 'Cos’è la biodiversità?', 'Varietà di specie viventi in un ambiente', '["Quantit\\u00e0 di risorse minerarie", "Numero di laghi in un\\u2019area", "Specie di alberi sempreverdi"]'),
	(27, 'Quale animale è a rischio a causa dello scioglimento dei ghiacci?', 'Orso polare', '["Pinguino delle Galapagos", "Cammello", "Leone africano"]'),
	(28, 'Qual è il principale effetto dell’inquinamento luminoso?', 'Disturbo del ciclo naturale di animali e piante', '["Maggiore produzione di energia", "Inquinamento del suolo", "Raffreddamento globale"]'),
	(29, 'Cos’è l’energia geotermica?', 'Energia ricavata dal calore della Terra', '["Energia solare riflessa", "Energia derivata dai vulcani", "Energia prodotta dalle maree"]'),
	(30, 'Qual è l\'impatto ambientale del disboscamento?', 'Aumenta l’effetto serra', '["Riduce le piogge", "Produce ossigeno in eccesso", "Abbassa la temperatura globale"]'),
	(31, 'Quale delle seguenti pratiche è sostenibile?', 'Agricoltura biologica', '["Monocoltura intensiva", "Deforestazione per allevamenti", "Pesca industriale massiva"]'),
	(32, 'Qual è un rischio dell’uso eccessivo di pesticidi?', 'Contaminazione delle acque', '["Aumento dell\\u2019ossigeno atmosferico", "Formazione di nuovi insetti", "Crescita dei raccolti"]'),
	(33, 'Qual è una conseguenza dell’innalzamento del livello del mare?', 'Inondazione di aree costiere', '["Espansione dei deserti", "Formazione di nuove montagne", "Riduzione della salinit\\u00e0 marina"]'),
	(34, 'Quale delle seguenti attività riduce lo spreco alimentare?', 'Conservare correttamente il cibo', '["Acquistare pi\\u00f9 del necessario", "Gettare alimenti vicino alla scadenza", "Cucinare in abbondanza ogni giorno"]'),
	(35, 'Cosa significa \'carbon neutral\'?', 'Non emettere CO₂ netta', '["Utilizzare solo gas naturali", "Assorbire completamente l\\u2019ossigeno", "Produrre energia dal carbone"]'),
	(36, 'Qual è la funzione dello strato di ozono?', 'Protegge dai raggi UV', '["Genera ossigeno", "Riscalda l\\u2019atmosfera", "Produce vento"]'),
	(37, 'Quale di queste azioni riduce l’impatto ambientale domestico?', 'Spegnere le luci inutilizzate', '["Usare l\\u2019asciugatrice ogni giorno", "Tenere aperto il frigorifero", "Lasciare l\\u2019acqua scorrere mentre si lava"]'),
	(38, 'Quale metallo si può riciclare quasi all’infinito senza perdere qualità?', 'Alluminio', '["Piombo", "Ferro", "Mercurio"]'),
	(39, 'Che cos’è una specie in via di estinzione?', 'Una specie a rischio di scomparsa', '["Una nuova specie scoperta", "Una specie in aumento", "Una specie migratoria"]'),
	(40, 'Quale gas è responsabile della maggior parte dello smog urbano?', 'Biossido di azoto', '["Ossigeno", "Argon", "Idrogeno"]');

-- Dump dei dati della tabella pwhappygreen_db.happygreen_quizresult: ~0 rows (circa)

-- Dump dei dati della tabella pwhappygreen_db.happygreen_scannedobject: ~0 rows (circa)

-- Dump dei dati della tabella pwhappygreen_db.happygreen_user: ~0 rows (circa)

-- Dump dei dati della tabella pwhappygreen_db.happygreen_userbadge: ~0 rows (circa)

-- Dump dei dati della tabella pwhappygreen_db.happygreen_user_groups: ~0 rows (circa)

-- Dump dei dati della tabella pwhappygreen_db.happygreen_user_user_permissions: ~0 rows (circa)

-- Dump dei dati della tabella pwhappygreen_db.happygreen_wasteclassification: ~0 rows (circa)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
