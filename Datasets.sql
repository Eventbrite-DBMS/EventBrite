

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eventbrite`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendees`
--

CREATE TABLE `attendees` (
  `Attendees_ID` varchar(12) PRIMARY KEY,
  `Event_ID` varchar(10) NOT NULL,
  `Order_ID` varchar(8) NOT NULL,
  `Ticket_Class_ID` varchar(15) NOT NULL,
  `Status` varchar(13) NOT NULL,
  `Name` varchar(19) NOT NULL,
  `Email` varchar(39) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Company` varchar(30) NOT NULL
   CONSTRAINT T_ID_FK
   FOREIGN KEY (Ticket_Class_ID)
   REFERENCES ticket_classes (Ticket_Class_ID)
   ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendees`
--

INSERT INTO `attendees` (`Attendees_ID`, `Event_ID`, `Order_ID`, `Ticket_Class_ID`, `Status`, `Name`, `Email`, `Gender`, `Company`) VALUES
('987689', '1155628953', '1234602', '1029208', 'Attending', 'Emeline Sotelo', 'emeline@gmail.com', 'Male', 'Reporters Inc'),
('987720', '1155628953', '1234633', '1029208', 'Checked In', 'Ira Zihal', 'ira.zihal@yahoo.com', 'Male', 'American Express Publshng Corp'),
('987857', '111752105', '1234770', '435351', 'Checked In', 'Ora Handrick', 'ora.handrick@gmail.com', 'Female', 'Fennessey Buick Inc'),
('987861', '111752105', '1234774', '435351', 'Attending', 'Tommy Gennusa', 'tommy@hotmail.com', 'Male', 'Cooper And Raley'),
('987876', '111752105', '1234789', '435351', 'Checked In', 'Shawn Weibe', 'shawn@hotmail.com', 'Male', 'Feutz'),
('987927', '111752105', '1234840', '435351', 'Checked In', 'Markus Lukasik', 'markus@yahoo.com', 'Female', 'M & M Store Fixtures Co Inc'),
('987950', '111752105', '1234863', '435351', 'Attending', 'Eliseo Mikovec', 'emikovec@mikovec.com.au', 'Male', 'Air Flow Co Inc'),
('988093', '731054143', '1235006', '557201', 'Attending', 'Derick Dhamer', 'ddhamer@cox.net', 'Male', 'Studer'),
('988101', '731054143', '1235014', '557201', 'Checked In', 'Vilma Berlanga', 'vberlanga@berlanga.com', 'Female', 'Feutz'),
('988162', '731054143', '1235075', '557201', 'Checked In', 'Meaghan Garufi', 'meaghan@hotmail.com', 'Male', 'Bolton'),
('988206', '731054143', '1235119', '557201', 'Checked In', 'Paulina Maker', 'paulina_maker@maker.net.au', 'Male', 'Swanson Peterson Fnrl Home Inc'),
('988208', '731054143', '1235121', '557201', 'Attending', 'Scarlet Cartan', 'scarlet.cartan@yahoo.com', 'Female', 'Feutz'),
('988222', '731054143', '1235135', '557201', 'Attending', 'Vilma Berlanga', 'vberlanga@berlanga.com', 'Male', 'Wells'),
('988245', '731054143', '1235158', '557201', 'Attending', 'Lavonne Esco', 'lavonne.esco@yahoo.com', 'Female', 'Ansaring Answering Service'),
('988255', '731054143', '1235168', '43182', 'Attending', 'Armando Barkley', 'armando.barkley@yahoo.com', 'Female', 'Oregon Handling Equip Co'),
('988263', '731054143', '1235176', '43182', 'Attending', 'Juan Knudtson', 'juan@gmail.com', 'Female', 'Feutz'),
('988297', '731054143', '1235210', '43182', 'Checked In', 'Pearlene Boudrie', 'pboudrie@boudrie.net.au', 'Female', 'Design Rite Homes Inc'),
('988494', '151918584', '1235407', '231948', 'Checked In', 'Valentine Gillian', 'valentine_gillian@gmail.com', 'Male', 'Fbs Business Finance'),
('988538', '151918584', '1235451', '231948', 'Attending', 'Aliza Akiyama', 'aliza@yahoo.com', 'Female', 'Kelly'),
('988569', '1066714356', '1235482', '229687', 'Checked In', 'Corrina Lindblom', 'clindblom@gmail.com', 'Male', 'Progressive Machine Co'),
('988734', '265398704', '1235647', '973632', 'Checked In', 'Justine Mugnolo', 'jmugnolo@yahoo.com', 'Female', 'Evans Rule Company'),
('988903', '749661691', '1235816', '873533', 'Not Attending', 'Alease Strawbridge', 'alease_strawbridge@strawbridge.com.au', 'Female', 'Marscher'),
('988978', '172609908', '1235891', '988804', 'Attending', 'Cecily Hollack', 'cecily@hollack.org', 'Male', 'Feutz'),
('989049', '887364780', '1235962', '232803', 'Attending', 'Pete Dubaldi', 'pdubaldi@hotmail.com', 'Male', 'Womack & Galich'),
('989079', '887364780', '1235992', '232803', 'Attending', 'Samira Heninger', 'sheninger@yahoo.com', 'Male', 'Alb Inc'),
('989138', '887364780', '1236051', '232803', 'Attending', 'Page Entzi', 'page@entzi.net.au', 'Female', 'Roland Ashcroft'),
('989139', '887364780', '1236052', '232803', 'Attending', 'Rhea Aredondo', 'rhea_aredondo@cox.net', 'Female', 'Double B Foods Inc'),
('989153', '887364780', '1236066', '232803', 'Not Attending', 'Elza Lipke', 'elza@yahoo.com', 'Female', 'Museum Of Science & Industry'),
('989187', '923551703', '1236100', '694138', 'Checked In', 'Jonelle Epps', 'jepps@hotmail.com', 'Male', 'Kvoo Radio'),
('989216', '923551703', '1236129', '694138', 'Attending', 'Sang Weigner', 'sweigner@gmail.com', 'Female', 'Hander'),
('989246', '923551703', '1236159', '694138', 'Attending', 'Ilene Eroman', 'ilene.eroman@hotmail.com', 'Female', 'Robinson'),
('989266', '923551703', '1236179', '694138', 'Attending', 'Lauran Tovmasyan', 'ltovmasyan@tovmasyan.net.au', 'Female', 'United Christian Cmnty Crdt Un'),
('989267', '923551703', '1236180', '694138', 'Checked In', 'Barbra Adkin', 'badkin@hotmail.com', 'Male', 'Binswanger'),
('989299', '923551703', '1236212', '694138', 'Checked In', 'Alline Jeanty', 'ajeanty@gmail.com', 'Male', 'W W John Holden Inc'),
('989438', '1213789960', '1236351', '1092914', 'Checked In', 'Micah Shear', 'mshear@hotmail.com', 'Male', 'United Water Resources Inc'),
('989501', '1213789960', '1236414', '1092914', 'Checked In', 'Lettie Hessenthaler', 'lettie_hessenthaler@hessenthaler.net.au', 'Male', 'Sullivan'),
('989647', '1213789960', '1236560', '592818', 'Checked In', 'Deandrea Hughey', 'deandrea@yahoo.com', 'Female', 'Century 21 Krall Real Estate'),
('989650', '1213789960', '1236563', '592818', 'Checked In', 'Hyman Hegeman', 'hyman@hotmail.com', 'Male', 'Jerico Group'),
('989673', '697723846', '1236586', '399866', 'Attending', 'Staci Schmaltz', 'staci_schmaltz@aol.com', 'Male', 'Midwest Contracting & Mfg Inc'),
('989679', '697723846', '1236592', '399866', 'Attending', 'Linn Paa', 'linn_paa@paa.com', 'Female', 'Valerie & Company'),
('989787', '697723846', '1236700', '399866', 'Attending', 'Nelida Sawchuk', 'nelida@gmail.com', 'Male', 'Anchorage Museum Of Hist & Art'),
('989811', '697723846', '1236724', '399866', 'Attending', 'Della Selestewa', 'della.selestewa@gmail.com', 'Female', 'Aztech Controls Inc'),
('989833', '697723846', '1236746', '399866', 'Attending', 'Francoise Byon', 'francoise@hotmail.com', 'Male', 'H P Stran & Co'),
('990033', '221778322', '1236946', '256715', 'Checked In', 'Tricia Peressini', 'tperessini@yahoo.com', 'Male', 'Aviation Design'),
('990051', '221778322', '1236964', '256715', 'Not Attending', 'Chanel Caudy', 'chanel.caudy@caudy.org', 'Female', 'Professional Image Inc'),
('990219', '750924270', '1237132', '666373', 'Checked In', 'Pamella Schmierer', 'pamella.schmierer@schmierer.org', 'Female', 'K Cs Cstm Mouldings Windows'),
('990266', '65657239', '1237179', '853026', 'Checked In', 'Frederic Schimke', 'fschimke@schimke.com.au', 'Male', 'Curtis & Curtis Inc'),
('990275', '65657239', '1237188', '853026', 'Checked In', 'Albina Glick', 'albina@glick.com', 'Male', 'Giampetro'),
('990324', '65657239', '1237237', '853026', 'Checked In', 'Dorinda Markoff', 'dorinda_markoff@hotmail.com', 'Male', 'Alumi Span Inc'),
('990370', '65657239', '1237283', '435083', 'Checked In', 'Donette Foller', 'donette.foller@cox.net', 'Female', 'Printing Dimensions'),
('990390', '65657239', '1237303', '435083', 'Checked In', 'Latricia Schmoyer', 'latricia_schmoyer@hotmail.com', 'Male', 'Flanagan Lieberman Hoffman'),
('990419', '8660022', '1237332', '1229911', 'Checked In', 'Delbert Houben', 'delbert.houben@hotmail.com', 'Male', 'Hermann Assocs Inc Safe Mart'),
('990551', '8660022', '1237464', '1229911', 'Checked In', 'Kati Rulapaugh', 'kati.rulapaugh@hotmail.com', 'Female', 'Eder Assocs Consltng Engrs Pc'),
('990647', '681722052', '1237560', '1066087', 'Checked In', 'Hubert Walthall', 'hubert@walthall.org', 'Female', 'Dee'),
('990652', '681722052', '1237565', '1066087', 'Checked In', 'Reuben Hegland', 'reuben@yahoo.com', 'Female', 'Welders Supply Service Inc'),
('990677', '681722052', '1237590', '1066087', 'Checked In', 'Whitley Tomasulo', 'whitley.tomasulo@aol.com', 'Male', 'Freehold Fence Co'),
('990766', '681722052', '1237679', '424726', 'Checked In', 'Nobuko Halsey', 'nobuko.halsey@yahoo.com', 'Male', 'Goeman Wood Products Inc'),
('990822', '237641156', '1237735', '788105', 'Checked In', 'Gianna Eilers', 'gianna@yahoo.com', 'Male', 'Cochnower Pest Control'),
('990829', '237641156', '1237742', '788105', 'Checked In', 'Edda Mcquaide', 'emcquaide@yahoo.com', 'Female', 'Eagles Nest'),
('990832', '237641156', '1237745', '788105', 'Checked In', 'Deonna Kippley', 'deonna_kippley@hotmail.com', 'Female', 'Midas Muffler Shops'),
('990879', '237641156', '1237792', '788105', 'Attending', 'Roslyn Chavous', 'roslyn.chavous@chavous.org', 'Male', 'Mcrae'),
('990902', '1125356562', '1237815', '788105', 'Checked In', 'Elenor Siefken', 'elenor.siefken@yahoo.com', 'Female', 'Chateau Sonesta Hotel'),
('990991', '874933586', '1237904', '548835', 'Checked In', 'Vallie Mondella', 'vmondella@mondella.com', 'Female', 'Private Properties'),
('991014', '874933586', '1237927', '548835', 'Checked In', 'Frederica Blunk', 'frederica_blunk@gmail.com', 'Female', 'Jets Cybernetics'),
('991034', '874933586', '1237947', '548835', 'Checked In', 'Refugia Jacobos', 'refugia.jacobos@jacobos.com', 'Female', 'North Central Fl Sfty Cncl'),
('991083', '356378035', '1237996', '951994', 'Checked In', 'Delsie Ducos', 'dducos@hotmail.com', 'Male', 'F H Overseas Export Inc'),
('991113', '356378035', '1238026', '951994', 'Checked In', 'Carlee Boulter', 'carlee.boulter@hotmail.com', 'Male', 'Tippett'),
('991131', '83587551', '1238044', '237247', 'Checked In', 'Thomasena Graziosi', 'thomasena@gmail.com', 'Male', 'Hutchinson Inc'),
('991140', '83587551', '1238053', '237247', 'Checked In', 'Jesusa Shin', 'jshin@shin.com', 'Female', 'Carroccio'),
('991141', '83587551', '1238054', '237247', 'Checked In', 'Jean Cecchinato', 'jean.cecchinato@gmail.com', 'Male', 'Cox'),
('991156', '83587551', '1238069', '237247', 'Checked In', 'Daren Weirather', 'dweirather@aol.com', 'Male', 'Panasystems'),
('991282', '1076389159', '1238195', '602615', 'Checked In', 'Shonda Greenbush', 'shonda_greenbush@cox.net', 'Female', 'Saint George Well Drilling'),
('991381', '1204730965', '1238294', '1146078', 'Checked In', 'Desiree Englund', 'denglund@gmail.com', 'Male', 'Wrrr Fm'),
('991403', '1204730965', '1238316', '1146078', 'Not Attending', 'Cordelia Storment', 'cordelia_storment@aol.com', 'Male', 'Burrows'),
('991419', '1204730965', '1238332', '427966', 'Checked In', 'Rolland Francescon', 'rolland@cox.net', 'Male', 'Stanley'),
('991515', '1045174718', '1238428', '1046760', 'Checked In', 'Xuan Rochin', 'xuan@gmail.com', 'Male', 'Carol'),
('991641', '1045174718', '1238554', '172853', 'Checked In', 'Candida Corbley', 'candida_corbley@hotmail.com', 'Male', 'Colts Neck Medical Assocs Inc'),
('991654', '1045174718', '1238567', '172853', 'Checked In', 'Yvonne Tjepkema', 'yvonne.tjepkema@hotmail.com', 'Male', 'Radio Communications Co'),
('991665', '1045174718', '1238578', '172853', 'Checked In', 'Carin Deleo', 'cdeleo@deleo.com', 'Male', 'Redeker'),
('991803', '81648815', '1238716', '274081', 'Checked In', 'Rebecka Gesick', 'rgesick@gesick.org', 'Male', 'Polykote Inc'),
('991820', '81648815', '1238733', '274081', 'Not Attending', 'Karl Klonowski', 'karl_klonowski@yahoo.com', 'Female', 'Rossi'),
('991828', '81648815', '1238741', '274081', 'Not Attending', 'Jackie Borchelt', 'jackie_borchelt@hotmail.com', 'Female', 'Community Communication Servs'),
('991888', '81648815', '1238801', '1100555', 'Checked In', 'Patria Popa', 'patria.popa@gmail.com', 'Female', 'Blaney Sheet Metal'),
('991931', '1110067501', '1238844', '844056', 'Checked In', 'Kris Marrier', 'kris@gmail.com', 'Male', 'King'),
('992045', '1110067501', '1238958', '844056', 'Checked In', 'Micah Shear', 'mshear@hotmail.com', 'Male', 'United Water Resources Inc'),
('992097', '1110067501', '1239010', '844056', 'Not Attending', 'Rosendo Jelsma', 'rosendo_jelsma@hotmail.com', 'Female', 'Dileo'),
('992104', '1110067501', '1239017', '437615', 'Checked In', 'Felix Bumby', 'felix.bumby@bumby.com.au', 'Female', 'Epsilon Products Company'),
('992224', '1023648806', '1239137', '258406', 'Checked In', 'Donte Resureccion', 'donte.resureccion@yahoo.com', 'Female', 'N E Industrial Distr Inc'),
('992281', '1023648806', '1239194', '258406', 'Checked In', 'Kanisha Waycott', 'kanisha_waycott@yahoo.com', 'Male', 'Schroer'),
('992315', '218041858', '1239228', '588393', 'Checked In', 'Anthony Stever', 'anthony.stever@hotmail.com', 'Female', 'Burton & Davis'),
('992329', '218041858', '1239242', '588393', 'Checked In', 'Adrianna Poncio', 'adrianna@poncio.com.au', 'Female', 'H T Communications Group Ltd'),
('992378', '218041858', '1239291', '588393', 'Checked In', 'Rolland Francescon', 'rolland@cox.net', 'Female', 'Stanley'),
('992425', '117014363', '1239338', '409492', 'Checked In', 'Chaya Malvin', 'chaya@malvin.com', 'Female', 'Dunnells & Duvall'),
('992437', '117014363', '1239350', '409492', 'Checked In', 'Yoko Fishburne', 'yoko@fishburne.com', 'Female', 'Sams Corner Store'),
('992512', '117014363', '1239425', '409492', 'Checked In', 'Helaine Halter', 'hhalter@yahoo.com', 'Male', 'Lippitt'),
('992532', '117014363', '1239445', '409492', 'Checked In', 'Trina Oto', 'trina@oto.com.au', 'Female', 'N Amer Plast & Chemls Co Inc'),
('992538', '117014363', '1239451', '409492', 'Checked In', 'Xochitl Discipio', 'xdiscipio@gmail.com', 'Female', 'Ravaal Enterprises Inc'),
('992552', '117014363', '1239465', '409492', 'Not Attending', 'Verdell Garness', 'verdell.garness@yahoo.com', 'Male', 'Ronald Massingill Pc'),
('992575', '1214065480', '1239488', '233005', 'Attending', 'Shawn Vugteveen', 'svugteveen@vugteveen.net.au', 'Male', 'Shine'),
('992635', '1214065480', '1239548', '233005', 'Checked In', 'Brett Mccullan', 'brett.mccullan@mccullan.com', 'Female', 'Five Star Limousines Of Tx Inc'),
('992682', '1214065480', '1239595', '233005', 'Attending', 'Veronika Inouye', 'vinouye@aol.com', 'Female', 'C 4 Network Inc'),
('992737', '1214065480', '1239650', '233005', 'Not Attending', 'Fairy Burket', 'fairy_burket@burket.com.au', 'Female', 'Walker & Brehn Pa'),
('992747', '1214065480', '1239660', '233005', 'Not Attending', 'Theodora Restrepo', 'theodora.restrepo@restrepo.com', 'Male', 'Kleri'),
('992859', '583031721', '1239772', '439150', 'Checked In', 'Linwood Wessner', 'linwood.wessner@hotmail.com', 'Male', 'Moorhead Associates Inc'),
('992869', '583031721', '1239782', '439150', 'Checked In', 'Tiera Frankel', 'tfrankel@aol.com', 'Male', 'Roland Ashcroft'),
('992877', '583031721', '1239790', '439150', 'Attending', 'Jeffrey Leuenberger', 'jleuenberger@yahoo.com', 'Female', 'Walter W Lawrence Ink'),
('992885', '583031721', '1239798', '439150', 'Attending', 'Yoko Fishburne', 'yoko@fishburne.com', 'Female', 'Sams Corner Store'),
('992927', '583031721', '1239840', '439150', 'Checked In', 'Roosevelt Hoffis', 'roosevelt.hoffis@aol.com', 'Female', 'Denbrook'),
('992938', '583031721', '1239851', '439150', 'Attending', 'Larae Gudroe', 'larae_gudroe@gmail.com', 'Female', 'Lehigh Furn Divsn Lehigh'),
('993008', '583031721', '1239921', '439150', 'Attending', 'Oretha Menter', 'oretha_menter@yahoo.com', 'Male', 'Custom Engineering Inc'),
('993056', '583031721', '1239969', '978340', 'Attending', 'Lizbeth Kohl', 'lizbeth@yahoo.com', 'Male', 'E T Balancing Co Inc'),
('993114', '583031721', '1240027', '978340', 'Checked In', 'Jonell Biasi', 'jbiasi@biasi.net.au', 'Male', 'Pestmaster Services Inc'),
('993229', '865511902', '1240142', '633875', 'Checked In', 'Golda Kaniecki', 'golda_kaniecki@yahoo.com', 'Female', 'Calaveras Prospect'),
('993234', '865511902', '1240147', '633875', 'Checked In', 'Sherman Mahmud', 'sherman@mahmud.com.au', 'Female', 'Gencheff'),
('993290', '1045269379', '1240203', '95944', 'Checked In', 'Tamie Hollimon', 'tamie@hollimon.com.au', 'Female', 'Credit Union Of The Rockies'),
('993384', '291301050', '1240297', '389980', 'Attending', 'Donte Kines', 'dkines@hotmail.com', 'Male', 'W Tc Industries Inc'),
('993449', '291301050', '1240362', '389980', 'Checked In', 'Rupert Hinkson', 'rupert_hinkson@hinkson.net.au', 'Male', 'Northwestern Mutual Life Ins'),
('993519', '291301050', '1240432', '389980', 'Not Attending', 'Jacqueline Rowling', 'jacqueline.rowling@yahoo.com', 'Female', 'John Hancock Mutl Life Ins Co'),
('993593', '106143301', '1240506', '38298', 'Checked In', 'Reena Maisto', 'reena@hotmail.com', 'Female', 'Lane Promotions'),
('993638', '106143301', '1240551', '38298', 'Checked In', 'Jamey Tetter', 'jamey.tetter@gmail.com', 'Male', 'Vicon Corporation'),
('993717', '523109505', '1240630', '1026774', 'Checked In', 'Francesco Kloos', 'fkloos@kloos.com.au', 'Female', 'Borough Clerk'),
('993743', '523109505', '1240656', '1026774', 'Checked In', 'Nancey Whal', 'nancey@whal.net.au', 'Male', 'National Mortgage Co'),
('993817', '523109505', '1240730', '1026774', 'Checked In', 'Francesco Kloos', 'fkloos@kloos.com.au', 'Male', 'Borough Clerk'),
('993887', '523109505', '1240800', '388643', 'Checked In', 'Jerry Dallen', 'jerry.dallen@yahoo.com', 'Male', 'Seashore Supply Co Waretown'),
('993944', '523109505', '1240857', '388643', 'Checked In', 'Helga Fredicks', 'helga_fredicks@yahoo.com', 'Male', 'Eis Environmental Engrs Inc'),
('994042', '1007266917', '1240955', '330750', 'Checked In', 'Matilda Peleg', 'matilda.peleg@hotmail.com', 'Female', 'A & D Pallet Co'),
('994082', '1007266917', '1240995', '330750', 'Checked In', 'Corazon Grafenstein', 'cgrafenstein@gmail.com', 'Female', 'Spieker Properties'),
('994177', '1007266917', '1241090', '1192377', 'Checked In', 'Maurine Yglesias', 'maurine_yglesias@yglesias.com', 'Male', 'Schultz'),
('994210', '543046167', '1241123', '194393', 'Checked In', 'Clement Chee', 'clement@hotmail.com', 'Male', 'Bark Eater Inn'),
('994302', '543046167', '1241215', '194393', 'Not Attending', 'Louann Susmilch', 'louann_susmilch@yahoo.com', 'Female', 'M Sorkin Sanford Associates'),
('994337', '1154797332', '1241250', '990173', 'Checked In', 'Dean Ketelsen', 'dean_ketelsen@gmail.com', 'Male', 'J M Custom Design Millwork'),
('994344', '1154797332', '1241257', '990173', 'Checked In', 'Shaun Rael', 'shaun.rael@rael.com.au', 'Female', 'House Of Ing'),
('994381', '1154797332', '1241294', '990173', 'Checked In', 'Ben Majorga', 'ben.majorga@hotmail.com', 'Female', 'Voyager Travel Service'),
('994391', '1154797332', '1241304', '990173', 'Checked In', 'Carin Georgiades', 'cgeorgiades@gmail.com', 'Male', 'Dgstv Diseases Cnslnts'),
('994453', '1154797332', '1241366', '585371', 'Not Attending', 'Devora Perez', 'devora_perez@perez.org', 'Female', 'Desco Equipment Corp'),
('994454', '245598360', '1241367', '105051', 'Checked In', 'Royal Costeira', 'royal_costeira@costeira.com.au', 'Female', 'Wynns Precision Inc Az Div'),
('994468', '245598360', '1241381', '105051', 'Checked In', 'Carmen Sweigard', 'csweigard@sweigard.com', 'Male', 'Maui Research & Technology Pk'),
('994477', '245598360', '1241390', '105051', 'Attending', 'Coletta Thro', 'coletta.thro@thro.net.au', 'Male', 'Hoffman'),
('994577', '245598360', '1241490', '105051', 'Attending', 'Leslie Threets', 'leslie@cox.net', 'Male', 'C W D C Metal Fabricators'),
('994672', '377639221', '1241585', '6925', 'Checked In', 'Mariann Bilden', 'mariann.bilden@aol.com', 'Male', 'H P G Industrys Inc'),
('994708', '377639221', '1241621', '6925', 'Checked In', 'Gregoria Pawlowicz', 'gpawlowicz@yahoo.com', 'Male', 'Oh My Goodknits Inc'),
('994801', '377639221', '1241714', '6925', 'Checked In', 'Myra Munns', 'mmunns@cox.net', 'Male', 'Anker Law Office'),
('994863', '377639221', '1241776', '243564', 'Checked In', 'Sheridan Zane', 'sheridan.zane@zane.com', 'Female', 'Kentucky Tennessee Clay Co'),
('995055', '1157054914', '1241968', '1138048', 'Checked In', 'Paulina Maker', 'paulina_maker@maker.net.au', 'Male', 'Swanson Peterson Fnrl Home Inc'),
('995065', '1157054914', '1241978', '1138048', 'Checked In', 'Shalon Shadrick', 'shalon@cox.net', 'Female', 'Germer And Gertz Llp'),
('995077', '1157054914', '1241990', '1138048', 'Checked In', 'Michael Orehek', 'michael_orehek@gmail.com', 'Female', 'Robinson'),
('995117', '825471001', '1242030', '715799', 'Checked In', 'Lemuel Latzke', 'lemuel.latzke@gmail.com', 'Female', 'Computer Repair Service'),
('995402', '1009915901', '1242315', '278917', 'Not Attending', 'Lauran Huntsberger', 'lhuntsberger@huntsberger.net.au', 'Male', 'Triangle Engineering Inc'),
('995435', '1009915901', '1242348', '1026693', 'Checked In', 'Samira Heninger', 'sheninger@yahoo.com', 'Female', 'Alb Inc'),
('994637', '245598360', '1241550', '105051', 'Checked In', 'Jose Stockham', 'jose@yahoo.com', 'Female', 'Tri State Refueler Co'),
('989928', '697723846', '1236841', '828435', 'Attending', 'Minna Amigon', 'minna_amigon@yahoo.com', 'Female', 'Dorl'),
('994398', '1154797332', '1241311', '990173', 'Checked In', 'Jerrod Luening', 'jerrod_luening@luening.com.au', 'Female', 'Mcmillan'),
('989967', '221778322', '1236880', '256715', 'Checked In', 'Cassie Soros', 'csoros@gmail.com', 'Female', 'A B C Tank Co'),
('988848', '749661691', '1235761', '873533', 'Checked In', 'Alfreda Delsoin', 'adelsoin@yahoo.com', 'Female', 'Harris'),
('991073', '874933586', '1237986', '548835', 'Not Attending', 'Gerald Kloepper', 'gerald@yahoo.com', 'Female', 'Pleasantville Finance Dept'),
('993960', '523109505', '1240873', '388643', 'Checked In', 'Katlyn Flitcroft', 'kflitcroft@hotmail.com', 'Male', 'Bill'),
('992252', '1023648806', '1239165', '258406', 'Checked In', 'Bettye Meray', 'bmeray@yahoo.com', 'Male', 'Sako'),
('992835', '1214065480', '1239748', '852837', 'Attending', 'Gwenn Suffield', 'gwenn_suffield@suffield.org', 'Female', 'Deltam Systems Inc'),
('994678', '377639221', '1241591', '6925', 'Attending', 'Jacquelyne Rosso', 'jacquelyne.rosso@yahoo.com', 'Male', 'Barragar'),
('987898', '111752105', '1234811', '435351', 'Checked In', 'Krissy Rauser', 'krauser@cox.net', 'Male', 'Anderson'),
('991716', '81648815', '1238629', '274081', 'Checked In', 'Georgeanna Silverst', 'georgeanna@silverstone.net.au', 'Female', 'Emess Professional Svces'),
('992248', '1023648806', '1239161', '258406', 'Checked In', 'Lisbeth Agney', 'lisbeth.agney@agney.net.au', 'Female', 'Dynetics'),
('987746', '1155628953', '1234659', '1029208', 'Attending', 'Francine Vocelka', 'francine_vocelka@vocelka.com', 'Female', 'Cascade Realty Advisors Inc'),
('993001', '583031721', '1239914', '439150', 'Attending', 'Margart Meisel', 'margart_meisel@yahoo.com', 'Female', 'Yeates'),
('990835', '237641156', '1237748', '788105', 'Checked In', 'Linette Summerfield', 'linette.summerfield@hotmail.com', 'Female', 'Mortenson Broadcasting Co'),
('995304', '1009915901', '1242217', '278917', 'Checked In', 'Barrett Toyama', 'barrett.toyama@toyama.org', 'Female', 'Case Foundation Co'),
('993417', '291301050', '1240330', '389980', 'Checked In', 'Edison Sumera', 'edison.sumera@sumera.net.au', 'Male', 'Mcclier Corp'),
('994415', '1154797332', '1241328', '585371', 'Checked In', 'Loreta Timenez', 'loreta.timenez@hotmail.com', 'Male', 'Kaminski'),
('991270', '1076389159', '1238183', '602615', 'Checked In', 'Oretha Menter', 'oretha_menter@yahoo.com', 'Female', 'Custom Engineering Inc'),
('991508', '1045174718', '1238421', '1046760', 'Checked In', 'Son Magnotta', 'son.magnotta@magnotta.net.au', 'Female', 'Lisko'),
('994299', '543046167', '1241212', '194393', 'Not Attending', 'Nan Koppinger', 'nan@koppinger.com', 'Female', 'Shimotani'),
('992555', '1214065480', '1239468', '233005', 'Checked In', 'Paris Wide', 'paris@hotmail.com', 'Male', 'Gehring Pumps Inc'),
('994722', '377639221', '1241635', '6925', 'Checked In', 'Lashawn Urion', 'lurion@yahoo.com', 'Female', 'U Stor'),
('993902', '523109505', '1240815', '388643', 'Checked In', 'Claudia Gawrych', 'claudia@gmail.com', 'Female', 'Abe Goldstein Ofc Furn'),
('990062', '221778322', '1236975', '1045956', 'Checked In', 'Bettina Diciano', 'bdiciano@diciano.com.au', 'Female', 'Greater Ky Corp'),
('991016', '874933586', '1237929', '548835', 'Checked In', 'Honey Lymaster', 'honey_lymaster@lymaster.net.au', 'Male', 'Joiner & Goudeau Law Offices'),
('995277', '1009915901', '1242190', '278917', 'Checked In', 'Stevie Hallo', 'stevie.hallo@hotmail.com', 'Male', 'Landrum Temporary Services'),
('990789', '237641156', '1237702', '788105', 'Checked In', 'Annice Kunich', 'annice_kunich@kunich.net.au', 'Male', 'Hassanein'),
('993276', '1045269379', '1240189', '95944', 'Checked In', 'Fatima Saylors', 'fsaylors@saylors.org', 'Male', 'Stanton'),
('992404', '117014363', '1239317', '409492', 'Checked In', 'Catherin Aguele', 'caguele@gmail.com', 'Male', 'Hanna'),
('990091', '221778322', '1237004', '1045956', 'Checked In', 'Cherilyn Fraize', 'cherilyn_fraize@fraize.net.au', 'Female', 'Witchs Brew'),
('995426', '1009915901', '1242339', '1026693', 'Checked In', 'Tyisha Layland', 'tyisha@yahoo.com', 'Female', 'Freitag Pc'),
('992717', '1214065480', '1239630', '233005', 'Attending', 'Mose Vonseggern', 'mose_vonseggern@hotmail.com', 'Male', 'Art Concepts'),
('994419', '1154797332', '1241332', '585371', 'Checked In', 'Alpha Palaia', 'alpha@yahoo.com', 'Male', 'Stoffer'),
('995249', '825471001', '1242162', '697937', 'Checked In', 'Michael Orehek', 'michael_orehek@gmail.com', 'Female', 'Robinson');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `Event_ID` varchar(11) PRIMARY KEY,
  `Organizer_ID` varchar(12) DEFAULT NULL,
  `Organizer` varchar(51) DEFAULT NULL,
  `Event` varchar(32) DEFAULT NULL,
  `Status` varchar(9) DEFAULT NULL,
  `Venue_ID` varchar(8) DEFAULT NULL,
  `Created` varchar(16) DEFAULT NULL,
  `Changed` varchar(16) DEFAULT NULL
   CONSTRAINT V_ID_FK
   FOREIGN KEY (Venue_ID)
   REFERENCES venues (Venue_ID)
   ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `events`
--

INSERT INTO `events` VALUES
('1155628953', '84595211555', 'DJ Dan Murphy', 'The??Zylker??Festivities', 'live', '425994', '01-01-2020 16:52', '06-02-2020 15:00'),
('731054143', '7832240572', 'BCI', 'In Observance of??Zylker', 'live', '2616961', '25-12-2019 16:05', '06-02-2020 14:00'),
('447664537', '28660880543', 'DEG Presents', 'The??Zylker??Festival', 'live', '10705879', '25-12-2019 09:02', '06-02-2020 10:00'),
('151918584', '18241043708', 'Avant Gardner', 'The??Zylker??Performance', 'live', '10705879', '19-12-2019 05:39', '06-02-2020 12:00'),
('111752105', '28660884571', 'Society for the Promotion', 'A Spree of??Zylker', 'live', '1562740', '26-12-2019 16:03', '06-02-2020 14:00'),
('1066714356', '7828212572', 'Indian Youth Club (IYC)', 'Zylker??Blast', 'live', '4642828', '16-12-2019 17:07', '06-02-2020 12:00'),
('265398704', '61087860435', 'BCH Global', 'Zylker??Jubilee', 'live', '', '16-12-2019 07:16', '06-02-2020 12:00'),
('749661691', '61087860435', 'BCH Global', 'Zylker??Blowout', 'live', '7751529', '16-12-2019 01:03', '06-02-2020 13:00'),
('172609908', '7828212572', 'Indian Youth Club (IYC)', 'Zylru', 'completed', '8664408', '05-11-2019 20:43', '13-01-2020 20:43'),
('887364780', '6351671633', 'Shweta Doshi', 'The??Zylker??Ceremony', 'completed', '8664408', '26-09-2019 04:44', '04-12-2019 04:44'),
('923551703', '28549544609', 'Southern Entertainment', 'Zylkerathon', 'completed', '8664408', '23-09-2019 03:33', '17-11-2019 03:33'),
('1213789960', '19690491312', 'MR. G.S Dhillon (Udan Media And Communications Pvt)', 'The??Zylker??Occasion', 'completed', '8664408', '09-09-2019 06:00', '22-10-2019 06:00'),
('697723846', '19690491312', 'MR. G.S Dhillon (Udan Media And Communications Pvt)', 'Zylker??Conference', 'completed', '', '02-09-2019 19:17', '03-11-2019 19:17'),
('221778322', '28660880543', 'DEG Presents', 'A Celebration of Life and??Zylker', 'completed', '8129289', '31-08-2019 16:22', '09-11-2019 16:22'),
('750924270', '11097772737', 'Rainbow Serpent Festival', 'Celebration of??Zylker', 'completed', '11106889', '08-08-2019 19:06', '26-09-2019 19:06'),
('8660022', '7828212572', 'Indian Youth Club (IYC)', 'The??Zylker??Miracle', 'completed', '1581407', '01-07-2019 00:57', '19-08-2019 00:57'),
('65657239', '75983295081', 'For The Love', 'Zylker??Super Happy Fun Time!!', 'completed', '9954367', '04-07-2019 12:04', '29-08-2019 12:04'),
('237641156', '80441599991', 'Paul Strange', 'An Occasion for??Zylker', 'completed', '4952946', '20-06-2019 17:09', '08-08-2019 17:09'),
('681722052', '28549544609', 'Southern Entertainment', 'Zylker??Ball', 'completed', '8129289', '21-06-2019 21:22', '10-08-2019 21:22'),
('874933586', '80441599991', 'Paul Strange', 'The??Zylker??Honors', 'completed', '4642828', '02-06-2019 03:52', '31-07-2019 03:52'),
('356378035', '6351671633', 'Shweta Doshi', 'Zylker??Shindig', 'completed', '8664408', '16-05-2019 00:18', '20-07-2019 00:18'),
('83587551', '84595211555', 'DJ Dan Murphy', 'Ceremony Worthy of??Zylker', 'completed', '3605834', '25-03-2019 19:14', '14-05-2019 19:14'),
('1076389159', '75983295081', 'For The Love', 'Zylker??Con', 'completed', '9242080', '18-03-2019 16:56', '29-04-2019 16:56'),
('1204730965', '28549544609', 'Southern Entertainment', 'Zylker??Bash', 'completed', '7239350', '17-03-2019 07:23', '13-05-2019 07:23'),
('1045174718', '18241043708', 'Avant Gardner', 'A Triumph of??Zylker', 'completed', '7239350', '08-03-2019 03:29', '23-05-2019 03:29'),
('1110067501', '28549544609', 'Southern Entertainment', 'Zylker??Charity Fundraiser', 'completed', '9388629', '24-02-2019 21:57', '23-04-2019 21:57'),
('81648815', '18241043708', 'Avant Gardner', 'Zylkerella', 'completed', '8134685', '03-03-2019 00:30', '22-04-2019 00:30'),
('15246325221', '80441599991', 'Paul Strange', 'The??Zylker??Awards', 'completed', '8664408', '17-02-2019 07:03', '10-04-2019 07:03'),
('1023648806', '61087860435', 'BCH Global', 'Zylkeraroo', 'completed', '425994', '23-02-2019 04:55', '12-04-2019 04:55');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Order_ID` varchar(8) PRIMARY KEY,
  `Event_ID` varchar(10) NOT NULL,
  `Status` varchar(6) NOT NULL,
  `Name` varchar(21) NOT NULL,
  `Created` varchar(19) NOT NULL,
  `Changed` varchar(19) NOT NULL
   CONSTRAINT E_ID_FK
   FOREIGN KEY (Event_ID)
   REFERENCES events (Event_ID)
   ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Order_ID`, `Event_ID`, `Status`, `Name`, `Created`, `Changed`) VALUES
('1234567', '1155628953', 'placed', 'Virgilio Phay', '0007-07-27 11:06:05', '0007-07-27 11:06:05'),
('1234568', '1154797332', 'placed', 'Ora Handrick', '12-02-2020 20:00', '10-02-2020 23:03'),
('1234569', '1155628953', 'placed', 'Dana Ladeau', '0008-07-26 20:41:41', '0008-07-26 20:41:41'),
('1234570', '291301050', 'placed', 'Howard Paulas', '0006-07-27 20:10:12', '0006-07-27 20:10:12'),
('1234571', '1066714356', 'placed', 'Sharita Kruk', '09-02-2020 06:27', '08-02-2020 03:23'),
('1234572', '1009915901', 'placed', 'Dahlia Tummons', '07-02-2020 22:26', '07-02-2020 20:24'),
('1234573', '1214065480', 'placed', 'Mireya Frerking', '0007-07-27 05:37:31', '0007-07-27 05:37:31'),
('1234574', '1214065470', 'placed', 'Elenora Handler', '13-02-2020 12:15', '09-02-2020 17:42'),
('1234575', '1155628953', 'placed', 'Dorothy Chesterfield', '13-02-2020 08:33', '11-02-2020 18:08'),
('1234576', '1155628953', 'placed', 'Sage Wieser', '10-02-2020 12:21', '08-02-2020 15:07'),
('1234577', '65657239', 'placed', 'Leigha Capelli', '0009-07-26 12:11:12', '0009-07-26 12:11:12'),
('1234578', '1155628953', 'placed', 'Merrilee Fajen', '0006-07-27 08:18:03', '0006-07-27 08:18:03'),
('1234579', '245698765', 'placed', 'Lawrence Lorens', '12-02-2020 11:47', '10-02-2020 22:36'),
('1234580', '1155628953', 'placed', 'Nan Koppinger', '0007-07-27 15:24:07', '0007-07-27 15:24:07'),
('1234581', '291301050', 'placed', 'Ronald Gayner', '12-02-2020 04:50', '10-02-2020 00:24'),
('1234582', '1155628953', 'placed', 'Helga Fredicks', '13-02-2020 13:48', '09-02-2020 08:49'),
('1234583', '1155628953', 'placed', 'Ashton Sutherburg', '10-02-2020 11:57', '08-02-2020 16:30'),
('1234584', '1155628953', 'placed', 'German Dones', '0009-07-26 14:26:14', '0009-07-26 14:26:14'),
('1234585', '1155628953', 'placed', 'Stephaine Vinning', '09-02-2020 16:39', '09-02-2020 06:10'),
('1234586', '1155628953', 'placed', 'Justine Mugnolo', '0008-07-26 21:28:30', '0008-07-26 21:28:30'),
('1234587', '1155628953', 'placed', 'Ettie Hoopengardner', '0006-07-27 18:30:08', '0006-07-27 18:30:08'),
('1234588', '1155628953', 'placed', 'Grover Reynolds', '0008-07-26 02:06:58', '0008-07-26 02:06:58'),
('1234589', '1155628953', 'placed', 'Stevie Westerbeck', '13-02-2020 03:56', '10-02-2020 12:58'),
('1234590', '1155628953', 'placed', 'Minna Amigon', '0008-07-26 07:00:54', '0008-07-26 07:00:54'),
('1234591', '1155628953', 'placed', 'Tamar Hoogland', '11-02-2020 06:11', '07-02-2020 20:42'),
('1234592', '1155628953', 'placed', 'Keva Moehring', '12-02-2020 19:11', '11-02-2020 18:57'),
('1234593', '1155628953', 'placed', 'Cammy Albares', '12-02-2020 12:12', '10-02-2020 01:55'),
('1234594', '1155628953', 'placed', 'Lynda Lazzaro', '08-02-2020 07:38', '08-02-2020 00:02'),
('1234595', '1155628953', 'placed', 'Julieta Cropsey', '12-02-2020 11:35', '09-02-2020 02:37'),
('1234596', '1155628953', 'placed', 'Clorinda Heimann', '0007-07-27 01:32:45', '0007-07-27 01:32:45'),
('1234597', '1155628953', 'placed', 'Krissy Rauser', '12-02-2020 22:16', '12-02-2020 00:07'),
('1234598', '1155628953', 'placed', 'Quinn Weissbrodt', '11-02-2020 13:00', '07-02-2020 18:50'),
('1234599', '1155628953', 'placed', 'Linsey Gedman', '0007-07-27 10:17:56', '0007-07-27 10:17:56'),
('1234600', '1155628953', 'placed', 'Theodora Restrepo', '11-02-2020 09:12', '07-02-2020 17:20'),
('1234601', '1155628953', 'placed', 'Gertude Witten', '09-02-2020 02:45', '08-02-2020 05:56'),
('1234602', '1155628953', 'placed', 'Emeline Sotelo', '0008-07-26 04:55:46', '0008-07-26 04:55:46'),
('1234603', '1155628953', 'placed', 'Jenelle Regusters', '0006-07-27 08:03:45', '0006-07-27 08:03:45'),
('1234604', '1155628953', 'placed', 'Carli Bame', '09-02-2020 00:12', '08-02-2020 23:25'),
('1234605', '1155628953', 'placed', 'Brigette Breckenstein', '0009-07-26 05:58:12', '0009-07-26 05:58:12'),
('1234606', '1155628953', 'placed', 'Helga Fredicks', '0009-07-26 07:49:23', '0009-07-26 07:49:23'),
('1234607', '1155628953', 'placed', 'Kristian Ellerbusch', '0006-07-27 17:51:07', '0006-07-27 17:51:07'),
('1234608', '1155628953', 'placed', 'Donette Foller', '0006-07-27 22:37:24', '0006-07-27 22:37:24'),
('1234609', '1155628953', 'placed', 'Mari Lueckenbach', '0008-07-26 05:26:26', '0008-07-26 05:26:26'),
('1234610', '1155628953', 'placed', 'Lizbeth Kohl', '11-02-2020 17:59', '11-02-2020 10:52'),
('1234611', '1155628953', 'placed', 'Amos Limberg', '11-02-2020 08:07', '09-02-2020 05:19'),
('1234612', '1155628953', 'placed', 'Stephaine Vinning', '08-02-2020 23:40', '08-02-2020 06:23'),
('1234613', '1155628953', 'placed', 'Lorrie Nestle', '11-02-2020 19:51', '11-02-2020 15:59'),
('1234614', '1155628953', 'placed', 'Galen Cantres', '09-02-2020 21:53', '08-02-2020 07:18'),
('1234615', '1155628953', 'placed', 'Kristel Ehmann', '09-02-2020 10:05', '08-02-2020 06:39'),
('1234616', '1155628953', 'placed', 'Tawna Buvens', '11-02-2020 17:11', '08-02-2020 02:39'),
('1234617', '1155628953', 'placed', 'Zana Ploszaj', '11-02-2020 17:58', '10-02-2020 09:31'),
('1234618', '1155628953', 'placed', 'Halina Dellen', '0006-07-27 07:30:33', '0006-07-27 07:30:33'),
('1234619', '1155628953', 'placed', 'Leatha Hagele', '10-02-2020 01:23', '09-02-2020 21:22'),
('1234620', '1155628953', 'placed', 'Gayla Schnitzler', '11-02-2020 12:19', '10-02-2020 02:59'),
('1234621', '1155628953', 'placed', 'Kayleigh Lace', '12-02-2020 17:05', '08-02-2020 04:48'),
('1234622', '1155628953', 'placed', 'Iola Baird', '0007-07-27 22:45:29', '0007-07-27 22:45:29'),
('1234623', '1155628953', 'placed', 'Jutta Amyot', '10-02-2020 06:00', '10-02-2020 04:21'),
('1234624', '1155628953', 'placed', 'Jess Chaffins', '11-02-2020 00:47', '10-02-2020 09:48'),
('1234625', '1155628953', 'placed', 'Golda Kaniecki', '0009-07-26 01:42:23', '0009-07-26 01:42:23'),
('1234626', '1155628953', 'placed', 'Dorathy Miskelly', '10-02-2020 05:13', '08-02-2020 23:27'),
('1234627', '1155628953', 'placed', 'Noah Kalafatis', '14-02-2020 15:46', '09-02-2020 17:21'),
('1234628', '1155628953', 'placed', 'Alonzo Polek', '10-02-2020 17:34', '09-02-2020 22:28'),
('1234629', '1155628953', 'placed', 'Inocencia Angeron', '08-02-2020 14:47', '07-02-2020 19:19'),
('1234630', '1155628953', 'placed', 'Jesus Merkt', '0008-07-26 01:13:22', '0008-07-26 01:13:22'),
('1234631', '1155628953', 'placed', 'Hermila Thyberg', '09-02-2020 17:13', '08-02-2020 09:55'),
('1234632', '1155628953', 'placed', 'Thaddeus Ankeny', '13-02-2020 08:18', '11-02-2020 14:15'),
('1234633', '1155628953', 'placed', 'Ira Zihal', '08-02-2020 12:37', '08-02-2020 11:45'),
('1234634', '1155628953', 'placed', 'Tarra Nachor', '14-02-2020 06:12', '14-02-2020 01:50'),
('1234635', '1155628953', 'placed', 'Kerry Theodorov', '09-02-2020 05:18', '07-02-2020 22:23'),
('1234636', '1155628953', 'placed', 'Anastacia Carranzo', '0008-07-26 10:20:36', '0008-07-26 10:20:36'),
('1234637', '1155628953', 'placed', 'Evangelina Radde', '0009-07-26 15:21:15', '0009-07-26 15:21:15'),
('1234638', '1155628953', 'placed', 'Johanna Saffer', '0007-07-27 08:48:56', '0007-07-27 08:48:56'),
('1234639', '1155628953', 'placed', 'Cary Orazine', '12-02-2020 15:40', '10-02-2020 21:06'),
('1234640', '1155628953', 'placed', 'Portia Stimmel', '08-02-2020 08:43', '08-02-2020 01:28'),
('1234641', '1155628953', 'placed', 'Virgilio Phay', '14-02-2020 12:10', '09-02-2020 11:42'),
('1234642', '1155628953', 'placed', 'Gail Similton', '0008-07-26 10:27:08', '0008-07-26 10:27:08'),
('1234643', '1155628953', 'placed', 'Ma Layous', '11-02-2020 20:50', '11-02-2020 00:28'),
('1234644', '1155628953', 'placed', 'Elin Koerner', '0009-07-26 09:54:42', '0009-07-26 09:54:42'),
('1234645', '1155628953', 'placed', 'Temeka Bodine', '0007-07-27 21:42:19', '0007-07-27 21:42:19'),
('1234646', '1155628953', 'placed', 'Lachelle Andrzejewski', '10-02-2020 14:35', '09-02-2020 18:22'),
('1234647', '1155628953', 'placed', 'Ben Majorga', '13-02-2020 22:14', '08-02-2020 02:47'),
('1234648', '1155628953', 'placed', 'Heike Berganza', '0007-07-27 18:42:30', '0007-07-27 18:42:30'),
('1234649', '1155628953', 'placed', 'Veronika Inouye', '08-02-2020 17:53', '08-02-2020 10:53'),
('1234650', '1155628953', 'placed', 'Verdell Garness', '0006-07-27 09:55:34', '0006-07-27 09:55:34'),
('1234651', '1155628953', 'placed', 'Ernest Syrop', '12-02-2020 03:26', '11-02-2020 05:09'),
('1234652', '1155628953', 'placed', 'Kasandra Semidey', '14-02-2020 17:06', '11-02-2020 07:12'),
('1234653', '1155628953', 'placed', 'Leatha Block', '08-02-2020 14:24', '07-02-2020 23:27'),
('1234654', '1155628953', 'placed', 'Stevie Hallo', '0009-07-26 01:19:00', '0009-07-26 01:19:00'),
('1234655', '1155628953', 'placed', 'Aide Ghera', '10-02-2020 16:09', '10-02-2020 05:08'),
('1234656', '1155628953', 'placed', 'Yolando Luczki', '09-02-2020 02:28', '08-02-2020 05:54'),
('1234657', '1155628953', 'placed', 'Peggie Sturiale', '14-02-2020 05:53', '12-02-2020 04:14'),
('1234658', '1155628953', 'placed', 'Glynda Sanzenbacher', '13-02-2020 04:51', '09-02-2020 18:59'),
('1234659', '1155628953', 'placed', 'Francine Vocelka', '0009-07-26 04:50:27', '0009-07-26 04:50:27'),
('1234660', '1155628953', 'placed', 'Kate Keneipp', '12-02-2020 03:52', '09-02-2020 22:29'),
('1234661', '1155628953', 'placed', 'Corrina Lindblom', '10-02-2020 22:35', '07-02-2020 17:13'),
('1234662', '1155628953', 'placed', 'Buck Pascucci', '14-02-2020 00:54', '13-02-2020 08:44'),
('1234663', '1155628953', 'placed', 'Annita Lek', '11-02-2020 13:13', '10-02-2020 20:48'),
('1234664', '1155628953', 'placed', 'Peggie Sturiale', '0007-07-27 01:55:58', '0007-07-27 01:55:58'),
('1234665', '1155628953', 'placed', 'Earlean Suffern', '0007-07-27 09:15:49', '0007-07-27 09:15:49'),
('1234666', '1155628953', 'placed', 'Larae Gudroe', '0006-07-27 13:23:14', '0006-07-27 13:23:14'),
('1234667', '1155628953', 'placed', 'Belen Strassner', '10-02-2020 06:31', '09-02-2020 01:13'),
('1234668', '1155628953', 'placed', 'Desiree Englund', '13-02-2020 19:04', '10-02-2020 10:37'),
('1234669', '1155628953', 'placed', 'Tamar Hoogland', '10-02-2020 12:38', '08-02-2020 09:42'),
('1234670', '1155628953', 'placed', 'Florinda Gudgel', '14-02-2020 09:18', '13-02-2020 07:02'),
('1234671', '1155628953', 'placed', 'Darnell Moothart', '0006-07-27 12:55:34', '0006-07-27 12:55:34'),
('1234672', '1155628953', 'placed', 'Alyce Arias', '0009-07-26 05:19:00', '0009-07-26 05:19:00'),
('1234673', '1155628953', 'placed', 'Glory Carlo', '13-02-2020 16:13', '07-02-2020 17:34'),
('1234674', '1155628953', 'placed', 'Patria Popa', '09-02-2020 14:38', '09-02-2020 10:46'),
('1234675', '1155628953', 'placed', 'Felicitas Gong', '14-02-2020 21:48', '14-02-2020 06:26'),
('1234676', '1155628953', 'placed', 'Kanisha Reyelts', '08-02-2020 14:48', '08-02-2020 06:06'),
('1234677', '1155628953', 'placed', 'Danica Bruschke', '12-02-2020 14:54', '09-02-2020 06:54'),
('1234678', '1155628953', 'placed', 'Lenna Newville', '0007-07-27 08:41:36', '0007-07-27 08:41:36'),
('1234679', '1155628953', 'placed', 'Claudia Gawrych', '09-02-2020 18:25', '08-02-2020 20:26'),
('1234680', '1155628953', 'placed', 'Ruth Niglio', '0006-07-27 22:01:19', '0006-07-27 22:01:19'),
('1234681', '1155628953', 'placed', 'Kristofer Bennick', '14-02-2020 16:09', '09-02-2020 23:15'),
('1234682', '1155628953', 'placed', 'Cherry Roh', '11-02-2020 05:01', '10-02-2020 10:25'),
('1234683', '1155628953', 'placed', 'Lavonda Hengel', '08-02-2020 12:39', '08-02-2020 00:21'),
('1234684', '1155628953', 'placed', 'Goldie Schirpke', '0008-07-26 04:54:21', '0008-07-26 04:54:21'),
('1234685', '1155628953', 'placed', 'Lynelle Auber', '11-02-2020 20:06', '09-02-2020 22:23'),
('1234686', '1155628953', 'placed', 'Norah Daleo', '11-02-2020 12:57', '09-02-2020 20:30'),
('1234687', '1155628953', 'placed', 'Hoa Sarao', '13-02-2020 21:17', '11-02-2020 11:01'),
('1234688', '1155628953', 'placed', 'Magnolia Overbough', '10-02-2020 15:52', '09-02-2020 14:30'),
('1234689', '1155628953', 'placed', 'Tammara Wardrip', '08-02-2020 13:28', '07-02-2020 22:40'),
('1234690', '1155628953', 'placed', 'Pearly Hedstrom', '0006-07-27 11:56:14', '0006-07-27 11:56:14'),
('1234691', '1155628953', 'placed', 'Chanel Caudy', '07-02-2020 17:29', '07-02-2020 17:04'),
('1234692', '1155628953', 'placed', 'Patria Popa', '12-02-2020 15:53', '08-02-2020 16:36'),
('1234693', '1155628953', 'placed', 'Oren Lobosco', '10-02-2020 17:35', '09-02-2020 03:52'),
('1234694', '1155628953', 'placed', 'Magnolia Overbough', '10-02-2020 04:36', '08-02-2020 00:17'),
('1234695', '1155628953', 'placed', 'Zena Daria', '11-02-2020 11:09', '09-02-2020 23:18'),
('1234696', '1155628953', 'placed', 'Scot Jarva', '12-02-2020 20:41', '11-02-2020 15:47'),
('1234697', '1155628953', 'placed', 'Dalene Riden', '13-02-2020 21:22', '08-02-2020 07:22'),
('1234698', '1155628953', 'placed', 'Carri Palaspas', '11-02-2020 04:51', '09-02-2020 12:51'),
('1234699', '1155628953', 'placed', 'Suzan Landa', '10-02-2020 21:36', '09-02-2020 23:50'),
('1234700', '1155628953', 'placed', 'Bobbye Rhym', '08-02-2020 10:11', '08-02-2020 07:29'),
('1234701', '1155628953', 'placed', 'Natalie Fern', '14-02-2020 19:35', '08-02-2020 03:03'),
('1234702', '1155628953', 'placed', 'Hillary Skulski', '0007-07-27 14:57:17', '0007-07-27 14:57:17'),
('1234703', '1155628953', 'placed', 'Cherry Lietz', '0006-07-27 22:13:00', '0006-07-27 22:13:00'),
('1234704', '1155628953', 'placed', 'Flo Bookamer', '0006-07-27 18:14:22', '0006-07-27 18:14:22'),
('1234705', '1155628953', 'placed', 'Albina Glick', '12-02-2020 23:20', '09-02-2020 17:35'),
('1234706', '1155628953', 'placed', 'Linsey Gedman', '09-02-2020 03:40', '07-02-2020 18:06'),
('1234707', '1155628953', 'placed', 'Amos Limberg', '0007-07-27 14:41:56', '0007-07-27 14:41:56'),
('1234708', '1155628953', 'placed', 'Hermila Thyberg', '10-02-2020 09:46', '08-02-2020 20:43'),
('1234709', '1155628953', 'placed', 'Page Entzi', '09-02-2020 11:03', '09-02-2020 07:04'),
('1234710', '1155628953', 'placed', 'Cathrine Pontoriero', '0006-07-27 23:43:35', '0006-07-27 23:43:35'),
('1234711', '1155628953', 'placed', 'Jill Davoren', '12-02-2020 12:30', '08-02-2020 21:50'),
('1234712', '1155628953', 'placed', 'Timothy Mulqueen', '0008-07-26 22:28:25', '0008-07-26 22:28:25'),
('1234713', '1155628953', 'placed', 'Shawnta Woodhams', '08-02-2020 10:39', '08-02-2020 06:23'),
('1234714', '1155628953', 'placed', 'Ryann Riston', '13-02-2020 12:27', '08-02-2020 11:55'),
('1234715', '1155628953', 'placed', 'Reita Leto', '14-02-2020 07:01', '14-02-2020 05:52'),
('1234716', '1155628953', 'placed', 'Rebeca Baley', '0006-07-27 00:02:59', '0006-07-27 00:02:59'),
('1234717', '1155628953', 'placed', 'Aliza Baltimore', '12-02-2020 05:38', '10-02-2020 07:52'),
('1234718', '1155628953', 'placed', 'Laticia Merced', '11-02-2020 01:54', '07-02-2020 18:24'),
('1234719', '1155628953', 'placed', 'Annita Lek', '12-02-2020 20:06', '10-02-2020 19:04'),
('1234720', '1155628953', 'placed', 'Trinidad Mcrae', '11-02-2020 22:10', '11-02-2020 14:07'),
('1234721', '1155628953', 'placed', 'Ryan Harnos', '09-02-2020 11:30', '07-02-2020 17:59'),
('1234722', '1155628953', 'placed', 'Delfina Binnie', '0009-07-26 06:29:15', '0009-07-26 06:29:15'),
('1234723', '1155628953', 'placed', 'Stevie Westerbeck', '0009-07-26 16:32:44', '0009-07-26 16:32:44'),
('1234724', '1155628953', 'placed', 'Tamekia Kajder', '14-02-2020 10:12', '12-02-2020 15:45'),
('1234725', '1155628953', 'placed', 'Catalina Tillotson', '08-02-2020 03:13', '07-02-2020 17:59'),
('1234726', '1155628953', 'placed', 'Carman Robasciotti', '0006-07-27 14:02:14', '0006-07-27 14:02:14'),
('1234727', '1155628953', 'placed', 'Sue Kownacki', '0009-07-26 08:07:35', '0009-07-26 08:07:35'),
('1234728', '1155628953', 'placed', 'Lynelle Koury', '10-02-2020 09:52', '08-02-2020 21:34'),
('1234729', '1155628953', 'placed', 'Pa Badgero', '08-02-2020 04:12', '07-02-2020 21:49'),
('1234730', '1155628953', 'placed', 'Omega Mangino', '12-02-2020 08:44', '08-02-2020 20:47'),
('1234731', '1155628953', 'placed', 'Ettie Luckenbach', '10-02-2020 14:47', '08-02-2020 09:45'),
('1234732', '1155628953', 'placed', 'Jade Farrar', '14-02-2020 21:47', '11-02-2020 16:07'),
('1234733', '1155628953', 'placed', 'Fanny Stoneking', '0006-07-27 05:33:34', '0006-07-27 05:33:34'),
('1234734', '1155628953', 'placed', 'Glendora Sarbacher', '09-02-2020 07:45', '08-02-2020 03:38'),
('1234735', '1155628953', 'placed', 'Halina Dellen', '08-02-2020 10:33', '08-02-2020 00:00'),
('1234736', '1155628953', 'placed', 'Adaline Galagher', '0007-07-27 13:11:36', '0007-07-27 13:11:36'),
('1234737', '1155628953', 'placed', 'Albina Glick', '0008-07-26 14:03:59', '0008-07-26 14:03:59'),
('1234738', '1155628953', 'placed', 'Gerald Kloepper', '10-02-2020 03:37', '08-02-2020 11:22'),
('1234739', '1155628953', 'placed', 'Jamal Korczynski', '09-02-2020 11:42', '09-02-2020 11:42'),
('1234740', '1155628953', 'placed', 'Barbra Adkin', '0009-07-26 05:42:53', '0009-07-26 05:42:53'),
('1234741', '1155628953', 'placed', 'Jolanda Hanafan', '11-02-2020 05:32', '10-02-2020 00:29'),
('1234742', '1155628953', 'placed', 'Emelda Geffers', '14-02-2020 22:46', '07-02-2020 22:03'),
('1234743', '1155628953', 'placed', 'Osvaldo Falvey', '13-02-2020 14:59', '12-02-2020 21:22'),
('1234744', '1155628953', 'placed', 'Tegan Ebershoff', '09-02-2020 20:29', '08-02-2020 01:18'),
('1234745', '1155628953', 'placed', 'Jani Biddy', '11-02-2020 22:12', '07-02-2020 21:15'),
('1234746', '1155628953', 'placed', 'Jill Davoren', '13-02-2020 12:00', '12-02-2020 08:12'),
('1234747', '1155628953', 'placed', 'Leota Dilliard', '08-02-2020 03:14', '07-02-2020 20:13'),
('1234748', '1155628953', 'refund', 'Lucina Lary', '0007-07-27 03:33:35', '0007-07-27 03:33:35'),
('1234749', '1155628953', 'delete', 'Haley Vaughn', '12-02-2020 10:28', '09-02-2020 17:04'),
('1234750', '1155628953', 'refund', 'Alecia Bubash', '0006-07-27 15:07:46', '0006-07-27 15:07:46'),
('1234751', '1155628953', 'refund', 'Linsey Gedman', '0006-07-27 02:08:16', '0006-07-27 02:08:16'),
('1234752', '1155628953', 'delete', 'Cheryl Haroldson', '08-02-2020 04:47', '07-02-2020 18:31'),
('1234753', '1155628953', 'delete', 'Lawrence Lorens', '0007-07-27 10:08:32', '0007-07-27 10:08:32'),
('1234754', '1155628953', 'refund', 'Tarra Nachor', '10-02-2020 03:48', '07-02-2020 19:50'),
('1234755', '1155628953', 'refund', 'Barrett Toyama', '0008-07-26 09:44:50', '0008-07-26 09:44:50'),
('1234756', '1155628953', 'refund', 'Tamie Hollimon', '14-02-2020 01:14', '13-02-2020 07:38'),
('1234757', '1155628953', 'delete', 'Willodean Konopacki', '13-02-2020 15:03', '12-02-2020 22:39'),
('1234758', '1155628953', 'refund', 'Arlene Klusman', '0007-07-27 04:49:48', '0007-07-27 04:49:48'),
('1234759', '1155628953', 'delete', 'Margurite Okon', '0008-07-26 10:12:25', '0008-07-26 10:12:25'),
('1234760', '1155628953', 'delete', 'Jose Stockham', '13-02-2020 10:12', '11-02-2020 14:28'),
('1234761', '1155628953', 'delete', 'Jeffrey Leuenberger', '11-02-2020 08:19', '08-02-2020 08:22'),
('1234762', '1155628953', 'refund', 'Johana Conquest', '13-02-2020 19:41', '11-02-2020 09:37'),
('1234763', '1155628953', 'delete', 'Alyce Arias', '0008-07-26 01:24:50', '0008-07-26 01:24:50'),
('1234764', '1155628953', 'delete', 'Mayra Bena', '12-02-2020 14:59', '09-02-2020 00:26'),
('1234765', '1155628953', 'delete', 'Adell Lipkin', '14-02-2020 08:19', '12-02-2020 21:48'),
('1234766', '1155628953', 'delete', 'Cristy Lother', '11-02-2020 06:47', '10-02-2020 18:25'),
('1234767', '111752105', 'placed', 'Earlean Suffern', '05-02-2020 07:27', '25-01-2020 18:05'),
('1234768', '111752105', 'placed', 'Gilma Liukko', '26-01-2020 19:58', '16-01-2020 06:40'),
('1234769', '111752105', 'placed', 'Lashawnda Stuer', '0012-07-26 14:19:50', '0012-07-26 14:19:50'),
('1234770', '111752105', 'placed', 'Ora Handrick', '18-01-2020 02:23', '18-01-2020 00:51'),
('1234771', '111752105', 'placed', 'Janine Rhoden', '14-02-2020 00:31', '12-02-2020 18:37'),
('1234772', '111752105', 'placed', 'Bobbye Rhym', '15-01-2020 19:04', '15-01-2020 16:50'),
('1234773', '111752105', 'placed', 'Dick Wenzinger', '12-02-2020 21:45', '25-01-2020 18:07');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `Team_ID` varchar(7) PRIMARY KEY,
  `Name` varchar(21) DEFAULT NULL,
  `Created` varchar(16) DEFAULT NULL,
  `Changed` varchar(16) DEFAULT NULL,
  `Event_ID` varchar(10) DEFAULT NULL,
  `Attendee_Count` varchar(14) DEFAULT NULL,
  `Creator_ID` varchar(10) DEFAULT NULL,
  `Creator_Name` varchar(21) DEFAULT NULL,
  `Email` varchar(31) DEFAULT NULL
   CONSTRAINT E_ID_FK
   FOREIGN KEY (Event_ID)
   REFERENCES events (Event_ID)
   ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams`  VALUES
('965064', 'Team 10', '04-02-2020 16:52', '04-01-2020 16:52', '1155628953', '8', '26199', '\"James\" \"Butt\"', '\"jbutt@gmail.com\"'),
('866729', '100%', '19-12-2019 17:07', '20-12-2019 17:07', '1066714356', '20', '78686', '\"Josephine\" \"Darakjy\"', '\"josephine_darakjy@darakjy.org\"'),
('574299', '120/-', '04-07-2019 12:04', '05-07-2019 12:04', '65657239', '7', '85073', '\"Art\" \"Venere\"', '\"art@venere.org\"'),
('308951', '196 Jefe Shark Hats', '23-01-2019 21:53', '23-01-2019 21:53', '1214065480', '14', '71579', '\"Lenna\" \"Paprocki\"', '\"lpaprocki@hotmail.com\"'),
('583908', '2+2=5', '24-01-2019 21:53', '25-01-2019 21:53', '1214065480', '11', '26053', '\"Donette\" \"Foller\"', '\"donette.foller@cox.net\"'),
('734598', 'Team 8', '23-01-2019 21:53', '23-01-2019 21:53', '1214065480', '6', '77616', '\"Simona\" \"Morasca\"', '\"simona@morasca.com\"'),
('899670', '2 Legit 2 Quit', '28-09-2018 07:54', '29-09-2018 07:54', '291301050', '5', '91367', '\"Mitsue\" \"Tollner\"', '\"mitsue_tollner@yahoo.com\"'),
('476763', '3H Sonic Death Monkey', '28-09-2018 07:54', '29-09-2018 07:54', '291301050', '9', '75146', '\"Leota\" \"Dilliard\"', '\"leota@hotmail.com\"'),
('474546', 'Team 420', '29-09-2018 07:54', '29-09-2018 07:54', '291301050', '9', '64540', '\"Sage\" \"Wieser\"', '\"sage_wieser@cox.net\"'),
('167741', 'The 47', '29-09-2018 07:54', '30-09-2018 07:54', '291301050', '12', '17852', '\"Kris\" \"Marrier\"', '\"kris@gmail.com\"'),
('352234', '4 Angry Monkeys', '30-08-2018 18:04', '30-08-2018 18:04', '1154797332', '14', '23167', '\"Minna\" \"Amigon\"', '\"minna_amigon@yahoo.com\"'),
('150958', '4B4U', '28-08-2018 18:04', '28-08-2018 18:04', '1154797332', '11', '21168', '\"Abel\" \"Maclead\"', '\"amaclead@gmail.com\"'),
('782639', '4 Fast 4 Furious', '21-05-2018 12:43', '21-05-2018 12:43', '1009915901', '11', '98819', '\"Kiley\" \"Caldarera\"', '\"kiley.caldarera@aol.com\"');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_classes`
--

CREATE TABLE `ticket_classes` (
  `Ticket_Class_ID` varchar(15) PRIMARY KEY,
  `Event_ID` varchar(10) DEFAULT NULL,
  `Name` varchar(17) DEFAULT NULL,
  `Status` varchar(15) DEFAULT NULL,
  `Quantity` varchar(8) DEFAULT NULL,
  `Quantity_Sold` varchar(13) DEFAULT NULL,
  `Total_Attendee_Payment` varchar(22) DEFAULT NULL,
  `Organiser_Fee` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ticket_classes`
--

INSERT INTO `ticket_classes`  VALUES
('453986', '301622385', 'Early Bird', 'AVAILABLE', '50', '0', '1', '1.76'),
('961787', '1225494067', 'Early Bird', 'UNAVAILABLE', '200', '0', '0', '0'),
('675854', '334525780', 'VIP', 'AVAILABLE', '150', '0', '600', '2.76'),
('439938', '334525780', 'One-day Pass', 'AVAILABLE', '75', '0', '100', '4.6'),
('597651', '495258902', 'Admit one', 'AVAILABLE', '200', '0', '416.48', '10'),
('741862', '495258902', 'Admit one', 'AVAILABLE', '100', '0', '706.52', '0'),
('1029208', '1155628953', 'RSVP', 'UNAVAILABLE', '200', '180', '0', '0'),
('435351', '111752105', 'Donation', 'SOLD_OUT', '200', '200', '906', '0'),
('557201', '731054143', 'General Admission', 'SOLD_OUT', '200', '200', '0', '0'),
('43182', '731054143', 'RSVP', 'UNAVAILABLE', '100', '90', '0', '0'),
('265461', '447664537', 'Pass', 'UNAVAILABLE', '50', '45', '205.6', '0'),
('231948', '151918584', 'Pass', 'SOLD_OUT', '150', '150', '500', '1.84'),
('229687', '1066714356', 'Donation', 'UNAVAILABLE', '50', '45', '105.6', '0'),
('973632', '265398704', 'Pass', 'NOT_YET_ON_SALE', '150', '135', '402.79', '0'),
('873533', '749661691', 'Admit one', 'NOT_YET_ON_SALE', '150', '135', '303.7', '0'),
('988804', '172609908', 'VIP', 'UNAVAILABLE', '100', '90', '200', '2.76'),
('232803', '887364780', 'General Admission', 'NOT_YET_ON_SALE', '150', '135', '0', '0'),
('694138', '923551703', 'Admit one', 'UNAVAILABLE', '200', '180', '0', '0'),
('1092914', '1213789960', 'Donation', 'UNAVAILABLE', '200', '180', '0', '0'),
('592818', '1213789960', 'RSVP', 'SOLD_OUT', '100', '100', '0', '0'),
('399866', '697723846', 'General Admission', 'UNAVAILABLE', '200', '180', '0', '0'),
('828435', '697723846', 'General Admission', 'UNAVAILABLE', '100', '90', '0', '0'),
('256715', '221778322', 'Admit one', 'NOT_YET_ON_SALE', '100', '90', '0', '0'),
('1045956', '221778322', 'General Admission', 'SOLD_OUT', '50', '50', '903.76', '0'),
('666373', '750924270', 'VIP', 'SOLD_OUT', '150', '150', '0', '0'),
('853026', '65657239', 'Early Bird', 'SOLD_OUT', '100', '100', '0', '0'),
('435083', '65657239', 'Early Bird', 'NOT_YET_ON_SALE', '50', '45', '306.52', '0'),
('1229911', '8660022', 'VIP', 'SOLD_OUT', '150', '150', '904.6', '0'),
('898588', '8660022', 'General Admission', 'UNAVAILABLE', '75', '68', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `venues`
--

CREATE TABLE `venues` (
  `Venue_ID` varchar(8) PRIMARY KEY,
  `Name` varchar(26) DEFAULT NULL,
  `City` varchar(15) DEFAULT NULL,
  `State` varchar(14) DEFAULT NULL,
  `Country` varchar(7) DEFAULT NULL,
  `Postal_Code` varchar(11) DEFAULT NULL,
  `Localized_Address` varchar(39) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `venues`
--

INSERT INTO `venues`  VALUES
('5419344', 'Landrum Temporary Services', 'Proston', 'QLD', 'AU', '4613', 'Landrum Temporary Services,Proston,QLD'),
('11106889', 'Baltimore', 'Baltimore City', 'MD', 'US', '21224', 'Feiner Bros,Baltimore City,MD'),
('5472668', 'Aston', 'Delaware', 'PA', 'US', '19014', 'Aston,Delaware,PA'),
('1581407', 'San Jose', 'Santa Clara', 'CA', 'US', '95111', 'San Jose,Santa Clara,CA'),
('3605834', 'Irving', 'Dallas', 'TX', 'US', '75062', 'Irving,Dallas,TX'),
('3402528', 'Albany', 'Albany', 'NY', 'US', '12204', 'Albany,NY'),
('7895811', 'Stevens Point', 'Portage', 'WI', 'US', '54481', 'Stevens Point,Portage,WI'),
('11972517', 'Easton', 'Talbot', 'MD', 'US', '21601', 'Easton,Talbot,MD'),
('7751529', 'New York', 'New York', 'NY', 'US', '10011', 'New York,NY'),
('10705879', 'Conroe', 'Montgomery', 'TX', 'US', '77301', 'Kalhath Institute , Lucknow, UP'),
('2616961', 'Columbus', 'Franklin', 'OH', 'US', '43215', 'Columbus,Franklin,OH'),
('425994', 'Bergen', 'Ridgefield Park', 'NJ', 'US', '7660', 'Bergen,Ridgefield Park,NJ'),
('8664408', 'Dunellen', 'Middlesex', 'NJ', 'US', '8812', 'Dunellen,Middlesex,NJ'),
('10395493', 'Metairie', 'Jefferson', 'LA', 'US', '70002', 'Metairie,Jefferson,LA'),
('4952946', 'Camarillo', 'Ventura', 'CA', 'US', '93012', 'Camarillo,Ventura,CA'),
('10270333', 'San Antonio', 'Bexar', 'TX', 'US', '78204', 'San Antonio,Bexar,TX'),
('4075576', 'Prineville', 'Crook', 'OR', 'US', '97754', 'Prineville,Crook,OR'),
('4260400', 'Boston', 'Suffolk', 'MA', 'US', '2128', 'Boston,Sufflok,MA'),
('9388629', 'Madison', 'Dane', 'WI', 'US', '53711', 'Madison,Dane,WI'),
('8129289', 'Columbia', 'Richland', 'SC', 'US', '29201', 'Columbia,RichLand,SC'),
('9954367', 'Westbury', 'Nassau', 'NY', 'US', '11590', 'Westbury,Nassau,NY'),
('6547823', 'Werribee Mansion', ' Werribee South', ' VIC', 'AU', '3002', 'Werribee Mansion , Werribee South, VIC'),
('11635166', 'MELBOURNE - Riva St Kilda ', ' Elwood', ' VIC', 'AU', '3971', 'MELBOURNE - Riva St Kilda , Elwood, VIC'),
('9242080', 'Pitch Music & Arts ', ' Moyston', ' VIC', 'AU', '3079', 'Pitch Music & Arts , Moyston, VIC'),
('1562740', 'Lardner Park ', ' Lardner', ' VIC', 'AU', '3630', 'Lardner Park , Lardner, VIC'),
('4642828', 'Lexton ', ' Lexton', ' VIC', 'AU', '3341', 'Lexton , Lexton, VIC'),
('10968204', 'Flemington Racecourse ', ' Flemington', ' VIC', 'AU', '3995', 'Flemington Racecourse , Flemington, VIC'),
('7239350', 'Burnley Circus Park ', ' Melbourne', ' VIC', 'AU', '3350', 'Burnley Circus Park , Melbourne, VIC'),
('8134685', 'Mornington ', ' Mornington', ' VIC', 'AU', '3860', 'Mornington , Mornington, VIC');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
