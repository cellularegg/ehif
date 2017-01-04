waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["info","Server Information"];
player createDiarySubject ["credits","Credits"];
player createDiarySubject ["serverrules","Serverregeln"];
player createDiarySubject ["policerules","Polizeivorschriften"];
player createDiarySubject ["civrules","Gesetze für Zivilisten"];
player createDiarySubject ["safezones","Safe Zones"];
player createDiarySubject ["help","Hilfe"];

/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/
	player createDiaryRecord ["info",
		[
			"", 
				"
				Hallo und Herzlich Willkommen bei uns am Altis Life Austria Server,<br/>
				Wir hoffen, dir ein richtig leiwandes' Altis Life bieten zu können!<br/><br/>
				Du brauchst Hilfe? Schau dir den Menüpunkt 'Hilfe' an, dann schreib eine Adminmessage, komm auf unseren TS oder ins Forum.<br/><br/>
				Teamspeak 3 Server: altislifeaustria.at<br/>
				Forum: www.altislifeaustria.at oder forum.altislifeaustria.at<br/>
				Du willst Stammspieler werden und dem Server etwas Gutes tun? Dann informier dich in unserem Forum in der Kategorie 'Stammspieler'!<br/><br/>
				Ein tolles Spielerlebnis auf österreichische Art wünschen dir,<br/>
				Game Timer, Skeesicks<br/>
				ALA Head Admins
				"
		]
	];
	
	player createDiaryRecord["credits",
		[
			"",
				"
					---------------<br/>
						Credits <br/>
					---------------<br/>

				Altis Life 3.1.4.8 Vanilla and the Altis Life Framework by Tonic and some other authors, as mentioned in the file headers.<br/>
				<br/>
				Custom scripts:<br/>
				Game Timer<br/>
				midgetgrimm<br/>
				Mokomoko<br/>
				MrKraken<br/>
				Osef<br/>
				Hans Wurst / Skeesicks<br/>
				ColinM9991<br/>
				Kuchiha<br/>
				Lifted<br/>
				alleskapot<br/>
				JoeyLosPepes<br/>
				Insane<br/>
				Hauklotz<br/>
				noldy<br/>
				cat24max<br/>
				Ehno<br/>
				Paronity<br/>
				and some unknown authors<br/>
				<br/>
				Map Stuff:<br/>
				Game Timer<br/>
				Stuff24<br/>
				Backer<br/>
				Blackc0bra<br/>
				Darkstar<br/>
				<br/>
				Sounds:<br/>
				Rundumleuchte1<br/>
				and some unknown authors<br/>
				<br/>
				Textures:<br/>
				Game Timer<br/>
				Stagger Lee<br/>
				Mr Hanky<br/>
				Darkstar<br/>
				Blackc0bra<br/>
				Weshna<br />
				<br/>
				Last edit: 29.1.2015 by AltisLifeAustria.at<br />
				NOTE: It is NOT allowed to reuse the AltisLifeAustria files or parts of them without my (Game Timer) explicit permission to do so.
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Regeln für Anwälte", 
				"
				1. Müssen sich per Anwaltlizenz gegenüber Polizei ausweisen können, ansonsten zu ignorieren.<br/>
				2. Anwälte müssen, wenn in einem Fall beschäftigt angemessene Kleidung und einen vollen Namen (kein Pseudonym wie “xx360YOLOxx”) tragen.<br/>
				3. Anwälte dürfen, sofern in einem Fall tätig, keine Straftaten begehen.<br/>
				4. Anwälte dürfen bei der Eintreibung ihrer Bezahlung die Polizei einschalten.<br/>
				5. Ein Verstoß gegen eine dieser Regeln kann zu einer Verwarnung oder Kündigung führen.<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Regeln für Presse", 
				"
				1. Journalisten müssen, wenn im Dienst, per [Presse] Tag und per Presseausweis erkennbar sein. Außerdem dürfen sie keiner Gang, oder einer Presse-Gang angehören.<br/>
				2. Journalisten dürfen nicht ausgeraubt, des Dienstfahrzeuges bestohlen, erschossen oder unnötig lange von ihrer Arbeit abgehalten werden. Im Gegenzug dürfen sie aber auch keine Straftaten begehen und keine Waffen bei sich haben.<br/>
				3. Pressemitarbeiter dürfen ihre Ausrüstung (auch Dienstfahrzeug) unbedingt NUR während ihrer Arbeit tragen, private Nutzung hat eine fristlose Kündigung zur Folge.<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Relog", 
				"
				1. Es ist strengstens verboten sich auszuloggen, um danach an einem anderen Spawnpunkt wieder zu spawnen! (Wegersparnis)<br/>
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Trolling", 
				"
				1. Stehlen eines Fahrzeuges, ohne dem Benutzer Zeit zu geben das Fahrzeug abzuschliessen<br/>
				2. Vor Autos werfen bzw. unter fremde Autos legen oder auf fremde Autos springen<br/>
				3. Ohne RP Hintergrund mit gepanzerten Fahrzeugen durchs Savezones fahren (dies schliesst den bewaffneten Rebellenoffroader mit ein)<br/>
				4. Längeres verweilen auf der Strasse<br/>
				5. Behindern der Einsatzkräfte<br/>
				6. Mehrfaches Missachten von Polizeianweisungen<br/>
				7. Missbrauch des Küniglbergs<br/>
				"
		]
	];
	
					
	
	player createDiaryRecord ["serverrules",
		[
			"Umgang mit Sanitätern / Das Revivesystem", 
				"
				1. Sanitäter dürfen nicht bestohlen, festgehalten oder ohne deutliche Forderung / Vorwarnung getötet werden<br/>
				2. Nach Schussverletzungen muss dich die Rettung in das nächste Krankenhaus bringen. Bis zur Übergabe an das KH ist ein Eingreifen, aber auch Beteiligtwerden, in jegliche Kampfsituationen streng verboten!<br/>
				3. Sanitäter dürfen mit der Behandlung von Verletzten erst beginnen, wenn die Umgebung sicher und frei von Gefechten sind.<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Bann ohne Warnung", 
				"
				1. Hacking<br/>
				2. Duplizieren von Items oder Geld. Wenn dir jemand einen auffällig hohen Geldbetrag sendet melde es, sonst begehst du die Gefahr selbst gebannt zu werden.<br/>
				3. Glitching / Exploiting (Vorteile erreichen durch ungewollte Features/Bugs)<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Luftfahrzeuge", 
				"
				1. Es ist verboten, mit dem Heli andere Vehikel / Gebäude zu rammen bzw. Kamikaze Angriffe auszuführen<br/>
				2. Es ist verboten, durch Sling Loading geschlossene Fahrzeuge zu stehlen<br/>
				3. Es ist strengstens verboten, Fahrzeuge mit dem Helikopter auf Städte, Personen oder andere Fahrzeuge zu 'werfen'
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Bodenfahrzeuge", 
				"
				1. Kein Überfahren<br/>
				2. Kein absichtliches Davorwerfen<br/>
				3. Kein Rammen von anderen Fahrzeugen, um diese zu zerstören<br/>
				4. Kein grundloses zerstören von fremden Fahrzeugen<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Kommunikation", 
				"
				1. Es ist verboten, im Sidechat zu reden.<br/>
				2. Es dürfen keine Musik oder Audioaufnahmen über den Ingame Voice-Chat abgespielt werden<br/>
				3. Beleidigungen, Spamming, polit. oder ideologische Stellungnahmen,  rassistische oder andere diskrimminierende Aussagen dürfen weder in Voice- noch in Textchat geäußert werden<br/>
				4. Sidechat zählt nicht als RP<br/>
				5. Keine Realnamen von ideologischen oder politischen Personen/Organisationen<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"RDM (Random Deathmatching)", 
				"
				1. RDM = Tötung ohne RP Hintergrund / Ursache / Vorwarnung<br/>
				2. Bevor zu Gewalt gegriffen wird, muss der Bedrohte genug Zeit haben, auf etwaige Forderungen einzugehen<br/>
				3. Selbstverteidigung gilt im Sinne des geringsten Mittels<br/>
				4. Überfahren ist generell verboten<br/>
				5. Bei Fahrzeugen (auch Luftfahrzeuge)  ist nur disabeln (fahrunfähig machen) erlaubt<br/>
				6. Selbstmordweste: Kein RDM, muss aber bei Auslösung in Spawnstädten 10min vorher ausdrücklich angekündigt werden. Außerhalb der Spawnstädte, normale RP Ankündigung.<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Newlife Regel", 
				"
				1. Gilt für alle Cops und Zivis<br/>
				2. Nach dem Tod, darf nicht in die Situation eingegriffen werden die zum Tode geführt hat und das Gebiet darf auch nicht mehr betreten werden! Sollte sich der Ort des Geschehens danach verlagern, darf frühestens nach 10 Minuten in die Folgeaktion eingegriffen werden!<br/>
				3. Keine Erinnerungen, keine Rachewünsche nach Respawn (“Brain Reset”)<br/>
				4. Für RDM ,Selbstmord, Tod durch Bugs und Wiederbelebung gilt kein NL<br/>
				5. Bei einem neuen Leben erlöschen deine Straftaten, diese sind an deinen “alten” Charakter gebunden.<br/>
				"
		]
	];
	
	
// Police Section

	player createDiaryRecord ["policerules",
		[
			"Cobra", 
				"
				Das Cobra Einsatzkommando ist eine Spezialeinheit, die nur bei Bedarf von der aktuellen Polizeileitung (höchstrangiger Polizei Offizier, mindestens Hauptmann) angefordert werden kann. Die Mitglieder der Cobra sind reguläre Polizeibeamte, die im Normalfall Polizeidienst mit normalen Polizeiuniformen und der entsprechend zugelassenen Ausrüstung nachgehen. Bei der Wahl der Cobra Ausrüstung ist auf die Verhältnismässigkeit zu achten.
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Zivilpolizei", 
				"
				1. Zivilpolizisten werden von der Polizei ausgesucht. Ab dann dürfen diese als Zivilist auf Streife gehen. Während der ganzen Streife müssen sie sich aber im TS bei den Polizisten aufhalten, sich mit diesen evtl. absprechen und sich voll auf ihre Aufgaben konzentrieren.<br/>
				2. Missbrauch der Rechte (Aktiv auf Streife sein, obwohl als normaler Zivi unterwegs, Verwendung von Ausrüstung für private Zwecke, Straftaten im Dienst o.ä.) führen zu einer Suspendierung vom Polizeidienst.<br/>
				3. Die Zivilpolizei ist hauptsächlich auf RP ausgelegt, nicht auf Geldbeschaffung oder Kampfeinsätze!<br/>

				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Bewaffnete Fahrzeuge", 
				"
				Dürfen eingesetzt werden bei:<br/><br/>
				1. Stadtübernahme einer der 4 Spawnstädte durch eine größere Rebellengruppe<br/>
				2. Bankraub, bei der von gepanzerten Fahrzeugen / Fluchthelis auszugehen ist bzw. vorhanden sind<br/>
				3. Gepanzerten Fahrzeugen in Kavala<br/>
				4. Fliehenden Helis nach mehreren Warnungen<br/>
				Dabei dürfen diese nur verwendet werden, um die besagten Fahrzeuge fluchtunfähig zu machen. Auf Personen darf nur aus Selbstverteidigung geschossen werden<br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Streifendienst",
				"
				Die Polizei sollte primär unterwegs auf Streife sein. Ein Streifenfahrzeug sollte immer von mindestens 2 Beamten besetzt sein. 
				Im Streifendienst dürfen illegale Gebiete nicht speziell überwacht oder betreten werden, dazu ist eine Razzia nötig.<br/><br/>
				1. Streifenausrüstung: Kopfbedeckung, keine Vermummung, Streifenuniform, Polizeiweste (wenn verfügbar), Taser, größte Erlaubte Waffe: MK18<br/>
				2. Streifenfahrzeuge: Offroader, Limousine, SUV, Quad, Gepanzerte Fahrz. nur bei Patrouillen durch besonders gefährliche Gebiete (bzw. gemeldete erhöhte Kriminalitätsrate)<br/>
				3. Gebrauch scharfer Waffen muss zwingend von der Einsatzleitung vorher genehmigt werden. Ausnahme: akute Bedrohungslage (“Notwehrsituation”)<br/>
				"
		]
	];
		
	player createDiaryRecord ["policerules",
		[
			"Bestrafung", 
				"
				Geldstrafen nach dem Ticketkatalog (folgt)
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Ausrüstung",
				"
				1. Die Beamten dürfen nur Ausrüstung tragen, die ihrem Rang entspricht, ausgenommen temporäre Anweisungen eines höherrangigen.<br/>
				2. Beamte müssen immer für alle Zwecke ausreichend ausgerüstet sein, jedoch muss diese angemessen wirken -> siehe “Streifendienst”<br/>
				3. Aspiranten dürfen, außer auf temporäre Anweisung eines höherrangigen, keine scharfen Waffen tragen!<br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Razzien/Raids",
				"
				Eine Razzia ist eine Polizeiaktion, bei der ein Gebiet betreten wird, in welchem illegale Tätikeiten/Gegenstände vermutet werden, in der Absicht diese zu finden, beschlagnahmen bzw. die Besitzer zu bestrafen.<br/><br/>
				Regeln dafür:<br/>
				1. Ankündigung (Nachricht/Sirene lang vorher)<br/>
				2. mind. 4 Polizisten, einer davon mind. Leutnant<br/>
				3. ein nachvollziehbarer Grund<br/>
				4. Nachdem das Gebiet gesichert und durchsucht wurde, muss die Polizei das Gebiet so bald wie möglich verlassen<br/>
				5. Ein Gebiet darf nur im Abstand von 20min zu einem vorherigen Raid nochmal gestürmt werden<br/>
				6. Illegale Gebiete: Rebellenaußenposten, Drogen Hawara, Drogen Verarbeiter, Drogenfelder<br/><br/><br/>
				Regeln für Hausdurchsuchungen:<br/>
				1. mind 3. Polizisten, einer davon mind. Chefinspektor<br/>
				2. Einen nachvollziehbaren, triftigen Grund für die Durchsuchung geben.<br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Übertragung der Leitfunktion",
				"
				Sollte es die Situation erfordern, kann der höchstrangige /leitende Polizist die Leitung an einen niederrangigen Kollegen übergeben. Dieser ist dann automatisch allen andern Polizisten gegenüber weisungsberechtigt, ungeachtet des Ranges oder des Dienstalters.
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Befehlskette / Rangordnung",
				"
				Die Verantwortung bzw. Leitung des Polizeidienstes übernimmt der höchstrangige, anwesende Polizist. Bei gleichen Rängen entscheidet das Dienstalter.<br/><br/>
				Aspirant (Asp.)<br/>
				Inspektor (Insp.)<br/>
				Chefinspektor (Chefinsp.)<br/>
				Leutnant (Lt.)<br/>
				Hauptmann (Hptm.) <br/>
				Major (Maj.)<br/>
				General (Gen.)<br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Tödliche Gewalt",
				"
				Darf nur eingesetzt werden, wenn ein Leben in Gefahr ist und keine andere Möglichkeit zur Deeskalation der Situation besteht.Grundsätzlich besteht in jeder Situation die Pflicht zur Wahl des geringsten Mittels.
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Teamspeak",
				"
				Polizisten müssen sich während ihrer ganzen Dienstzeit am TS-Server in den Polizei Channels aufhalten<br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Allgem. Regeln",
				"
				1. Die Polizei Quote sollte mindestens 20% betragen. Bitte vor dem einloggen (falls gewhitlisted), beim ranghöchsten anwesenden Polizisten nachfragen ob Hilfe benötigt wird!<br/>
				2. Bewerbung zum Polizeidienst kann frühestens nach 7 Tagen Spielzeit am Server gestellt werden.<br/>
				3. Missachtung von Polizei Regeln, kann zur Degradierung oder im schlimmsten Fall zur unerenhaften Entlassung aus dem Polizeidienst führen.<br/>
				"
		]
	];
	
	
	
// Civilian Laws and Rules
	player createDiaryRecord ["civrules",
		[
			"andere Vergehen",
				"
				...sind im Bußgeldkatalog (siehe Polizeivorschriften -> Bestrafung) vermerkt.
				"
		]
	];
	
	player createDiaryRecord ["civrules",
		[
			"Rebellen-Großaktionen",
				"
				Für größere Rebellenaktionen (z.B. Geiselnahme, Banküberfall, Stadtübernahme) müssen mindestens 5 Polizisten anwesend sein! <br/>
				"
		]
	];
	
	player createDiaryRecord ["civrules",
		[
			"Illegale Kleidung",
				"
				(Gilt in Städten)<br/>
				1. Ghillie<br/>
				2. Vermummungen<br/>
				Können wenn sie in Spawnstädten getragen werden, beschlagnahmt werden!<br/>
				"
		]
	];
	player createDiaryRecord ["civrules",
		[
			"Illegale Waren",
				"
				1. Kokain<br/>
				2. Heroin<br/>
				3. Kannabis/Marijuana/Weed<br/>
				4. Schildkröten<br/>
				"
		]
	];
	player createDiaryRecord ["civrules",
		[
			"Illegale Fahrzeuge",
				"
				Beachtet, dass die Polizei mit sofort mit den härtesten Mitteln gegen euch wirken wird, wenn ihr damit in einer der Spawnstädte fahrt!<br/><br/>

				1. Ifrit<br/>
				2. bewaffneter Offroader<br/>
				3. alle Polizeifahrzeuge<br/>
				Fahrzeuge welche für schwere Straftaten verwendet wurden, dürfen von der Polizei dauerhaft beschlagnahmt und zerstört werden.<br/>
				"
		]
	];
	player createDiaryRecord ["civrules",
		[
			"Luftfahrt",
				"
				1. Über Städten muss eine Mindesthöhe von 200m eingehalten werden.<br/>
				2. Sofern vorhanden, mussen Positionslichter die ganze Zeit eingeschalten sein.<br/>
				3. Über Städten darf nicht gehovert werden<br/>
				4. Landungen in größeren Städten müssen von der Polizei genehmigt werden, Ausnahmen: Ziviler Landeplatz Kavala, Flughäfen<br/>
				5. Es darf nicht auf Straßen gelandet werden<br/>
				"
		]
	];
	player createDiaryRecord ["civrules",
		[
			"Geschwindigkeiten",
				"
				Innerorts: 50km/h<br/>
				Außerorts (befestigt): 140km/h<br/>
				Außerorts (unbefestigt): 100km/h<br/>
				"
		]
	];
	
	player createDiaryRecord ["civrules",
		[
			"Waffenbesitz",
				"
				Erlaubt sind alle Waffen (in Verbindung mit einem Waffenschein), die im Waffengeschäft erhältlich sind: Rook, ACP, Zubr, 4-five, PDW 2000, Sting, Vermin, P07<br/>
				In Städten dürfen diese nicht offen getragen werden.<br/>
				Sollte eine Waffe in eurem Besitz sein wenn die Polizei euch wegen einer Straftat festnimmt, darf diese beschlagnahmt werden.<br/>
				"
		]
	];

// Safezones	
	player createDiaryRecord["safezones",
		[
			"",
				"
					Raub, Mord und Entführung sind hier nicht Erlaubt. Ausnahme: Notwehr im RP und Flucht in Safezones.<br/>
					Es darf weder in Safezones geschossen werden, noch aus Safezones heraus geschossen werden!<br/><br/>
					
					Shops, ATMs (ca. 50m Umkreis)<br/>
					Polizei HQs (ausgenommen Befreiungen ohne Töten von Gefangenen)<br/>
					Kavala Marktplatz<br/>
					Rebellenlager, Rebellenstadt und Stammspielertreffpunkte<br/><br/>
				"
		]
	];

	
// Controls Section

	player createDiaryRecord ["help",
		[
			"Tastenkombinationen",
				"
				Z: Spielermenü öffnen<br/>
				U: Aufsperren/Zusperren von Vehikeln + Häusern<br/>
				F: Sirene (Polizei)<br/>
				T: Kofferaum öffnen<br/>
				Shift + R: Festnehmen (Zivilisten brauchen Kabelbinder)<br/>
				Shift + G: Niederschlagen (nur mit Waffe)<br/>
				Windows: Aktionstaste 10, für alle möglichen Interaktionen und Menüs<br/>
				Shift + L: Blaulicht für Einsatzkräfte.<br/>
				Shift + H: Waffen holstern/auf den Rücken hängen<br/>
				Tabulator: Hände hochnehmen (Aufgeben)<br/>
				Q: Hotkey für die Spitzhacke<br/>
				O: Schranken-Fernbedienung für Polizisten<br/>
				Shift + O: Ohrenstöpsel<br/>
				1: Fahndungsliste öffnen (Polizei, Zivilp.)<br />
				2: Wanted+ öffnen (Polizie, Zivilp.)<br />
				"
		]
	];