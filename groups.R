

## correct country names % define actor type
Country <-  c('Afghanistan', 'Albania', 'Algeria', 'Andorra', 'Antigua and Barbuda', 'Argentina', 'Armenia', 'Australia', 'Azerbaijan', 'Austria', 'Aruba',
              'Angola','Bahamas', 'Bahrain', 'Bangladesh', 'Barbados', 'Belarus', 'Belgium', 'Belize',
              'Benin', 'Bhutan', 'Bolivia', 'Bosnia and Herzegovina', 'Brunei Darussalam',
              'Botswana', 'Brazil', 'Bulgaria', 'Burkina Faso', 'Burundi', 'Czech Republic', 'Cyprus',
              'Cuba', 'Croatia', 'Cote dIvoire', 'Costa Rica', 'Democratic Republic of the Congo', 'Republic of Congo',
              'Comoros', 'Colombia', 'China', 'Chile', 'Chad', 'Central African Republic', 'Cabo Verde', 'Cook Islands',
              'Canada', 'Cameroon', 'Cambodia', 'Ethiopia', 'Estonia', 'Eritrea', 'Equatorial Guinea', 'El Salvador',
              'Egypt', 'Ecuador', 'Dominica', 'Dominican Republic', 'Djibouti', 'Denmark', 'Fiji', 'Faeroe Islands',
              'Finland', 'France', 'Gabon', 'Gambia', 'Georgia', 'Germany', 'Ghana',
              'Greece', 'Greenland', 'Grenada', 'Guatemala', 'Guinea',
              'Guinea-Bissau', 'Guyana', 'Haiti', 'Honduras', 'Hong Kong', 'Hungary',
              'Iceland', 'India', 'Indonesia', 'Iran', 'Iraq', 'Ireland', 'Israel', 'Italy', 'Jamaica',
              'Japan', 'Jordan', 'Kazakhstan', 'Kenya', 'Kiribati', 'Korea, Democratic Peoples Republic', 'Kyrgyzstan',
              'Republic of Korea', 'Kuwait', 'Laos', 'Latvia', 'Lebanon', 'Lesotho', 'Liberia', 'Libya',
              'Liechtenstein', 'Lithuania', 'Luxembourg', 'Macedonia', 'Madagascar', 'Malawi', 'Malaysia',
              'Maldives', 'Mali', 'Malta', 'Marshall Islands', 'Mauritania', 'Mauritius', 'Mexico', 'Federated States Of Micronesia',
              'Moldova', 'Monaco', 'Mongolia', 'Montenegro', 'Morocco', 'Mozambique', 'Myanmar', 'Namibia', 'Nauru',
              'Nepal', 'Netherlands', 'New Zealand', 'Nicaragua', 'Niger', 'Nigeria', 'Norway', 'Oman', 'Pakistan',
              'Panama', 'Papua New Guinea', 'Palau', 'Paraguay', 'Peru', 'Philippines', 'Poland', 'Palestine',
              'Portugal', 'Qatar', 'Romania', 'Russia', 'Rwanda', 'Saint Helena', 'Saint Kitts and Nevis', 
              'Saint Lucia', 'Samoa', 'San Marino', 'Sao Tome and Principe', 'Saudi Arabia', 'Senegal', 'Serbia', 'Seychelles',
              'Sierra Leone', 'Singapore', 'Slovakia', 'Slovenia', 'Solomon Islands', 'Somalia', 'South Africa', 'Spain',
              'Sri Lanka', 'Sudan', 'South Sudan', 'Suriname', 'Swaziland', 'Saint Vincent and the Grenadines', 'Switzerland', 'Syrian Arabic Republic', 'Taiwan', 'Sweden', 'Tajikistan', 'Tanzania',
              'Thailand', 'Timor-Leste', 'Togo', 'Tonga', 'Trinidad and Tobago', 'Tunisia', 'Turkey', 'Turkmenistan', 'Tuvalu', 'Uganda', 'Ukraine', 
              'United Arab Emirates', 'UK', 'USA', 'Uruguay', 'Niue',
              'Uzbekistan', 'Vanuatu', 'Venezuela', 'Viet Nam', 'Yemen', 'Zambia', 'Zimbabwe', 'EU', "Holy See")

NGO <- c('Greenpeace', "American Society Of International Law", "Asociaci?n Interamericana Para La Defensa Del Ambiente", 
         "Birdlife", "Care-To-Help Foundation", "Center For Oceans Law And Policy", "Comit? Des Observateurs Des Droits De L'homme",
         "DOSI", "Development Alternatives With Women For A New Era",
         "Fondation Des Oeuvres Pour La Solidarit? Et Le Bien Etre Social", "Fonds Tara", "FNI",
         "Fundaci?n Lonxanet Para La Pesca Sostenible", "HSA", 
         "ICC",
         "GOF", 
         "ICEL", "International Ecological Safety Cooperative Organization",
         "International Federation Of Pharmaceutical Manufacturers and Associations",
         "International Indian Treaty Council", "International Ocean Institute", 
         "International Programme On The State Of The Ocean", "International Relief Services",
         "International Studies Association", "National Congress Of American Indians",
         "NRDC", "Nippon", "Ocean Sanctuary Alliance", "Ocean Unite",
         "Oceancare", "Peace Boat", "Pew", "R?seau Oc?an Mondial","Ship and Ocean Foundation",
         "The Nature Conservancy", "Tinker Institute On International Law And Organizations", 
         "IILA",
         "United Nations Association Of San Diego", "Women In Europe For A Common Future", 
         "WWF", "afn", "SOA", 'NGO',
         "Sasakawa", "WOC", "AELA", "Global Ocean Forum", "nature conservancy", "eli", "serr", "dscc", " ASSEMBLY OF FIRST NATIONS"
         )
business <-  c("ICPC", "Sustainable Ocean Alliance", "BMT", "ICC",
               "global compact fund","ICS")

## some NGOs belong to companies
IGO <-   c("ISA", 
                "HELCOM", "CPPS", "NPFC","OSPAR", "SPREP", "WCPFC", "AALCO",
                "ICES", "Commonwealth", "SPC", "IPBES", "Medfund", "GCF", "SEAFO",
                "Pacific Island Forum", "SICA", "WTO", "Nauru Agreement", "ILO", "IWC", "ATS",
                "Benguela", "PEMSEA", "IPCC", "CCAMLR", "APFIC",
                "GLFC", "IOTC", "IPHC", "NASCO", "PSC",
                "SEAFDEC", "NACA", "PICES", "IAEA", "WMO", "world bank",
                "rfmo","IUCN", "oecd", "gbif", "NEAFC", "NAFO", "ICCAT", "IATTC",
           "CCSBT", "GESAMP", "UNEP-WCMC")


unag <- c( "FAO", "WIPO", "IMO", "IOC", "GFCM", "GEF", "world health organization", "UNFSA",
           "UNEP")

## ICNAF = NAFO

unbodies <- c("Chair", "President", 
                  "Sg", "Secretariat", "UNIDO", 
                 "UNSD", "Facilitator", "UNDOALOS", "UNDESA", 
                "UNECE", "UNFCCC",  "UNDP", "UNFF", "Commission on the limits of the continental shelf",
               "ITLOS",  "un permanent forum on indigenous issues", "ICJ")

unepcon <- c("CMS", "Abidjan", "Minamata","CBD", "cites",
                "Barcelona" , "ramsar", "Basel")

sc <- c("University of British Columbia", "University of Aberdeen", "Natural History Museum",
        "Duke University","University Of Maine", "WMU",
        "Victoria University", "University Of Washington", "Jamstec",
        "IIED", "IDDRI", "IASS", "University of Wollongong", "MNHN", "Harvard University",
        "Griffith University", "KIOST", "CIL", "NOAA", "NOC", "chinese academy of science",
        "russian academy of science", "	james cook university", "csic", "university queensland",
        "ocean university china", "university tasmania", "university ghent", "british antarctic survey",
        "ifremer", "university washington", "WORLD MARITIME UNIVERSITY")




unalliance <- c("PSIDS", "CLAM", "G77+China", "Caricom", "CARICOM", "EU", "G77/china", "g77", "g77 and china",
                "Non UNCLOS Party", "AOSIS", "least developed", "landlocked", "African Group")

subs <- c("nagoya", "port state", "london convention", "cartagena", "ebsa", "fish stocks")
subso <- c("cbd", "fao", "imo", "cbd", "cbd", "fao")

Country <- str_to_lower(Country)
NGO <- str_to_lower(NGO)
IGO <- str_to_lower(IGO)
unbodies <- str_to_lower(unbodies)
sc <- str_to_lower(sc)
business <- str_to_lower(business)
unag <- str_to_lower(unag)
unepcon <- str_to_lower(unepcon)
unalliance <- str_to_lower(unalliance)



#### speak for  Alliance (on behalf of alliance)
obo_africa <- c("Algeria", "African Group")
obo_g77 <- c("Palestine", "G77+China", "G77/China", "Egypt")
obo_clam <- c("Brazil", "Argentina", "Uruguay", "Chile", "Costa Rica", "El Salvador",
          "Guatemala", "Honduras", "Mexico", "Panama", "Peru", "Dominican Republic", "Colombia", "Clam")
obo_caricom <- c("Trinidad and Tobago", "Bahamas", "Barbados", "Jamaica", "Saint Lucia", "Caricom")
obo_aosis <- c("Belize")
obo_psids <- c("Fiji", "Federated States Of Micronesia", "Solomon Islands", "Tuvalu", "Nauru", "FSM")
obo_ldc <- c("Malawi", "Ldcs", "Bangladesh")
obo_landlocked <- c("Paraguay", "Landlocked")
obo_non <- c("Turkey", "Venezuela")

obo_africa <- str_to_lower(obo_africa)
obo_g77 <- str_to_lower(obo_g77)
obo_clam <- str_to_lower(obo_clam)
obo_caricom <- str_to_lower(obo_caricom)
obo_aosis <- str_to_lower(obo_aosis)
obo_psids <- str_to_lower(obo_psids)
obo_ldc <- str_to_lower(obo_ldc)
obo_landlocked <- str_to_lower(obo_landlocked)
obo_non <- str_to_lower(obo_non)

#### member in alliance

cari <- c("antigua and barbuda", "bahamas", "barbados", "dominica", "grenada", "guyana",
          "haiti", "jamaica", "montserrat", "saint lucia", "saint kitts", "sain vincent", "suriname",
          "trinidad and tobago") # belize
		  
piss <- c("Fiji", "Federated States of Micronesia", "Solomon Islands", "Tuvalu", "Nauru", "FSM",
          "Samoa", "Tonga", "Vanuatu")		  
		  
aos <- c("Cook Islands", "Fiji", "Kiribati", "Marshall Islands", "Federated States of Micronesia",
         "Nauru", "Niue", "Palau", "Papua New Guinea", "Samoa", "Solomon Islands",
        "Timor-Leste", "Tonga", "Tuvalu", "Vanuatu", "Cabo Verde", "Comoros", 
        "Guinea-Bissau", "Maldives", "Mauritius", "Sao Tome and Principe", "Seychelles",
        "Singapore", "Antigua and Barbuda", "Bahamas", "Barbados", "Belize", 
        "Cuba", "Dominica", "Dominican Republic", "Grenada", "Guyana", "Haiti", "Jamaica",
        "Saint Kitts", "Saint Lucia", "Sain Vincent", "Suriname", "Trinidad and Tobago")

afr <- c("Algeria", "Angola", "Benin", "Botswana", "Burkina Faso", "Burundi", "Cabo Verde",
        "Cameroon", "Central African Republic", "Chad", "Comoros", "Republic of Congo", "cote divoire",
        "congo, democratic republic of", "Djibouti", "Egypt", "Equatorial Guinea", 
        "Eritrea", "Ethiopia", "Gabon", "Gambia", "Ghana", "Guinea", "Guinea-Bissau",
        "Kenya", "Lesotho", "Liberia", "Libya", "Madagascar", "Malawi", "Mali",
        "Mauritania", "Mauritius", "Morocco", "Mozambique", "Namibia", "Niger", 
        "Nigeria", "Rwanda", "S?o Tom? and Pr?ncipe", "Senegal", "Seychelles", 
        "Sierra Leone", "Somalia", "South Africa", "South Sudan", 
        "Sudan", "Swaziland", "Togo", "Tunisia", "Uganda", "Tanzania", 
        "Zambia", "Zimbabwe")

eu <- c("Austria", "Italy", "Belgium", "Latvia", "Bulgaria", "Lithuania", "Croatia", 
        "Luxembourg", "Cyprus", "Malta", "Czech Republic", "Netherlands", "Denmark", "Poland",
        "Estonia", "Portugal", "Finland", "Romania", "France", "Slovakia", "Germany", 
        "Slovenia", "Greece", "Spain", "Hungary", "Sweden", "Ireland", "United Kingdom")

least <- c("Afghanistan", "Malawi", "Angola" , "Mali",
          "Bangladesh", "Mauritania", "Benin", "Mozambique", "Bhutan",
          "Myanmar", "Burkina Faso", "Nepal","Burundi" , "Niger", "Cambodia",
          "Rwanda", "Central African Republic", "Sao Tome and Principe", "Chad",
          "Senegal", "Comoros", "Sierra Leone", "Democratic Republic of the Congo",
          "Solomon Islands",  "Djibouti", "Somalia", "Eritrea",
          "South Sudan", "Ethiopia", "Sudan", "Gambia", "Timor-Leste", "Guinea", "Togo",
          "Guinea-Bissau", "Tuvalu", "Haiti", "Uganda", "Kiribati", "United Republic of Tanzania",
          "Laos", "Vanuatu", "Lesotho", "Yemen", "Liberia", "Zambia", "Madagascar")  

land <- c("Afghanistan", "Armenia", "Azerbaijan", "Bhutan", "Bolivia", "Botswana", 
"Burkina Faso", "Burundi" , "Central African Republic", "Chad" ,"Eswatini",
"Ethiopia", "Kazakhstan", "Kyrgyzstan", "Laos", "Lesotho", "Macedonia", "Malawi",
"Mali", "Mongolia", "Nepal", "Niger", "Paraguay", "Republic of Moldova", "Rwanda", 
"South Sudan", "Tajikistan", "Turkmenistan", "Uganda", "Uzbekistan", "Zambia",
"Zimbabwe")



nun <- c("Turkey", "Venezuela", "Syrian Arab Republic", "UZBEKISTAN",
         "TURKMENISTAN", "TAJIKISTAN")
		 
		 
## un groups
weog <- c("canada", "eu", "new zealand", "australia", "usa", "switzerland", "norway", "iceland")

asia_pcf <- c("Afghanistan", "Bahrain",
"Bangladesh",
"Bhutan",
"BruneiDarussalam",
"Cambodia",
"China",
"Cyprus",
"North Korea",
"Fiji",
"India", 
"Indonesia", 
"Iran(IslamicRepublicof)",
"Iraq",
"Japan", 
"Jordan", 
"Kazakhstan", 
"Kuwait", 
"Kyrgyzstan", 
"LaoPeople'sDemocraticRepublic",
"Lebanon",
"Malaysia",
"Maldives", 
"MarshallIslands", 
"Micronesia", 
"Mongolia",
"Myanmar",
"Nauru",
"Nepal",
"Oman", 
"Pakistan",
"Palau", 
"Papua New Guinea",
"Philippines",
"Qatar",
"SouthKorea",
"Samoa", 
"SaudiArabia", 
"Singapore",
"Solomon Islands",
"Sri Lanka", 
"Palestine",
"Syria", 
"Tajikistan",
"Thailand",
"Timor-Leste",
"Tonga",
"Turkey",
"Turkmenistan",
"Tuvalu",
"UnitedArabEmirates",
"Uzbekistan",
"Vanuatu",
"VietNam",
"Yemen")
		 
asia_pcf <- str_to_lower(asia_pcf)
		 
		 
library(readxl)
g77 <- read_excel("//share.univie.ac.at/maripoldata/5_Research/WP1/Collected Data/3_working data/g77.xlsx", 
                  col_names = FALSE)
g77 <- unlist(t(g77))
g77 <- str_to_lower(g77)
aos <- str_to_lower(aos)
afr <- str_to_lower(afr)
eu <- str_to_lower(eu)
cari <- str_to_lower(cari)
piss <- str_to_lower(piss)
nun <- str_to_lower(nun)
least <- str_to_lower(least)
land <- str_to_lower(land)
clam <- str_to_lower(obo_clam)
ldc <- str_to_lower(obo_ldc)

### word correction
badwords.corpus <- c("teared", "TK", "peooooople", "clan", "science-based", "paletine", "opeions",
                     "heriatge", "aprties", "negotions", "pricniple", "intergate", "instument", "particualr",
                     "countrities", "florr", "shairng", "intrnational", "volontary", "coomon",
                     "heriatge", "CBBD", "repition", "oh", "japoanese", "hritage",
                     "bahelf", "obo", "on behalf od", "isaland", "caribean", "ngos", "sg",
                     "King & Spalding", "mauritious", "hihglight", "picis","chanes",
                     "enviornment", "jurisditional", "stats", "broadenin", "differentite", "diffrent", "eploratory",
                     "actiities", "acidificaiton", "trasnparency", "isses", "bioduversity", "unsustaible", "accidifcation",
                     "elemetns", "cliamte", "modifiyng", "alge", "legeal", "releavnt", "patchworkd", "systeam",
                     "agreeement", "mesaures", "mouvements", "notificisiton", "suficently", "advanceents",
                     "descriotions", "accoustic", "refernece", "panned", "hamr", "eveniotnment","treshhold", "trshhold",
                     "soveriegn", "archipelaig", "sontinental", "coean", "transbounrady", "accoutn", "adjecient", "impats", 
                     "instrumnt", "impct", "metnioned", "baus", "anothet", "souvereighn", 
                     "wibed", "trandboundary", "algaeria", "scinetific", "sction", "evalluate", "wehre", "avialbale",
                     "scinece", "relfect", "ipccc", "ocnsitent", "traditinal", "crtieria", "ebsta", "soverreign",
                     "assessmen", "defitnion", "defition", "defintions", "cartegena", "dorsee", "tribunal for the law of the sea",
                     "cooepration", "awnj", "oceanic comminssin", "assesssmentt", "assessmenttt", "noa", "angoya", "conservaiton",
"reserach", "workding", "precautiaonary", "exmaple", "ioc_unesco", "guidilnes","cuntries", "scracth", "researhcers", "technoloyg",
"technoligy", "technooyg", "braodly", "involunary", "aprotpotae", "aextending", "foam", "organsaion", "exising",
"clearing house", "celaring", "hav", "specifis", "insturment", "collet", "informaiton", "follwoing",
"informatio", "implementaiton", "desirbaility", "isntrumente", "supprot", "regaret", "aiuthorty", "equlity", "occirs",
"hgihest", "reocgnition", "decision making", "rfmos", "regional fisheries management organizations", "undermaine", "haveee",
"mechnaisms", "emasures", "toerh", "gurther", "convetion", "tofer",
' ist ', 'havee', 'consultaiton', 'identificaiotn', ' i ', 'informationn ', 'assessmentt', 'assessmentts ', 'yb ', ' ad ', 
'cimmoitted ', 'dumpling', 'atalntic', 'comrpises ', 'madnate ', 'memorandom ', 'multialteral ', 'establihsed ', 'arrangemnt',
'possibe', 'loctaed', 'wiht ', 'reccommendations', 'consevation', 'secreatiat', 'iten', 'organisaitonal', 'compsoition', 'memberes', 
'presdient', 'foloowing','european',
'waht' ,'havee' ,'menas' ,' ot ' ,'respectt' ,'informationn' ,'sharinf' ,'taks' ,'eprovisiosn' ,'enahnce' ,'mehcanism' ,' si ',
'coutnries' ,'agreemnets' ,'communiting' ,'reguluating' ,'approprite' ,'curretn','translatin','amke','difficutl','volutarny',
'geentic','theri','haveing','cann','doe','snto','ius','bean',' adn ','htese','eissue','thos',' sin ',' din ',
'informationn', 'organsiation', 'enure', 'waht', 'theis', 'contex', 'avaible', 'geoups', 'peacful',
'shuld', 'waht', 'enahnce',
'assessmentts','wihtout','htis','viewes','volunatrybeenfit','acces','suport','benefir','entitiy','juridsection',
'exploiation','govrment','waht','theis','contex','availble','refelct','genration','conservtion','supoort','exerise',
'volunatriyl','objectuve','havee',' ist ','assessmentt','knowlegde','fleyible','susbtance','negitions',
'decions','basee','organsiaiton','havee','promotr','capacty','cooerationa','effectie','procesudres','desirbale','heere.',
'committet','canu','objectuve','woth','fleyible', 
'assessmentt', 'relationshio<U+FFFD>s tp tofer', 'genral', 'principels', 'mechsnism', 'relatio to tofer', 'ters', 'arrnagements',
'nto', 'lits', 'deciison', 'cbtt', 'coorination', 'ters', 'temrs', ' proviison ', 'itsu', 'funing', 
'tk', "develeopment", "deicsoins", " sec ", "ooperationalised", "fwlible", "textul", "liek",
"consenssus", "finl", "anyhting", "tgether", "tranparent", "proviisons", "definitoin", "tred", "faclitation", "holistic",
" sust ", "oncpet", "optoin", "soecific", "chnages", " camlr ", "nhabitants", "ditsingush", "definioof", "importnat",
"inlcude", "suggeitson", "conservaito", "conservationa", " nd ", "adoto", "isngapore", "thnaks", "braoder", "includeing",
"withsmal", "breidge", "drfating", "competnet", "ccoperation:.", "inckude", "africna", "intenrationla", "inot", "consultatino on",
"consultatino", "monitoing", "responisbility", "monitring", "exitisng", "responisbilities", "objecives", "objecties",
"poissbility", "rleevnt", "constency", "prposed", "acitivites", "msut", "condier", "dleegates", "birng",
"cnsult", "memebrs", "reserch", "exitsing", "doess", "estalishing", "coperatoin", " mech ", "anoter", "interfeere", "manate",
"isze", "felyible", "plcement", "cnisder", "acience", "avaiablel", "incluing", "cietific", "infonite", "staekhodlers", "stakeodlers",
"scirntific", "ebsas-", "dicsuison", "oulinign", "sesison", "diffeentiate", "approaritate", " faor ", "xitsing", "proviisonal", "posisbility",
"mechainsm", "trasnfer", "insitutional", " tresholds ", "managemnt", "builing", " as a whole ", "analyiss", " tk " , " accessss ", " accesss ",
"clering house mechanism", " tk", " cbtt", " word bank",
"establish>",  "estbalish", "estblaih", "estblish",
"establishment>", "estbalishment", "estbalishemtn", "estbalihsment", "estblaihsment", "estbalishment", "estbalishemtn", "estbalihsmentv", "estbalisment", "estbalishemnt", "estbalihsment",
"established>", "estbalished", "estblished", "estbalihed", "estbalihed", "estblishe", "estbaished", "estbalihsed", "estbalied", "estbalished", "estbalihsed", "estblishes", 
"establishing>", "estbalishing", "estbalihisng", "estbaishing", "conisder", "poissble", "preisdent", "biodiveritsy", "baiss",
"discuissons", "discuisson", " tri ", "plastix", "egotiating", "avialbel", "avialbel", "inedigesou", "scientifi", " knoldge ", " ismilar ", " borad ", "ditiscintion", " lcate ", "demans", " gnetic ",
"defintion", "ditisnct", "esnure", "paragraofs", "instrinsci", "culturl", "agreemetn", "exiisng", "preferencess", "negoitations", "negoitation ", "sueful", "intermsessional", "effetive",
"memebr states", "worlshops", " gavor ", "maissve", " mayn ", "biodiveritsy", " canot ", "consulation", "incluison", " whle ", "frsmework",
"sufficent", "sanctino", "envirnemtnal", "imapct", "poissble", "discuisson", "preisdents",
"isncere", "collecitve", "holitically", " poeple ", " progres ", "ruissan", " bining ", " fulfull ", " polticla ", " riased ", 
" underine ", " isxth ", " oppoitison ", " imited ", " isx ", "souverainty", " connectoin ", "civilsociety", " concrns ", " attnetino ", "nnnegotiating",
"aisapacific", "aggreisson", "consideratoins", " stpe ", " venezuea ", " affiars ", " agreissng ", " agreissve ", " aissdt ", " andcommercialisation ",
" aprticipated ", " approapite ", " athmposher ", " attemtp ", " backrgound ", " balnaces ", " beenn "," belonsecretariats ", " benefi ", 
" biologits ", " brders ", "burocrotised", "capabitlities", " copw ", " ith ", " scintific ", "ditisnguished", "scientificcccc", " para ",
"contextttttualize", "excurisons", "compoitison", "ruissand", "paragrpahs", "ditisnguished", "expreissons", "focuisng", "contexttttttts", 
"microneisa", "importanc eto", " reently", "contexttttt"," yu ", " cnanot ", " disucisson ", " shoud ", " scientificccc ", "evidenece", "iscneitfic", 
" consideratoin ", " conyl ", " comunties ", " possble ", " negitve ", " impat ", " poitisve ", " anegtive ", " pictute ", " scientificccc ", "scientificcc", "supposedto",
"postoned", "resteuctions", " huans ", "favour ", "adviisng", "govrnment", "representtives", "zize ", " ppol ", "cliamre", "adviisng", "etsablishing",
"concluison", "cuationed", " cloisn ", "opoorutnity", "securesustainablefuture", "characteritiscs", "coorinated", "productiviy", "somethig", "stckhold",
"exhstiave"," cna ", "monitorng", "increaisng", "scientitss", "claimte", "miniumun","insitutions","thoseee", "metnion", "rpeamble",
"knowldge", "anayliss", "decisonming", "mairne ", "obectives", "avaiaebe", "envirnmentla", "agreemnrts", "compoment", "agrements", "avialable", "knowledge",
"alredy", "alongisde", "scientificc", "nnegotiating", "commuticies", "iportant", "condut", "rigths", "knwoldge", "deifnitions", "intetntion",
"docuemnts", "beacuse", " thses ", "otherwiese", " relly ", "deifinitions", "firts", " rase ", "juridction", "considere", "annunced", "potnetial", "proviing",
"assesment", "honour", "preceing", "guiing", "reainess", "accoring", "isxty", "incluisve", "caribbe an", "diveritsy", "itselfwith",
"isnce", "ariisng", "finings", "ismultaneously", " thses ", "shoudl", "frameowrks", "midn ym", "tthat", " htere ", "funciotning", " bvest ",
"antional", "knowlede", "amnagement", "movilize", "mehcnaism", " us eof ", "activiteis", "rpocess", "operatunalization", "isntrument", "comunities",
"kolwdge", "itsrument", "knoledge", "knoeldge", "onbody", "cooperatino", "tehnical", "fashain", "flexibitli", "invilving",
" bdies ", "creatng", "prties", "wrking", "woudl", " dela ", "everyhing", "asseginenvirinemtnal", "grdual", " coud ",
"prvdinsceintfic", " onw ", "scintific", "tehcnclogy", "addtoinal", "reviewifn", "adviroor", "funotin", "amkgin", "siimilr", "int he", "withother",
"duplicatoin", "detiles", "detaield", "exaclt",  "int he", "resevre", "mightnot", " temr ", "descisoinaig", "canot", "clrif", "giid", "spport", "sipport",
"prts", "negotition", "negottoin", " iketo ", "establisig", "decisied", "simplif", "workinf", "decied", "dsiturbance", " klum ", "regocnize", "implemntation",
"arican", "chapterms", " maing ", "tranpsrency", "gepgraphicap", "implenetation", "basedon", "eleent", "ecperts", "advcive", "wualitifacitos", "2/3 majortiy", "accessss", "acess",
"activitybased", "nagoye", "areasidentified", "hsairng", "practuce", "call inmechanismfor", "ccompliance", " clearinghouse ", " mech ", "clearing-ouse", "climat chnage", "coference",
"ccompliance committee", "comimitee", " consus ", "coonducted", "complementariy", "adoptingcomplemntary", "cross cutting", "cumulaitve", "deccision", "decison making", "brakets", "brackts",
"derivates", "disute", " ebas ", "follow-up", "coastla", "identificatio", "idicative", "implemenation", "implementation & compliance", "incudnig", "arragements", "cooepraiton",
"internationalisation", "internationalisato", "involevemnt", "involevment", "activties", "activkites", "activiites", "activkites", "actities", "ofactivities", " agreet ", " hwn ", "debrit",
"minium", "glabl", "cooriantion", "monitorin and revie", "activiites", "monitroing", " mrg ", "non-parties", " trits fund", "parameterms",
"as far a spracticable", "adjanect", "scinetifc", "knowdge", "knowledged", " statges ", "spaish", " xxx ", "ammend", "cion ", "cn ", "con/flecible", "con/flex", "felible", "felx",
"felxble", "felxibel", "felxible", "felxile", "feöxbiien", "flecibel", "flecible", "fleible", "fleixbie", "fleixble", "fleixible", "flex ", "flexibe", "flexibel", "flexibke", "fley ",
"fleyible", "fllexibke", "flxible", "fpro ", "maby ", "neutrla", "opro ", "resevre", "secnd ", 'complaince', "informationthat", "alreadz", " thge ", " opern ", "thosee", "rewuire", "whcih", "semergency",
"abaialbe", "reommend", " deegatio ", "rocess", "letterms", " fro ", "thannk", "societyandwhere", " ave ", "roganisation", " lal ", " fro ", " form ", " ssue ", "assits", " looki ", " qhich ", " fr ",
"informationon", "ratinale", " nw ", "importatnt", " ust ", "interpreatiions", " wrk ", "finacialmechanismor", "sessino", "withall", "themselvesto", "submittd", "hsare", "ompilaiton", "tracj", "facilitatiors",
"opne", "smallnumbers", "thnk", "pther", "questoinsin", "peple", " tha ", "negotiaiotns", " gove ", " sam ", "submissinos", "haveinng", " nme ", " agai ", " nt he ", "subatante", " latr ", "deends", "strt",
"entireyl", " oin ", " thosee, ", "drfting", "paralle", "committeeß", " ony ", "prgram", "awhile", "bissuesd", " takn ", "ont he", "questoins", "negotiing", " hte ", "breifing", " ddi ", "rcieve", " tp ",
"coordinat", "oporuntiy", " tates ", "meetin", "aeveryone", "sessoin", "everyton", " wil ", "facilitotors", "reort", " hvae ", "importat", "prwepared", "matterms", "joinging", "issunderstanding", "meetingg",
"understading", "pprocess", "beign ", "helpfl", "devlopment", " wihs", "invovle", "metting", "failitators", "interesessional", "prpreciate", "doncisderation", " seonc ", "otehr", "meetinggs", " oehr ",
"elegations", " fornt ", "modlities", " understake", "intermssional", "interesessional ", " ahve ", "isntruction", " fourm ", " imilar ", " littel ", " taht ", "rgoups", "repsonse", "quesitons ", "regitsered",
"quesiton", "multilateralcontexttts", " oyu ", "disucssionw", "programandthe", "oucomes", " fo ", " arabai ", "quesitons", "outocme", "meetinggs", "incidently", "themsleves", "quesiton", "noimnate", " qith ",
"easiers", "quesiton", "delgations", "effeort", "pprocess", "itnerested", "familiared", "definetely", "quesiton", "reposnded", "plattform", "quesiton", "secretaart", "interesessional", "quesiton", "commets", "quesiotns",
"epxlore", "negotiatie", " favor ", "ocenas", "plafotm", "joingini", " wihsh ", " goo ", " irst ", "intermsessionaal", "advanatge", " tahnk ", "techincal", "reaosning", " fornt ", "pprocesses", "proceses",
"impotant", " beging ", " programm ", " paer ", " wnet ", "therehave", " menat ", "emchanism", "provisiosn", "coferent", "detial", " mroe ", "aprticularly", "coordinatee", "tot ake", " elave ", "breifly",
" ans ", " delegationn ", " loor ", "ecologicla", "connecivitx", "problbale", "contexttt", "coordinateing", "ddelegation", "tranaprency", "simplifyy", "turnign", " wach ", "listbut", "estbalihs", "estbasilh",
"technoclgy", "relevnt", "tot he", "impoerant", " gruop ", "carricom", "palce", "faciltiaitng" 
  


badwords.corpus <- str_to_lower(badwords.corpus)
goodwords.corpus <- c("tiered", "traditional knowledge", "people", "CLAM", "science based", "palestine", "options",
                      "heritage", "parties", "negotiations1", "principle", "integrate", "instrument", "particular",
                      "countries", "floor", "sharing", "international", "voluntary", "common",
                      "heritage", "CBD","repetition", "of", "japanese", "heritage",
                      "behalf", "on behalf of", "on behalf of", "island", "caribbean", "ngo", "secretariat",
                      "independent international legal advocates", "mauritius","highlight", "psids", "changes",
                      "environment", "jurisdictional", "states", "broadening", "differentiate", "different", "exploratory",
                      "activities", "acidification", "transparency", "issues", "biodiversity", "unsustainable", "acidification",
                      "elements", "climate", "modifying", "algae", "legal", "relevant", "patchwork", "system",
                      "agreement", "measures", "movements", "notification", "sufficiently", "advancements",
                      "descriptions", "accoustic", "reference", "planned", "harm", "environment", "treshold", "treshold",
                      "sovereign", "archipelagic", "continental", "ocean", "transboundary", "account", "adjacent", "impacts",
                      "instrument", "impact", "mentioned", "basis", "another", "souvereign", 
                      "wiped", "transboundary", "algeria", "scientific", "section", "evaluate", "where", "available",
                      "science", "reflect", "ipcc", "consistent", "traditional", "criteria", "ebsa", "sovereign",
                      "assessment", "definition", "definition", "definition", "cartagena", "DOSI", "itlos",
                      "cooperation", "abnj", "ioc", "assessment", "assessment", "noaa", "nagoya", "conservation",
"research", "wording", "precautionary", "example", "ioc unesco", "guidelines", "countries", "scratch", "researchers", "technology",
"technology", "technology", "broadly", "involuntary", "appropriate", "extending", "rfmo", "organization", "exising",
"clearing-house", "clearing", "have", "specifies", "instrument", "collect", "information", "following",
"information", "implementation", "desirability", "instrument",  "support", "regret", "authority", "equality", "occurs",
"highest", "recognition", "decision-making", "rfmo", "rfmo", "undermine", "have",
"mechanisms", "measures", "other", "further", "convention", "other",
' its ', 'have', 'consultation', 'identification', ' I ', 'information', 'assessment', 'assessments', 'by', 'and', 
'committed', 'dumping', 'atlantic', 'comprises', 'mandate', 'memorandum', 'multilateral', 'established', 'arrangement',
'possible', 'located', 'with', 'recommendations', 'conservation', 'secretariat', 'item', 'organisational', 'composition', 'members',
'president', 'following', 'european', 
'what',  'have',  'means',  ' to ',  'respect',  'information',  'sharing',  'task',  'provisions',  'enhance',  'mechanism',  ' is ', 
'countries',  'agreements',  'community',  'regulating',  'appropriate',  'current',  'translating',  'make',  'difficult',  'voluntary',
'genetic',  'their',  'having',  'can',  'does',  'not',  'us',  'be an',  ' and ',  'these',  'issues',  'those',  ' in ',  ' in ', 
'information', 'organization', 'ensure', 'what', 'this', 'context', 'available', 'groups', 'peaceful',
'should', 'what', 'enhance',
'assessments','without','hits','views','voluntary benefit','access','support','benefit','entity','jurisdiction',
'exploitation','government','what','this','context','available','reflect','generation','conservation','support','exercise',
'voluntarily','objective','have',' its ','assessment','knowledge','flexible','substance','negotiations',
'decision','base','organisation','have','promote','capacity','cooperational','effective','procedures','desirable','here',
'committee','can','objective','worth','flexible',
'assessment', 'relationship to other', 'general', 'principles', 'mechanism', 'relation to other', 'terms', 'arrangements',
'not', 'list', 'decision', 'cbtmt', 'coordination', 'terms', 'terms',' provision ', 'situ', 'funding',
'traditional and indigenous knowledge', "development", "decisions", " secretariat ", "operationalized", "flexible", "textual", "like",
"consensus", "final", "anything", "together", "transparent", "provisions", "definition", "tried", "facilitation", "holitic",
"sustainable", "concept", "option", "specific", "changes", " ccamlr ", "inhabitants", "distinguish", "definition of", "important",
"include", "suggestion", "conservation", "conservation", " and ", "adopt", "singapore", "thanks", "broader", "including",
"with small", "bridge", "drafting", "competent", "cooperation:", "include", "african", "international", "into", "consultation", 
"consultation", "monitoring", "responsibility", "monitoring", "existing", "responsibilities", "objectives", "objectives",
"possibility", "relevant", "consistency", "proposed", "activities", "must", "consider", "delegates", "bring",
"consult", "members", "research", "existing", "does", "establishing", "cooperation", "mechanism", "another", "interfere", "mandate",
"size", "flexible", "placement", "consider", "science", "available", "including", "scientific", "infinite", "stakeholders", "stakeholders",
"scientific", "ebsas", "discussion", "outlining", "session", "differentiate", "appropriate", " favor ", "existing", "provisional", "possibility",
"mechanism", "transfer", "institutional", " thresholds ", "management", "building", " as a whole ", "analysis", " traditional knowledge ", " access ", " access ",
"clearing-house mechanism", " traditional knowledge", " cbtmt", " world bank",
"establish", "establish", "establish", "establish",
"establishment", "establishment", "establishment", "establishment", "establishment", "establishment", "establishment", "establishment", "establishment", "establishment", "establishment",
"established", "established", "established", "established", "established", "established", "established", "established", "established", "established", "established", "established",
"establishing", "establishing", "establishing", "establishing", "consider", "possible", "president", "biodiversity", "basis",
"discussions", "discussion", " try ", "plastic", "negotiating", "avialable", "available", "indigenous", "scientific", " knowledge ", " similar ", " broad ", "distinction", " locate ", "demands", " genetic ",
"definition", "distinct", "ensure", "paragraphs", "intrinsic", "cultural", "agreement", "existing", "preferences", "negotiations", "negotiation", "useful", "intersessional", "effective",
"member states", "workshops", " favor ", "massive", " many ", "biodiversity", " cannot ", "consultation", "inclusion", " whole ", "framework",
"sufficient", "sanction", "environmental", "impact", "possible", "discussion", "presidents",
"sincere", "collective", "holistically", " people ", " progress ", "russian", " binding ", " fulfill ", " political ", " raised ",
" undermine ", " sixth ", " opposition ", " limited ", " six ", "souvereignty", " connection ", "civil society", " concerns ", " attention ", "negotiating",
"specific", "aggression", "considerations", " step ", " venezuela ", " affairs ", " adressing ", " aggressive ", " assist ", " and commercialisation ",
" anticipated ", " appropriate ", " atmosphere ", " attempt ", " background ", " balances ", " been "," belongs ", " benefit ", 
" biologist ", " borders ", "bureaucratized", "capabilities", " cop ", " with ", " scientific ", "distinguished", "scientific", " paragraph ",
"contextualize", "excursions", "composition", "russian", "paragraphs", "distinguished", "expressions", "focusing", "contexts",
"federated states of micronesia", "importance to", "recently", "context", " you ", " cannot ", " discussion ", " should ", " scientific ", "evidence", "scientific", 
" consideration ", " only ", " communities ", " possible ", " negative ", " impact ", " positive ", " anegtive ", " pictute ", " scientific ", "scientific", "supposed to",
"postponed", "restrictions", " humans ", "favor ", "advisng ", "government", "representatives", "size ", " pool ", "climate", "advisng ", "establishing",
"conclusion", "cautioned", " closing ", "opportunity", "secure sustainable future", "characteristics", "coordinated", "productivity", "something", "stockholm",
"exhaustive", " can ", "monitoring", "increasing", "scientists", "climate", "minimum", "institutions", "those", "mention", "preamble",
"knowledge", "analysis",  "decision making", "marine ", "objectives", "available", "environmental", "agreements", "component", "agreements", "available", "knowledge",
"already", "alongside", "scientific", "negotiating", "communities", "important", "conduct", "rights", "knowledge", "definitions", "intention",
"document", "because", " these ", "otherwise", " really ", "definitions", "first", " raise ", "jurisdiction", "consider", "announced", "potential", "providing",
"assessment", "honor", "preceding", "guiding", "readiness", "according", "sixty", "inclusive", "caribbean", "diversity", "itself with",
"since", "arising", "findings", "simultaneously", " these ", "should", "frameworks", "mind my", "that", " there ", "functioning", " best ",
"national", "knowledge", "management", "mobilize", "mechanism", " use of ", "activities", "process", "operationalisation", "instrument", "communities",
"knowledge", "instrument", "knowledge", "knowledge", "on body", "cooperation", "technical", "fashion", "flexibility", "involving",
" bodies ", "creating", "parties", "working", "would", " deal ", "everything", "assign environmental", "gradual", " could ",
"provide scientific", " own ", "scientific", "technology", "additional", "reviewing", "advisor", "function", "making", "similar", "in the", "with other",
"duplication", "detailed", "detailed", "excatly", "in the", "reserve", "might not", " term ", "decision making", "can not", "clarify", "good", "support", "support",
"parts", "negotiation", "negotiation", " like to ", "establishing", "decided", "simplify", "working", "decide", "disturbance", " clam ", "recognize", "implementation",
"african", "chapters", " making", "transparency", "geographical", "implementation", "based on", "element", "experts", "advice", "qualifications", "2/3 majority", "access", "access",
"activity based", "nagoya", "areas identified", "sharing", "practice", "call-in mechanism for", "compliance", " clearing-house ", " mechanism ", "clearing-house", "climate change", "conference",
"compliance committee", "committee", " consensus ", "conducted", "complementary", "adopting complemntary", "cross-cutting", "cumulative", "decision", "decison-making", "brackets", "brackets",
"derivatives", "dispute", " ebsas ", "follow up", "coastal", "identification", "indicative", "implementation", "implementation and compliance", "including", "arrangements", "cooperaiton",
"internationalization", "internationalization", "involvement", "involvement", "activities", "activities", "activities", "activities", "activities", "of activities", " agreed ", " when ", "debris",
"minimum", "global", "coordination", "monitoring and review", "activities", "monitoring", " mgr ", "non parties", " trust fund", "parameters",
"as far as practicable", "adjacent", "scientific", "knowledge", "knowledge", " stages", "spanish", " xx ", "amend", "con ", "con ", "con/flexible", "con/flexible", "flexible", "flexible",
"flexible", "flexible", "flexible", "flexible", "flexible", "flexible", "flexible", "flexible", "flexible", "flexible", "flexible", "flexible ", "flexible", "flexible", "flexible", "flexible ",
"flexible", "flexible", "flexible", "pro ", "may ", "neutral", "pro ", "reserve", "second ", 'compliance', "information that", "already", " the ", " open ", "those", "review", "which", "emergency",
"available", "recommend", " delegation ", "process", "letters", " for ", "thank", "society and where", " have ", "organisation", " all ", " for ", " from ", " issue ", "assist", " looking ", "which ", " for ",
"information on", "rationale", " now ", "important", " just ", "interpreations", " work ", "finacial mechanism or", "session", "with all", "themselves to", "submitted", "share", "compilaiton", "track", "facilitators",
"open", "small numbers", "think", "other", "questoins in", "people", " that ", "negotiations", " give ", " same ", "submissions", "having", " me ", " again ", " in the ", "substantive", " later ", "depends", "start",
"entirely", " in ", "those", "drafting", "parallel", "committee", " only ", "program", "a while", "be issued", " taken ", "on the", "questions", "negotiating", " the ", "briefing", " did ", "receive", " to ",
"coordinate", "opportunity", " states ", "meeting", "everyone", "session", "everyone", " will ", "facilitators", "report", " have ", "important", "prepared", "matters", "joining", "missunderstanding", "meeting",
"understanding", "process", "being ", "helpful", "development", " wish", "involve", "meeting", "facilitators", "intersessionals", "appreciate", "concideration", " second ", "other", "meetings", " other ",
"delegations", " front ", "modalities", " undertake", "intersessional", "intersessional", " have ", "isntruction", " forum ", " similar ", " little ", " that ", "groups", "response", "questions", "registered",
"question", "multilateral contexts", " oyu ", "disucssion", "programme and the ", "outcomes", " for ", " arabia ", " questions", "outcome", "meetings", "incidentally", "themselves", "questions", "nominate", " qith ",
"easier", "question", "delegations", "effort", "process", "interested", "familiar", "definitely", "question", "responded", "platform", "question", "secretariat", "intersessional", "question", "comments", "questions",
"explore", "negotiate", " favour ", "oceans", "platform", "joining", " wish ", " good ", " first ", "intersessional", "advantage", " thank ", "technical", "reasoning", " front ", "processes", "processes",
"important", " begin ", " program ", " paper ", " went ", "there have", " meant ", "mechanism", "provisions", "coherent", "detail", " more ", "particularly", "coordinate", "to take", " leave ", "briefly",
" and ", " delegation ", " floor ", "ecological", "connectivity", "probably", "context", "coordinating", "delegation", "transparency", "simplify", "turning", " each ", "list but", "establish", "establish",
"technology", "relevant", "to the", "important", " group ", "caricom", "place", "facilitating"
)





goodwords.corpus <- str_to_lower(goodwords.corpus)

vect.corpus <- goodwords.corpus
names(vect.corpus) <- badwords.corpus
### replace bad words with good words
#bbnj$actor <- str_replace_all(bbnj$actor, vect.corpus)
temp$comment_obs <- str_replace_all(temp$comment_obs, vect.corpus)
temp$observation <- str_replace_all(temp$observation, vect.corpus)
temp$option_detail <- str_replace_all(temp$option_detail, vect.corpus)
temp$issue_detail <- str_replace_all(temp$issue_detail, vect.corpus)
bbnj$issue_scientific <- str_replace_all(bbnj$issue_scientific, vect.corpus)
bbnj$pro_contra <- str_replace_all(bbnj$pro_contra, vect.corpus)


temp$pro_contra <- str_to_title(temp$pro_contra)

### cleaning pro_contra
temp$pro_contra[temp$pro_contra=="Po"] <- 'Pro'
temp$pro_contra[temp$pro_contra=="Opro"] <- 'Pro' 
temp$pro_contra[temp$pro_contra=="Por"] <- 'Pro'
temp$pro_contra[temp$pro_contra=="Ppro"] <- 'Pro'
temp$pro_contra[temp$pro_contra=="pro/fle/flexible"] <- 'Pro/flexible'
temp$pro_contra[temp$pro_contra=="Proi"] <- 'Pro'
temp$pro_contra[temp$pro_contra=="Prr"] <- 'Pro'
temp$pro_contra[temp$pro_contra=="Pto"] <- 'Pro'
temp$pro_contra[temp$pro_contra=="Rpo"] <- 'Pro'
temp$pro_contra[temp$pro_contra=="Xon"] <- 'Con'

temp$pro_contra <- str_to_lower(temp$pro_contra)


temp$actor <- str_to_title(temp$actor)

unique(temp$actor)
###

temp$package[temp$package == 50] <- 5

temp$actor[temp$actor=="??"] <- 'Xxx'
temp$actor[temp$actor=="?"] <- 'Xxx'
temp$actor[startsWith(temp$actor, "X")] <- "All"


temp$actor[temp$actor=="Cut"] <- 'Break'

## correcting naming mistakes
temp$actor[temp$actor=="Us"] <- 'USA'
temp$actor[temp$actor=="US"] <- 'USA'
temp$actor[temp$actor=="Usa"] <- 'USA'
temp$actor[temp$actor=="Uusa"] <- 'USA'


temp$actor[temp$actor=="United States"] <- 'USA'
temp$actor[temp$actor=="United States Of America"] <- 'USA'
temp$actor[temp$actor=="United Kingdom Of Great Britain And Northern Ireland"] <- 'UK'
#temp$actor[temp$actor=="Uk"] <- 'United Kingdom'
temp$actor[temp$actor=="United Kingdom"] <- 'UK'
temp$actor[temp$actor=="Uk"] <- 'UK'
temp$actor[temp$actor=="Uf"] <- 'UK'

temp$actor[temp$actor=="Russian Federation"] <- 'Russia'
temp$actor[temp$actor=="Russian Fed"] <- 'Russia'
temp$actor[temp$actor=="Russsia"] <- 'Russia'
temp$actor[temp$actor=="Rusiia"] <- 'Russia'
temp$actor[temp$actor=="Alegeria"] <- 'Algeria'
temp$actor[temp$actor=="Alergia"] <- 'Algeria'
temp$actor[temp$actor=="Alregia"] <- 'Algeria'
temp$actor[temp$actor=="African Union"] <- 'Algeria'
temp$actor[temp$actor=="Africain Group"] <- 'Algeria'
temp$actor[temp$actor=="Aus"] <- 'Australia'
temp$actor[temp$actor=="Ausralia"] <- 'Australia'
temp$actor[temp$actor=="Autstralia"] <- 'Australia'
temp$actor[temp$actor=="Australai"] <- 'Australia'
temp$actor[temp$actor=="Austrlia"] <- 'Australia'
temp$actor[temp$actor=="Austrlia"] <- 'Australia'
temp$actor[temp$actor=="Austtralia"] <- 'Australia'
temp$actor[temp$actor=="Autralia"] <- 'Australia'
temp$actor[temp$actor=="Austalia"] <- 'Australia'
temp$actor[temp$actor=="Austraia"] <- 'Australia'
temp$actor[temp$actor=="Australie"] <- 'Australia'
temp$actor[temp$actor=="Austrlaia"] <- 'Australia'
temp$actor[temp$actor=="Suatralia"] <- 'Australia'

temp$actor[temp$actor=="Argentna"] <- 'Argentina'
temp$actor[temp$actor=="Aregntina"] <- 'Argentina'
temp$actor[temp$actor=="Arentina"] <- 'Argentina'
temp$actor[temp$actor=="Agrentina"] <- 'Argentina'
temp$actor[temp$actor=="Aregentina"] <- 'Argentina'
temp$actor[temp$actor=="Argenitna"] <- 'Argentina'
temp$actor[temp$actor=="Argetnina"] <- 'Argentina'
temp$actor[temp$actor=="Argentina Obo Clam"] <- 'Argentina'


temp$actor[temp$actor=="Antigua"] <- 'Antigua And Barbuda'
temp$actor[temp$actor=="Antiua And Barbados"] <- 'Antigua And Barbuda'
temp$actor[temp$actor=="Antigua And Barbados"] <- 'Antigua And Barbuda'
temp$actor[temp$actor=="Antiugua And Barbuda"] <- 'Antigua And Barbuda'
temp$actor[temp$actor=="Anitgua And Barbuda"] <- 'Antigua And Barbuda'
temp$actor[temp$actor=="Antigua And Bermuda"] <- 'Antigua And Barbuda'
temp$actor[temp$actor=="Atigua And Barbuda"] <- 'Antigua And Barbuda'
temp$actor[temp$actor=="Antigua Andbarbuda"] <- 'Antigua And Barbuda'



temp$actor[temp$actor=="Azustralia"] <- 'Australia'
temp$actor[temp$actor=="Australlia"] <- 'Australia'
temp$actor[temp$actor=="Medhi Remaon"] <- 'Algeria'
temp$actor[temp$actor=="Argentinia"] <- 'Argentina'
temp$actor[temp$actor=="Barabados"] <- 'Barbados'
temp$actor[temp$actor=="Barbedos"] <- 'Barbados'
temp$actor[temp$actor=="Badbados"] <- 'Barbados'
temp$actor[temp$actor=="Babados"] <- 'Barbados'
temp$actor[temp$actor=="Barbaods"] <- 'Barbados'
temp$actor[temp$actor=="Barbardos"] <- 'Barbados'
temp$actor[temp$actor=="Barabdos"] <- 'Barbados'
temp$actor[temp$actor=="Barbads"] <- 'Barbados'
temp$actor[temp$actor=="Bardador"] <- 'Barbados'
temp$actor[temp$actor=="Basbados"] <- 'Barbados'
temp$actor[temp$actor=="Brabados"] <- 'Barbados'
temp$actor[temp$actor=="Barbados Obo Caricom"] <- 'Barbados'

temp$actor[temp$actor=="Caricom (Kahlil)"] <- 'Barbados'
temp$actor[temp$actor=="Caricom Kahlil"] <- 'Barbados'

temp$actor[temp$actor=="Baha,Mas"] <- 'Bahamas'
temp$actor[temp$actor=="Bahaman"] <- 'Bahamas'


temp$actor[temp$actor=="Boivia"] <- 'Bolivia'

temp$actor[temp$actor=="Burkino Faso"] <- 'Burkina Faso'

temp$actor[temp$actor=="Bangladesch"] <- 'Bangladesh'
temp$actor[temp$actor=="Bangaldesh"] <- 'Bangladesh'
temp$actor[temp$actor=="Bangldesh"] <- 'Bangladesh'
temp$actor[temp$actor=="Brasil"] <- 'Brazil'
temp$actor[temp$actor=="Vrazil"] <- 'Brazil'
temp$actor[temp$actor=="Barazil"] <- 'Brazil'
temp$actor[temp$actor=="Berlgium"] <- 'Belgium'
temp$actor[temp$actor=="Belgien"] <- 'Belgium'
temp$actor[temp$actor=="Belice"] <- 'Belize'
temp$actor[temp$actor=="Belize Obo Caricom"] <- 'Belize'

temp$actor[temp$actor=="Camroon"] <- 'Cameroon'
temp$actor[temp$actor=="Camerron"] <- 'Cameroon'
temp$actor[temp$actor=="Caeroon"] <- 'Cameroon'
temp$actor[temp$actor=="Camaeroon"] <- 'Cameroon'
temp$actor[temp$actor=="Camerroon"] <- 'Cameroon'


temp$actor[temp$actor=="Camaera On Iran"] <- 'Cameroon'

temp$actor[temp$actor=="Dom Rep"] <- 'Dominican Republic'



temp$actor[temp$actor=="Cabada"] <- 'Canada'
temp$actor[temp$actor=="Cnaada"] <- 'Canada'
temp$actor[temp$actor=="Canada Coming Back"] <- 'Canada'
temp$actor[temp$actor=="Canda"] <- 'Canada'
temp$actor[temp$actor=="Cananda"] <- 'Canada'
temp$actor[temp$actor=="Cnada"] <- 'Canada'
temp$actor[temp$actor=="Cadand"] <- 'Canada'
temp$actor[temp$actor=="Canaad"] <- 'Canada'

temp$actor[temp$actor=="Cr"] <- 'Costa Rica'
	
temp$actor[temp$actor=="Chair-Nulifer Oral"] <- 'Chair'
temp$actor[temp$actor=="Cil"] <- 'Chair'

temp$actor[temp$actor=="Clam/ Guatemala"] <- 'Clam'

temp$actor[temp$actor=="Credentals Commitee Ireland"] <- 'Credentals Commitee'



temp$actor[temp$actor=="Cape Verde"] <- 'Cabo Verde'
temp$actor[temp$actor=="Columbia"] <- 'Colombia'
temp$actor[temp$actor=="Colimbia"] <- 'Colombia'
temp$actor[temp$actor=="Colobia"] <- 'Colombia'
temp$actor[temp$actor=="Chin"] <- 'China'
temp$actor[temp$actor=="Chiane"] <- 'China'
temp$actor[temp$actor=="Chine"] <- 'China'
temp$actor[temp$actor=="Chiana"] <- 'China'

temp$actor[temp$actor=="Cote D`Ivoire"] <- 'Cote dIvoire'
temp$actor[temp$actor=="Cote Divoire"] <- 'Cote dIvoire'
temp$actor[temp$actor=="Cote dIvoire"] <- 'Cote dIvoire'
temp$actor[temp$actor=="Cote Divoire"] <- 'Cote dIvoire'
temp$actor[temp$actor=="C?te D'ivoire"] <- 'Cote dIvoire'
temp$actor[temp$actor=="Cote D Ivoire"] <- 'Cote dIvoire'
temp$actor[temp$actor=="Cote D Ivore"] <- 'Cote dIvoire'

temp$actor[temp$actor=="Congo, Democratic Republic Of"] <- 'Democratic Republic of the Congo'
temp$actor[temp$actor=="Cuba?"] <- "Cuba" 
temp$actor[temp$actor=="Eitrea"] <- 'Eritrea'
temp$actor[temp$actor=="Erritrea"] <- 'Eritrea'
temp$actor[temp$actor=="European Union"] <- 'Eu'
temp$actor[temp$actor=="Eu ???"] <- 'Eu'
temp$actor[temp$actor=="Eu/Netherlands"] <- 'Eu'
temp$actor[temp$actor=="Netherlands/Eu"] <- 'Eu'
temp$actor[temp$actor=="Ecuador ?"] <- 'Ecuador'
temp$actor[temp$actor=="Eggypt"] <- 'Egypt'
temp$actor[temp$actor=="El Slavador"] <- 'El Salvador'
temp$actor[temp$actor=="El Slavadore"] <- 'El Salvador'
temp$actor[temp$actor=="El Salvadr"] <- 'El Salvador'
temp$actor[temp$actor=="El Savador"] <- 'El Salvador'
temp$actor[temp$actor=="El Salvadore"] <- 'El Salvador'
temp$actor[temp$actor=="El Salvaldor"] <- 'El Salvador'

temp$actor[temp$actor=="Guatemale"] <- 'Guatemala'
temp$actor[temp$actor=="Guatemela"] <- 'Guatemala'
temp$actor[temp$actor=="Guatenala"] <- 'Guatemala'

temp$actor[temp$actor=="Macronesia"] <- 'Federated States Of Micronesia'
temp$actor[temp$actor=="Micronesia"] <- 'Federated States Of Micronesia'
temp$actor[temp$actor=="Fsm"] <- 'Federated States of Micronesia'
temp$actor[temp$actor=="Micronesai"] <- 'Federated States of Micronesia'
temp$actor[temp$actor=="Micrensia"] <- 'Federated States of Micronesia'
temp$actor[temp$actor=="Micronesa"] <- 'Federated States of Micronesia'
temp$actor[temp$actor=="Micronesua"] <- 'Federated States of Micronesia'
temp$actor[temp$actor=="Micreisa"] <- 'Federated States of Micronesia'
temp$actor[temp$actor=="Micronesiia"] <- 'Federated States of Micronesia'
temp$actor[temp$actor=="Micronesuia"] <- 'Federated States of Micronesia'
temp$actor[temp$actor=="Micrneisa"] <- 'Federated States Of Micronesia'
temp$actor[temp$actor=="Mironesia"] <- 'Federated States Of Micronesia'
temp$actor[temp$actor=="Micrinesia"] <- 'Federated States Of Micronesia'
temp$actor[temp$actor=="Microneusa"] <- 'Federated States Of Micronesia'
temp$actor[temp$actor=="Micronisia"] <- 'Federated States Of Micronesia'
temp$actor[temp$actor=="Miconesia"] <- 'Federated States Of Micronesia'
temp$actor[temp$actor=="Microneisa"] <- 'Federated States Of Micronesia'





temp$actor[temp$actor=="Fji"] <- "Fiji" 
temp$actor[temp$actor=="Fidji"] <- "Fiji" 
temp$actor[temp$actor=="Island"] <- "Iceland" 

temp$actor[temp$actor=="Icealand"] <- "Iceland" 
temp$actor[temp$actor=="Ielad"] <- "Iceland" 
temp$actor[temp$actor=="Iclaend"] <- "Iceland" 
temp$actor[temp$actor=="Icealnd"] <- "Iceland" 
temp$actor[temp$actor=="Icelnad"] <- "Iceland" 

temp$actor[temp$actor=="Icelamd"] <- "Iceland"
temp$actor[temp$actor=="Irak"] <- "Iraq"

temp$actor[temp$actor=="Jaacia"] <- "Jamaica" 
temp$actor[temp$actor=="Jamaicaa"] <- "Jamaica" 
temp$actor[temp$actor=="Jamaic"] <- "Jamaica" 
temp$actor[temp$actor=="Interntional Indian Treaty Council"] <- "International Indian Treaty Council"

temp$actor[temp$actor=="Janpan"] <- "Japan" 
temp$actor[temp$actor=="Jaoan"] <- "Japan" 
temp$actor[temp$actor=="Japana"] <- "Japan" 

temp$actor[temp$actor=="Israle"] <- "Israel" 

temp$actor[temp$actor=="Isreal"] <- "Israel" 
temp$actor[temp$actor=="Inodnesia"] <- "Indonesia" 
temp$actor[temp$actor=="Indnesia"] <- "Indonesia" 
temp$actor[temp$actor=="Indoensia"] <- "Indonesia" 
temp$actor[temp$actor=="Indinesia"] <- "Indonesia" 

temp$actor[temp$actor=="Iran (Islamic Republic Of)"] <- "Iran" 
temp$actor[temp$actor=="Lao"] <- "Laos" 
temp$actor[temp$actor=="Holy Seet"] <- 'Holy See'
temp$actor[temp$actor=="Holy Sea"] <- 'Holy See'
temp$actor[temp$actor=="Hoyl See"] <- 'Holy See'
temp$actor[temp$actor=="Vatican"] <- 'Holy See'

temp$actor[temp$actor=="Hondduras"] <- 'Honduras'



temp$actor[temp$actor=="Madagaskar"] <- 'Madagascar'

temp$actor[temp$actor=="Maledives"] <- 'Maldives'
temp$actor[temp$actor=="Madives"] <- 'Maldives'
temp$actor[temp$actor=="Malives"] <- 'Maldives'

temp$actor[temp$actor=="Malduves"] <- 'Maldives'
temp$actor[temp$actor=="Marshall Island"] <- 'Marshall Islands'
temp$actor[temp$actor=="Monocco"] <- 'Morocco'
temp$actor[temp$actor=="Morroco"] <- 'Morocco'
temp$actor[temp$actor=="Morrocco"] <- 'Morocco'
temp$actor[temp$actor=="Moroco"] <- 'Morocco'
temp$actor[temp$actor=="Monacco"] <- 'Monaco'
temp$actor[temp$actor=="Mocaco"] <- 'Monaco'
temp$actor[temp$actor=="Monacio"] <- 'Monaco'
temp$actor[temp$actor=="Mauritis"] <- 'Mauritius'
temp$actor[temp$actor=="Mauritus"] <- 'Mauritius'
temp$actor[temp$actor=="Monacp"] <- 'Monaco'
temp$actor[temp$actor=="Monoca"] <- 'Monaco'
temp$actor[temp$actor=="Mauritious"] <- 'Mauritius'
temp$actor[temp$actor=="Mauririus"] <- 'Mauritius'


temp$actor[temp$actor=="The former Yugoslav Republic of Macedonia"] <- 'North Macedonia'
temp$actor[temp$actor=="Macedonia"] <- 'North Macedonia'
temp$actor[temp$actor=="Mex"] <- 'Mexico'

temp$actor[temp$actor=="Mexi"] <- 'Mexico'

temp$actor[temp$actor=="New Zeeland"] <- 'New Zealand'
temp$actor[temp$actor=="New Zealnd"] <- 'New Zealand'
temp$actor[temp$actor=="New Zeland"] <- 'New Zealand'
temp$actor[temp$actor=="Nz"] <- 'New Zealand'
temp$actor[temp$actor=="Niaragua"] <- 'Nicaragua'
temp$actor[temp$actor=="Nacaragua"] <- 'Nicaragua'
temp$actor[temp$actor=="Niccaragua"] <- 'Nicaragua'
temp$actor[temp$actor=="Micaragua"] <- 'Nicaragua'
temp$actor[temp$actor=="New Norway"] <- 'Norway'
temp$actor[temp$actor=="Norways"] <- 'Norway'
temp$actor[temp$actor=="Norwa"] <- 'Norway'
temp$actor[temp$actor=="Neiru"] <- 'Nauru'
temp$actor[temp$actor=="Mauru"] <- 'Nauru'
temp$actor[temp$actor=="Nuaru"] <- 'Nauru'
temp$actor[temp$actor=="Oakstan"] <- 'Pakistan'
temp$actor[temp$actor=="Naura"] <- 'Nauru'
temp$actor[temp$actor=="Nigerai"] <- 'Nigeria'
temp$actor[temp$actor=="Palestina"] <- 'Palestine'
temp$actor[temp$actor=="Palstine"] <- 'Palestine'
temp$actor[temp$actor=="Palesitine"] <- 'Palestine'
temp$actor[temp$actor=="Paelstine"] <- 'Palestine'
temp$actor[temp$actor=="Paiesitne"] <- 'Palestine'
temp$actor[temp$actor=="Paestine"] <- 'Palestine'

temp$actor[temp$actor=="State Of Palestine"] <- 'Palestine'
temp$actor[temp$actor=="Papua New Genea"] <- 'Papua New Guinea'
temp$actor[temp$actor=="Papue New Guinea"] <- 'Papua New Guinea'
temp$actor[temp$actor=="Papuar New Guinea"] <- 'Papua New Guinea'
temp$actor[temp$actor=="Papua Guinea"] <- 'Papua New Guinea'
temp$actor[temp$actor=="Philppines"] <- 'Philippines'
temp$actor[temp$actor=="Phlippines"] <- 'Philippines'
temp$actor[temp$actor=="Phillippines"] <- 'Philippines'
temp$actor[temp$actor=="Philippuines"] <- 'Philippines'
temp$actor[temp$actor=="Philipppines"] <- 'Philippines'
temp$actor[temp$actor=="Philippines"] <- 'Philippines'
temp$actor[temp$actor=="Philipines"] <- 'Philippines'
temp$actor[temp$actor=="Phillippines"] <- 'Philippines'
temp$actor[temp$actor=="Phillipins"] <- 'Philippines'
temp$actor[temp$actor=="Phinillines"] <- 'Philippines'
temp$actor[temp$actor=="Philippenes"] <- 'Philippines'
temp$actor[temp$actor=="Philipines"] <- 'Philippines'
temp$actor[temp$actor=="Philiiipes"] <- 'Philippines'
temp$actor[temp$actor=="Philiipes"] <- 'Philippines'
temp$actor[temp$actor=="Philippnes"] <- 'Philippines'
temp$actor[temp$actor=="Philiipines"] <- 'Philippines'
temp$actor[temp$actor=="Philipinnes"] <- 'Philippines'
temp$actor[temp$actor=="Pilippines"] <- 'Philippines'
temp$actor[temp$actor=="Phiippiunes"] <- 'Philippines'
temp$actor[temp$actor=="Philipiees"] <- 'Philippines'
temp$actor[temp$actor=="Philpines"] <- 'Philippines'
temp$actor[temp$actor=="Phlipinnes"] <- 'Philippines'
temp$actor[temp$actor=="Pjhliinnes"] <- 'Philippines'
temp$actor[temp$actor=="Phalippines"] <- 'Philippines'
temp$actor[temp$actor=="Phiipines"] <- 'Philippines'
temp$actor[temp$actor=="Phiippines"] <- 'Philippines'
temp$actor[temp$actor=="Philipine"] <- 'Philippines'


temp$actor[temp$actor=="President"] <- 'President'
temp$actor[temp$actor=="Presidents"] <- 'President'
temp$actor[temp$actor=="Presidenty"] <- 'President'
temp$actor[temp$actor=="Preseident"] <- 'President'
temp$actor[temp$actor=="Presiedent"] <- 'President'
temp$actor[temp$actor=="Presisdent"] <- 'President'
temp$actor[temp$actor=="Presidnent"] <- 'President'
temp$actor[temp$actor=="Vice Presidnent"] <- 'President'
temp$actor[temp$actor=="Pre"] <- 'President'
temp$actor[temp$actor=="Predident"] <- 'President'
temp$actor[temp$actor=="Presiendt"] <- 'President'
temp$actor[temp$actor=="Presient"] <- 'President'
temp$actor[temp$actor=="Presdident"] <- 'President'
temp$actor[temp$actor=="Paraguy"] <- 'Paraguay'
temp$actor[temp$actor=="Republic of Corea"] <- 'Republic of Korea'
temp$actor[temp$actor=="Korea"] <- 'Republic of Korea'
temp$actor[temp$actor=="Koreaa"] <- 'Republic of Korea'
temp$actor[temp$actor=="Rep. of korea"] <- 'Republic of Korea'
temp$actor[temp$actor=="Rebublic of korea"] <- 'Republic of Korea'

temp$actor[temp$actor=="korea"] <- 'Republic of Korea'
temp$actor[temp$actor=="Repubic of Korea"] <- 'Republic of Korea'
temp$actor[temp$actor=="Republic Of Korea"] <- 'Republic of Korea'
temp$actor[temp$actor=="Republic Of Corea"] <- 'Republic of Korea'
temp$actor[temp$actor=="Republic Of South Korea"] <- 'Republic of Korea'
temp$actor[temp$actor=="Repubic Of Korea"] <- 'Republic of Korea'
temp$actor[temp$actor=="Repubic Of South Corea"] <- 'Republic of Korea'
temp$actor[temp$actor=="Repulic Of Korea"] <- 'Republic of Korea'
temp$actor[temp$actor=="Rebublic Of Korea"] <- 'Republic of Korea'
temp$actor[temp$actor=="Rep. Of Korea"] <- 'Republic of Korea'
temp$actor[temp$actor=="Russian"] <- 'Russia'
temp$actor[temp$actor=="Russian Federation"] <- 'Russia'
temp$actor[temp$actor=="Russian Fed."] <- 'Russia'
temp$actor[temp$actor=="Russiona Fed"] <- 'Russia'
temp$actor[temp$actor=="Russia"] <- 'Russia'
temp$actor[temp$actor=="Russa"] <- 'Russia'
temp$actor[temp$actor=="Rrussia"] <- 'Russia'



temp$actor[temp$actor=="Switzerand"] <- 'Switzerland'
temp$actor[temp$actor=="Sitzerland"] <- 'Switzerland'
temp$actor[temp$actor=="Sweitzerland"] <- 'Switzerland'
temp$actor[temp$actor=="Swtitzerland"] <- 'Switzerland'
temp$actor[temp$actor=="Seitzerland"] <- 'Switzerland'
temp$actor[temp$actor=="Siwterland"] <- 'Switzerland'
temp$actor[temp$actor=="Switzerlsnd"] <- 'Switzerland'
temp$actor[temp$actor=="Switzre<f6>And"] <- 'Switzerland'
temp$actor[temp$actor=="Swtzerand"] <- 'Switzerland'
temp$actor[temp$actor=="Switzerlnd"] <- 'Switzerland'
temp$actor[temp$actor=="Switzerlamd"] <- 'Switzerland'
temp$actor[temp$actor=="Swizterland"] <- 'Switzerland'
temp$actor[temp$actor=="Switzreöand"] <- 'Switzerland'
temp$actor[temp$actor=="Swirterland"] <- 'Switzerland'
temp$actor[temp$actor=="Swizerland"] <- 'Switzerland'





temp$actor[temp$actor=="Swtizerland"] <- 'Switzerland'
temp$actor[temp$actor=="Eswatini"] <- 'Swaziland'
temp$actor[temp$actor=="Trinidad"] <- 'Trinidad and Tobago'
temp$actor[temp$actor=="Tirinidad And Tobago"] <- 'Trinidad and Tobago'
temp$actor[temp$actor=="Trinidsd And Tobago"] <- 'Trinidad and Tobago'
temp$actor[temp$actor=="Trinidad And Robago"] <- 'Trinidad and Tobago'
temp$actor[temp$actor=="Trindad and Tobago"] <- 'Trinidad and Tobago'
temp$actor[temp$actor=="Triniidad and Tobago"] <- 'Trinidad and Tobago'

temp$actor[temp$actor=="Urugay"] <- 'Uruguay'
temp$actor[temp$actor=="Switerland"] <- 'Switzerland'
temp$actor[temp$actor=="Switzerlnad"] <- 'Switzerland'

temp$actor[temp$actor=="Singapur"] <- 'Singapore'
temp$actor[temp$actor=="Singapour"] <- 'Singapore'
temp$actor[temp$actor=="Singapuor"] <- 'Singapore'
temp$actor[temp$actor=="Sigapore"] <- 'Singapore'
temp$actor[temp$actor=="Sinagapore"] <- 'Singapore'
temp$actor[temp$actor=="Sinpapore"] <- 'Singapore'
temp$actor[temp$actor=="Singapre"] <- 'Singapore'
temp$actor[temp$actor=="Saingapore"] <- 'Singapore'
temp$actor[temp$actor=="Sibgapore"] <- 'Singapore'
temp$actor[temp$actor=="Singapor"] <- 'Singapore'
temp$actor[temp$actor=="Sinapore"] <- 'Singapore'
temp$actor[temp$actor=="Singapure"] <- 'Singapore'
temp$actor[temp$actor=="Sngapore"] <- 'Singapore'


temp$actor[temp$actor=="Sierra Leaone"] <- 'Sierra Leone'
temp$actor[temp$actor=="Sierra Lenane"] <- 'Sierra Leone'
temp$actor[temp$actor=="Sierra Leona"] <- 'Sierra Leone'
temp$actor[temp$actor=="Sierral Leone"] <- 'Sierra Leone'
temp$actor[temp$actor=="Sierra Leano"] <- 'Sierra Leone'
temp$actor[temp$actor=="SierraLeanoe"] <- 'Sierra Leone'
temp$actor[temp$actor=="Sierrre Leone"] <- 'Sierra Leone'
temp$actor[temp$actor=="Sierre Leone"] <- 'Sierra Leone'
temp$actor[temp$actor=="Sierra Lepne"] <- 'Sierra Leone'
temp$actor[temp$actor=="Sierreleanoe"] <- 'Sierra Leone'
temp$actor[temp$actor=="San Lucia"] <- 'Saint Lucia'
temp$actor[temp$actor=="St Lucia"] <- 'Saint Lucia'
temp$actor[temp$actor=="Samo"] <- 'Samoa'
temp$actor[temp$actor=="Amoa"] <- 'Samoa'
temp$actor[temp$actor=="Samoa Obo Psids"] <- 'Samoa'
temp$actor[temp$actor=="Samaoa"] <- 'Samoa'


temp$actor[temp$actor=="Sout Africa"] <- 'South Africa'
temp$actor[temp$actor=="South Afric"] <- 'South Africa'
temp$actor[temp$actor=="Aouth Africa"] <- 'South Africa'
temp$actor[temp$actor=="South Arica"] <- 'South Africa'
temp$actor[temp$actor=="Southafrica"] <- 'South Africa'

temp$actor[temp$actor=="Sri-Lanka"] <- 'Sri Lanka'

temp$actor[temp$actor=="Sierre Leone"] <- 'Sierra Leone'
temp$actor[temp$actor=="Sirerra Leone"] <- 'Sierra Leone'
temp$actor[temp$actor=="Solemon Islands"] <- 'Solomon Islands'
temp$actor[temp$actor=="Salomon Islands"] <- 'Solomon Islands'
temp$actor[temp$actor=="Solomon"] <- 'Solomon Islands'
temp$actor[temp$actor=="Solomon Island"] <- 'Solomon Islands'
temp$actor[temp$actor=="Solomon Isldna"] <- 'Solomon Islands'
temp$actor[temp$actor=="Solomin Islands"] <- 'Solomon Islands'
temp$actor[temp$actor=="Solomon Isdlans"] <- 'Solomon Islands'
temp$actor[temp$actor=="Seychelle"] <- 'Seychelles'
temp$actor[temp$actor=="Seycheles"] <- 'Seychelles'
temp$actor[temp$actor=="Seychellles"] <- 'Seychelles'
temp$actor[temp$actor=="Sexchelles"] <- 'Seychelles'
temp$actor[temp$actor=="Seycelles"] <- 'Seychelles'
temp$actor[temp$actor=="Sechelles"] <- 'Seychelles'
temp$actor[temp$actor=="Seychalles?"] <- 'Seychelles'
temp$actor[temp$actor=="Sant Lucia"] <- 'Saint Lucia'
temp$actor[temp$actor=="Saudia Arabia"] <- 'Saudi Arabia'
temp$actor[temp$actor=="Suadi Arabia"] <- 'Saudi Arabia'
temp$actor[temp$actor=="Suad Ariabia"] <- 'Saudi Arabia'
temp$actor[temp$actor=="Saint Kitts And Nevis"] <- 'Saint Kitts'
temp$actor[temp$actor=="Saint Vincent And The Grenadines"] <- 'Saint Vincent'
temp$actor[temp$actor=="Syria"] <- 'Syrian Arabic Republic'
temp$actor[temp$actor=="Syrian Arab Republic"] <- 'Syrian Arabic Republic'
temp$actor[temp$actor=="Jamiaca"] <- 'Jamaica'
temp$actor[temp$actor=="Tansania"] <- 'Tanzania'
temp$actor[temp$actor=="United Of Republic Of Tanzania"] <- 'Tanzania'
temp$actor[temp$actor=="United Arb Emirates"] <- 'United Arab Emirates'
temp$actor[temp$actor=="United Repblic Of Tanzania"] <- 'Tanzania'
temp$actor[temp$actor=="United Arab Emitrates"] <- 'United Arab Emirates'


temp$actor[temp$actor=="Palistan"] <- 'Pakistan'
temp$actor[temp$actor=="Paksitan"] <- 'Pakistan'
temp$actor[temp$actor=="Pakistan"] <- 'Pakistan'
temp$actor[temp$actor=="Paskitan"] <- 'Pakistan'
temp$actor[temp$actor=="Paskitan angry"] <- 'Pakistan'


temp$actor[temp$actor=="Pakistanj"] <- 'Pakistan'
temp$actor[temp$actor=="Pakstian"] <- 'Pakistan'
temp$actor[temp$actor=="Paistan"] <- 'Pakistan'


temp$actor[temp$actor=="Akistan"] <- 'Pakistan'
temp$actor[temp$actor=="Paisan"] <- 'Pakistan'
temp$actor[temp$actor=="Turekey"] <- 'Turkey'
temp$actor[temp$actor=="Rurkey"] <- 'Turkey'
temp$actor[temp$actor=="Tureky"] <- 'Turkey'
temp$actor[temp$actor=="Turkiye"] <- 'Turkey'
temp$actor[temp$actor=="Türkiye"] <- 'Turkey'
temp$actor[temp$actor=="Turkyie"] <- 'Turkey'
temp$actor[temp$actor=="Turkye"] <- 'Turkey'
temp$actor[temp$actor=="Turky"] <- 'Turkey'

temp$actor[temp$actor=="Tuvaloa"] <- 'Tuvalu'
temp$actor[temp$actor=="Tuvala"] <- 'Tuvalu'
temp$actor[temp$actor=="Tuvalo"] <- 'Tuvalu'
temp$actor[temp$actor=="Tuvalus"] <- 'Tuvalu'
temp$actor[temp$actor=="Tongo"] <- 'Tonga'
temp$actor[temp$actor=="Rinidad And Tobago"] <- 'Trinidad And Tobago'
temp$actor[temp$actor=="Trinidad And Tobego"] <- 'Trinidad And Tobago'
temp$actor[temp$actor=="Trnidad And Tobago"] <- 'Trinidad And Tobago'
temp$actor[temp$actor=="Trinidad And Tobagp"] <- 'Trinidad And Tobago'
temp$actor[temp$actor=="Trinidad Nad Tobago"] <- 'Trinidad And Tobago'
temp$actor[temp$actor=="Trinidad & Tobago"] <- 'Trinidad And Tobago'
temp$actor[temp$actor=="Trinidad And Tobag"] <- 'Trinidad And Tobago'
temp$actor[temp$actor=="Trinidad And Tobgo"] <- 'Trinidad And Tobago'
temp$actor[temp$actor=="Trainidad And Tobago"] <- 'Trinidad And Tobago'
temp$actor[temp$actor=="Trindad And Tobago"] <- 'Trinidad And Tobago'
temp$actor[temp$actor=="Triniidad And Tobago"] <- 'Trinidad And Tobago'




temp$actor[temp$actor=="Thalialand"] <- 'Thailand'
temp$actor[temp$actor=="Thaliand"] <- 'Thailand'
temp$actor[temp$actor=="Thailans"] <- 'Thailand'


temp$actor[temp$actor=="Vietnam"] <- 'Viet Nam'
temp$actor[temp$actor=="Vienam"] <- 'Viet Nam'
temp$actor[temp$actor=="Vietman"] <- 'Viet Nam'
temp$actor[temp$actor=="Vietmna"] <- 'Viet Nam'


temp$actor[temp$actor=="Duke"] <- 'Duke University'
temp$actor[temp$actor=="Venezuela"] <- 'Venezuela'
temp$actor[temp$actor=="Venzuela"] <- 'Venezuela'
temp$actor[temp$actor=="Venezuela (Bolivarian Republic Of)"] <- 'Venezuela'
temp$actor[temp$actor=="Veenzueal"] <- 'Venezuela'

### still needs to be checked in real data
temp$actor[temp$actor=="Kenya??"] <- 'Kenya'


## alliances
temp$actor[temp$actor=="G77+china"] <- 'G77+China'
temp$actor[temp$actor=="G77+China"] <- 'G77+China'
temp$actor[temp$actor=="G77 And Chia"] <- 'G77+China'
temp$actor[temp$actor=="G77"] <- 'G77+China'
temp$actor[temp$actor=="G77 + China"] <- 'G77+China'
temp$actor[temp$actor=="G77/China"] <- 'G77+China'



## UN Bodies
temp$actor[startsWith(temp$actor, "Fac")] <- "Facilitator"
 
temp$actor[temp$actor=="Facicilator"] <- 'Facilitator'
temp$actor[temp$actor=="Faciliator"] <- 'Facilitator'
temp$actor[temp$actor=="Faciliattor"] <- 'Facilitator'
temp$actor[temp$actor=="Facilitaot"] <- 'Facilitator'
temp$actor[temp$actor=="Facilitarot"] <- 'Facilitator'
temp$actor[temp$actor=="Facilitatoe"] <- 'Facilitator'
temp$actor[temp$actor=="Facilitators"] <- 'Facilitator'
temp$actor[temp$actor=="Facilititotor"] <- 'Facilitator'
temp$actor[temp$actor=="Faciltiator"] <- 'Facilitator'
temp$actor[temp$actor=="Facitilator"] <- 'Facilitator'
temp$actor[temp$actor=="Facilitaor"] <- 'Facilitator'
temp$actor[temp$actor=="Faclilitator"] <- 'Facilitator'
temp$actor[temp$actor=="Faciitator"] <- 'Facilitator'
temp$actor[temp$actor=="Facilitapr"] <- 'Facilitator'
temp$actor[temp$actor=="Facliitator"] <- 'Facilitator'
temp$actor[temp$actor=="Faclitator"] <- 'Facilitator'
temp$actor[temp$actor=="Failitato"] <- 'Facilitator'
temp$actor[temp$actor=="Faciltiat"] <- 'Facilitator'
temp$actor[temp$actor=="Faciltiatos"] <- 'Facilitator'
temp$actor[temp$actor=="Facilaito"] <- 'Facilitator'
temp$actor[temp$actor=="Facilaitor"] <- 'Facilitator'
temp$actor[temp$actor=="Faciilitator"] <- 'Facilitator'
temp$actor[temp$actor=="Faciliato"] <- 'Facilitator'
temp$actor[temp$actor=="Faciitt"] <- 'Facilitator'
temp$actor[temp$actor=="Faciltator"] <- 'Facilitator'
temp$actor[temp$actor=="Faclitato"] <- 'Facilitator'
temp$actor[temp$actor=="Facilair"] <- 'Facilitator'
temp$actor[temp$actor=="Faciltator"] <- 'Facilitator'
temp$actor[temp$actor=="Facilitiatp"] <- 'Facilitator'
temp$actor[temp$actor=="Facilitor"] <- 'Facilitator'
temp$actor[temp$actor=="Faccilitaot"] <- 'Facilitator'
temp$actor[temp$actor=="Facilaitor"] <- 'Facilitator'
temp$actor[temp$actor=="Facilaitr"] <- 'Facilitator'
temp$actor[temp$actor=="Faciitt"] <- 'Facilitator'
temp$actor[temp$actor=="Facilator"] <- 'Facilitator'
temp$actor[temp$actor=="Facilitait"] <- 'Facilitator'
temp$actor[temp$actor=="Facilitaotr"] <- 'Facilitator'
temp$actor[temp$actor=="Facilitaro"] <- 'Facilitator'
temp$actor[temp$actor=="Facilitat"] <- 'Facilitator'
temp$actor[temp$actor=="Facilitato"] <- 'Facilitator'
temp$actor[temp$actor=="Facilitiaot"] <- 'Facilitator'
temp$actor[temp$actor=="Facilitorato"] <- 'Facilitator'
temp$actor[temp$actor=="Facilitorot"] <- 'Facilitator'
temp$actor[temp$actor=="Facilitotor"] <- 'Facilitator'
temp$actor[temp$actor=="Faciltitator"] <- 'Facilitator'
temp$actor[temp$actor=="Fcilitaot"] <- 'Facilitator'
temp$actor[temp$actor=="Ffaciliator"] <- 'Facilitator'
temp$actor[temp$actor=="Fscilitator"] <- 'Facilitator'
temp$actor[temp$actor=="Faciliat"] <- 'Facilitator'
temp$actor[temp$actor=="Facilitaion"] <- 'Facilitator'
temp$actor[temp$actor=="Facilitator Netherlands"] <- 'Facilitator'
temp$actor[temp$actor=="Facilitator. South Africa"] <- 'Facilitator'
temp$actor[temp$actor=="Facilitatot"] <- 'Facilitator'
temp$actor[temp$actor=="Facilitot"] <- 'Facilitator'
temp$actor[temp$actor=="Facilitrator"] <- 'Facilitator'
temp$actor[temp$actor=="Facilitro"] <- 'Facilitator'
temp$actor[temp$actor=="Facilittor"] <- 'Facilitator'
temp$actor[temp$actor=="Faciltat"] <- 'Facilitator'
temp$actor[temp$actor=="Faciltato"] <- 'Facilitator'
temp$actor[temp$actor=="Faciltiato"] <- 'Facilitator'
temp$actor[temp$actor=="Faciltoroe"] <- 'Facilitator'
temp$actor[temp$actor=="Facitat"] <- 'Facilitator'
temp$actor[temp$actor=="Facitlat"] <- 'Facilitator'
temp$actor[temp$actor=="Faclitiato"] <- 'Facilitator'
temp$actor[temp$actor=="Faclitior"] <- 'Facilitator'
temp$actor[temp$actor=="Faculotaro"] <- 'Facilitator'
temp$actor[temp$actor=="Fci"] <- 'Facilitator'
temp$actor[temp$actor=="Fciitato"] <- 'Facilitator'
temp$actor[temp$actor=="Fcilitors"] <- 'Facilitator'
temp$actor[temp$actor=="Fecaitor"] <- 'Facilitator'
temp$actor[temp$actor=="Fscilitaot"] <- 'Facilitator'
temp$actor[temp$actor=="Fsci"] <- 'Facilitator'
temp$actor[temp$actor=="Faci"] <- 'Facilitator'
temp$actor[temp$actor=="Faaci"] <- 'Facilitator'
temp$actor[temp$actor=="Facclitator"] <- 'Facilitator'
temp$actor[temp$actor=="Facilit"] <- 'Facilitator'
temp$actor[temp$actor=="Facliator"] <- 'Facilitator'
temp$actor[temp$actor=="Facilitatr"] <- 'Facilitator'
temp$actor[temp$actor=="Faclitaot"] <- 'Facilitator'
temp$actor[temp$actor=="Facitaotr"] <- 'Facilitator'
temp$actor[temp$actor=="Facilaitp"] <- 'Facilitator'
temp$actor[temp$actor=="Facilitora"] <- 'Facilitator'
temp$actor[temp$actor=="Facliiat"] <- 'Facilitator'
temp$actor[temp$actor=="Facliator"] <- 'Facilitator'
temp$actor[temp$actor=="Facilaitaro"] <- 'Facilitator'
temp$actor[temp$actor=="Fciliataor"] <- 'Facilitator'
temp$actor[temp$actor=="Facliiator"] <- 'Facilitator'
temp$actor[temp$actor=="Faciltaot"] <- 'Facilitator'
temp$actor[temp$actor=="Facciliatort"] <- 'Facilitator'
temp$actor[temp$actor=="Facilait"] <- 'Facilitator'
temp$actor[temp$actor=="Facitliat"] <- 'Facilitator'
temp$actor[temp$actor=="Facilate"] <- 'Facilitator'
temp$actor[temp$actor=="Facilte"] <- 'Facilitator'
temp$actor[temp$actor=="Failiatoe"] <- 'Facilitator'
temp$actor[temp$actor=="Faciate"] <- 'Facilitator'
temp$actor[temp$actor=="Facilator,"] <- 'Facilitator'
temp$actor[temp$actor=="Facitliato"] <- 'Facilitator'
temp$actor[temp$actor=="Fa"] <- 'Facilitator'
temp$actor[temp$actor=="Facliitato"] <- 'Facilitator'
temp$actor[temp$actor=="Acilaitor"] <- 'Facilitator'
temp$actor[temp$actor=="Ficiiator"] <- 'Facilitator'
temp$actor[temp$actor=="Faaicltor"] <- 'Facilitator'
temp$actor[temp$actor=="Faiator"] <- 'Facilitator'
temp$actor[temp$actor=="Faiclaior"] <- 'Facilitator'
temp$actor[temp$actor=="Faicliator"] <- 'Facilitator'
temp$actor[temp$actor=="Failiator"] <- 'Facilitator'
temp$actor[temp$actor=="Faliciatr"] <- 'Facilitator'
temp$actor[temp$actor=="Falicitator"] <- 'Facilitator'
temp$actor[temp$actor=="Fcacilaitpr"] <- 'Facilitator'
temp$actor[temp$actor=="Fcilaitor"] <- 'Facilitator'
temp$actor[temp$actor=="Fcilaitr"] <- 'Facilitator'
temp$actor[temp$actor=="Fcliitator"] <- 'Facilitator'
temp$actor[temp$actor=="Fcliitr"] <- 'Facilitator'
temp$actor[temp$actor=="Faiciliator"] <- 'Facilitator'
temp$actor[temp$actor=="Faicliatoe"] <- 'Facilitator'
temp$actor[temp$actor=="Faiclitor"] <- 'Facilitator'
temp$actor[temp$actor=="Failatp"] <- 'Facilitator'
temp$actor[temp$actor=="Fciiator"] <- 'Facilitator'
temp$actor[temp$actor=="Fciliator"] <- 'Facilitator'
temp$actor[temp$actor=="Fcilitator"] <- 'Facilitator'
temp$actor[temp$actor=="Fcilitor"] <- 'Facilitator'
temp$actor[temp$actor=="Fcliaitor"] <- 'Facilitator'
temp$actor[temp$actor=="Ffacliiator"] <- 'Facilitator'
temp$actor[temp$actor=="Fsciitotor"] <- 'Facilitator'
temp$actor[temp$actor=="Dailator"] <- 'Facilitator'
temp$actor[temp$actor=="Nafci"] <- 'Facilitator'
temp$actor[temp$actor=="Facilaltor"] <- 'Facilitator'
temp$actor[temp$actor=="Faicliatr"] <- 'Facilitator'
temp$actor[temp$actor=="Failaitor"] <- 'Facilitator'
temp$actor[temp$actor=="Failaitor"] <- 'Facilitator'
temp$actor[temp$actor=="Failciato"] <- 'Facilitator'
temp$actor[temp$actor=="Failtaot"] <- 'Facilitator'
temp$actor[temp$actor=="Failitator"] <- 'Facilitator'
temp$actor[temp$actor=="Falictato"] <- 'Facilitator'
temp$actor[temp$actor=="Faliitator"] <- 'Facilitator'
temp$actor[temp$actor=="Fcaialtor"] <- 'Facilitator'
temp$actor[temp$actor=="Fcailtaot"] <- 'Facilitator'
temp$actor[temp$actor=="Fciaitor"] <- 'Facilitator'
temp$actor[temp$actor=="Fcilator"] <- 'Facilitator'
temp$actor[temp$actor=="Fciltiato"] <- 'Facilitator'
temp$actor[temp$actor=="Fciltor"] <- 'Facilitator'
temp$actor[temp$actor=="Fclitor"] <- 'Facilitator'
temp$actor[temp$actor=="Fsciliator"] <- 'Facilitator'
temp$actor[temp$actor=="Fsilitor"] <- 'Facilitator'
temp$actor[temp$actor=="Fscilitat"] <- 'Facilitator'
temp$actor[temp$actor=="Aciltiaotr"] <- 'Facilitator'
temp$actor[temp$actor=="New Facilitator"] <- 'Facilitator'
temp$actor[temp$actor=="FFacilitaor"] <- 'Facilitator'
temp$actor[temp$actor=="Acilitator"] <- 'Facilitator'
temp$actor[temp$actor=="Aciltiator"] <- 'Facilitator'
temp$actor[temp$actor=="Faicilaltor"] <- 'Facilitator'
temp$actor[temp$actor=="Failitaot"] <- 'Facilitator'
temp$actor[temp$actor=="Failito"] <- 'Facilitator'
temp$actor[temp$actor=="Failtiator"] <- 'Facilitator'
temp$actor[temp$actor=="Failtot"] <- 'Facilitator'
temp$actor[temp$actor=="Fciltator"] <- 'Facilitator'
temp$actor[temp$actor=="Fclitar"] <- 'Facilitator'
temp$actor[temp$actor=="Ffacilitaor"] <- 'Facilitator'
temp$actor[temp$actor=="Fciltaot"] <- 'Facilitator'
temp$actor[temp$actor=="Mgr Chair"] <- 'Facilitator'
temp$actor[temp$actor=="Chair In Mgr"] <- 'Facilitator'
temp$actor[temp$actor=="Facilitator Abmts"] <- 'Facilitator'
temp$actor[temp$actor=="Facilitator On Eias"] <- 'Facilitator'
temp$actor[temp$actor=="Facilitator Cb Tt"] <- 'Facilitator'
temp$actor[temp$actor=="Facilitator Of Abmt"] <- 'Facilitator'
temp$actor[temp$actor=="Facilitator Of Eia"] <- 'Facilitator'
temp$actor[temp$actor=="Facilitator On Cb & Tmt"] <- 'Facilitator'
temp$actor[temp$actor=="Chair"] <- 'Facilitator'
temp$actor[temp$actor=="Cchair"] <- 'Facilitator'
temp$actor[temp$actor=="Chai"] <- 'Facilitator'
temp$actor[temp$actor=="Chair- Gabriele Wanli"] <- 'Facilitator'
temp$actor[temp$actor=="Chair- Nulifer Oral"] <- 'Facilitator'
temp$actor[temp$actor=="Chair (Eden Charles)"] <- 'Facilitator'
temp$actor[temp$actor=="Chair (Gabi Wanli)"] <- 'Facilitator'
temp$actor[temp$actor=="Chair (Gabi)"] <- 'Facilitator'
temp$actor[temp$actor=="Chair (Gabriele Goettsche-Wanli)"] <- 'Facilitator'
temp$actor[temp$actor=="Chair 1"] <- 'Facilitator'
temp$actor[temp$actor=="Chair 2"] <- 'Facilitator'
temp$actor[temp$actor=="Chair/Eden Charles"] <- 'Facilitator'
temp$actor[temp$actor=="Chair/Wani"] <- 'Facilitator'
temp$actor[temp$actor=="Chair/Wanl"] <- 'Facilitator'
temp$actor[temp$actor=="Chair/Wanli"] <- 'Facilitator'
temp$actor[temp$actor=="Chairs"] <- 'Facilitator'
temp$actor[temp$actor=="Char"] <- 'Facilitator'
temp$actor[temp$actor=="Chauir"] <- 'Facilitator'
temp$actor[temp$actor=="Chaur"] <- 'Facilitator'
temp$actor[temp$actor=="Chiair"] <- 'Facilitator'
temp$actor[temp$actor=="Co-Chair"] <- 'Facilitator'
temp$actor[temp$actor=="Nfaci"] <- 'Facilitator'



temp$actor[temp$actor=="secretary	"] <- 'Secretariat'
temp$actor[temp$actor=="Secretary"] <- 'Secretariat'
temp$actor[temp$actor=="Secreatry"] <- 'Secretariat'
temp$actor[temp$actor=="Secretrary?"] <- 'Secretariat'
temp$actor[temp$actor=="Secreatary?"] <- 'Secretariat'
temp$actor[temp$actor=="Secreatary"] <- 'Secretariat'
temp$actor[temp$actor=="Secreatrait"] <- 'Secretariat'
temp$actor[temp$actor=="Secrestariat"] <- 'Secretariat'
temp$actor[temp$actor=="Secretarait"] <- 'Secretariat'
temp$actor[temp$actor=="Sec"] <- 'Secretariat'
temp$actor[temp$actor=="Seceretary General"] <- 'Secretariat'  

temp$actor[temp$actor=="Sg Of The Conference"] <- 'Secretariat'
temp$actor[temp$actor=="Secretariat General Of The conference"] <- 'Secretariat'
temp$actor[temp$actor=="Secretary General Of The Conference"] <- 'Secretariat'
temp$actor[temp$actor=="Sg"] <- 'Secretariat'
temp$actor[temp$actor=="Office Of Legal Affairs, Secretary General Of The Conference"] <- 'Secretariat'
temp$actor[temp$actor=="Office Of Legal Affairs"] <- 'Secretariat'
temp$actor[temp$actor=="Secretariat Un Legal Council"] <- 'Secretariat'
temp$actor[temp$actor=="Director Of Legal Affairs, Divison Of Law Of The Sea"] <- 'UNDOALOS'
temp$actor[temp$actor=="Doalos"] <- 'UNDOALOS'
temp$actor[temp$actor=="Undoals"] <- 'UNDOALOS'
temp$actor[temp$actor=="DOALOS"] <- 'UNDOALOS'
temp$actor[temp$actor=="UDOALOS"] <- 'UNDOALOS'
temp$actor[temp$actor=="UNDUALUS"] <- 'UNDOALOS'
temp$actor[temp$actor=="UNDOALDOS"] <- 'UNDOALOS'
temp$actor[temp$actor=="Un Environment"] <- 'UNEP'
temp$actor[temp$actor=="Unep Wcmc"] <- 'Unep-Wcmc'

temp$actor[temp$actor=="Rena"] <- 'President'
temp$actor[temp$actor=="Rea"] <- 'President'
temp$actor[temp$actor=="Rnea"] <- 'President'

temp$actor[temp$actor=="president"] <- 'President'
temp$actor[temp$actor=="Preident"] <- 'President'
temp$actor[temp$actor=="Presidency"] <- 'President'
temp$actor[temp$actor=="Preesident"] <- 'President'
temp$actor[temp$actor=="Presidnet"] <- 'President'
temp$actor[temp$actor=="Prsident"] <- 'President'

temp$actor[temp$actor=="Ioc Lucy Scott"] <- 'Ioc-Unesco'


temp$actor[temp$actor=="Department Of Economic And Social Affairs"] <- 'UNDESA'
temp$actor[temp$actor=="Secretariat Of The Convention On Biological Diversity"] <- 'CBD'
temp$actor[temp$actor=="Convention on Biological Diversity"] <- 'CBD'
temp$actor[temp$actor=="Cbd"] <- 'CBD'
temp$actor[temp$actor=="Secretariat Of The Convention On The Conservation Of Migratory Species Of Wild Animals"] <- 'CMS'
temp$actor[temp$actor=="United Nations Environment Programme"] <- 'UNEP'
temp$actor[temp$actor=="Convention On The Conservation Of Migratory Species Of Wild Animals"] <- 'CMS'


### NGOs "Abbrv"
temp$actor[temp$actor=="High Sea Alliance"] <- 'HSA'
temp$actor[temp$actor=="High Seas Alliance"] <- 'HSA'
temp$actor[temp$actor=="Has"] <- 'HSA'
temp$actor[temp$actor=="ICEL (intergovernmnetal council on environmental law)"] <- 'ICEL'
temp$actor[temp$actor=="International Council of Environmental Law"] <- 'ICEL'
temp$actor[temp$actor=="International Council Of Environental Law"] <- 'ICEL'
temp$actor[temp$actor=="International Council For Environmetnal Law"] <- 'ICEL'
temp$actor[temp$actor=="International Council For Environmental Law"] <- 'ICEL'
temp$actor[temp$actor=="international council for environmental law"] <- 'ICEL'
temp$actor[temp$actor=="International Council Of Environmental Law"] <- 'ICEL'
temp$actor[temp$actor=="Ciel"] <- 'ICEL'
temp$actor[temp$actor=="Environmental Council Of Environmental Law"] <- 'ICEL'
temp$actor[temp$actor=="Icel (Intergovernmnetal Council On Environmental Law)"] <- 'ICEL'
temp$actor[temp$actor=="International Seabed Authority"] <- 'ISA'
temp$actor[temp$actor=="Isa Secretariat"] <- 'ISA'
temp$actor[temp$actor=="Deep Ocean Stewardship Initiative"] <- 'DOSI'
temp$actor[temp$actor=="Deep Ocean Stewardship"] <- 'DOSI'
temp$actor[temp$actor=="Dosi (?)"] <- 'DOSI'
temp$actor[temp$actor=="Institute for Sustainable Development and International Relations"] <- 'IDDRI'
temp$actor[temp$actor=="Institut du d?veloppement durable et des relations internationales"] <- 'IDDRI'
temp$actor[temp$actor=="Institute For Advanced Sustainability Studies E.V."] <- 'IASS'
temp$actor[temp$actor=="Natural Resources Defence Council, Inc"] <- 'NRDC'
temp$actor[temp$actor=="Natural Resources Defence Council"] <- 'NRDC'
temp$actor[temp$actor=="Natural Resources Defence Council"] <- 'NRDC'
temp$actor[temp$actor=="Natural Resources Defense Council"] <- 'NRDC'
temp$actor[temp$actor=="Natural Resources Defense"] <- 'NRDC'
temp$actor[temp$actor=="Natural Defense Council on Hsa"] <- 'NRDC'
temp$actor[temp$actor=="Naturl Resources Defense"] <- 'NRDC'
temp$actor[temp$actor=="Nldc"] <- 'NRDC'

temp$actor[temp$actor=="Ngo"] <- 'Ngos'





temp$actor[temp$actor=="Irdc"] <- 'NRDC'
temp$actor[temp$actor=="Nippon"] <- 'Nippon Foundation'
temp$actor[temp$actor=="International Union For the Conservation Of Nature"] <- 'IUCN'
temp$actor[temp$actor=="Iunc"] <- 'IUCN'
temp$actor[temp$actor=="Idri"] <- 'IDDRI'
temp$actor[temp$actor=="Ocean Care"] <- 'Oceancare'
temp$actor[temp$actor=="Sasakawa Peace Foundation"] <- 'Sasakawa'
temp$actor[temp$actor=="International Coastal And Ocean Organization"] <- 'ICO'


### IGOs
temp$actor[temp$actor=="North East Atlantic Fisheries Commission"] <- 'NEAFC'
temp$actor[temp$actor=="North East Atlantic Fishery Commission"] <- 'NEAFC'
temp$actor[temp$actor=="International Seabed Authority"] <- 'ISA'
temp$actor[temp$actor=="International Maritime Organization"] <- 'IMO'
temp$actor[temp$actor=="International Oceanographic Commission"] <- 'IOC'
temp$actor[temp$actor=="Unesco"] <- 'IOC'
temp$actor[temp$actor=="Ioc"] <- 'IOC'
temp$actor[temp$actor=="Ioc Unesco"] <- 'IOC'
temp$actor[temp$actor=="Unesco-Ioc"] <- 'IOC'
temp$actor[temp$actor=="Ioc-Unesco"] <- 'IOC'
temp$actor[temp$actor=="Iitc"] <- 'International Indian Treaty Council'




temp$actor[temp$actor=="Comisi?n Permanente Del Paclfico Sur"] <- 'CPPS'
temp$actor[temp$actor=="Cpps"] <- 'CPPS'
temp$actor[temp$actor=="North-West Atlantic Fisheries Commission"] <- 'NAFO'
temp$actor[temp$actor=="North Pacific Fisheries Commission"] <- 'NPFC'
temp$actor[temp$actor=="Nplc"] <- 'ICPC'
temp$actor[temp$actor=="Ospar Commission For The Protection Of The Marine Environment Of The North-East Atlantic"] <- 'OSPAR'
temp$actor[temp$actor=="Secretariat Of The Pacific Regional Environment Programme"] <- 'SPREP'
temp$actor[temp$actor=="Western And Central Pacific Fisheries Commission"] <- 'WCPFC'
temp$actor[temp$actor=="Asian-African Legal Consultative Organization"] <- 'AALCO'
temp$actor[temp$actor=="International Council For The Exploration Of The Sea"] <- 'ICES'
temp$actor[temp$actor=="Global Environment Facility"] <- 'GEF'
temp$actor[temp$actor=="World Intellectual Property Organization "] <- 'WIPO'
temp$actor[temp$actor=="Isa"] <- 'ISA'
temp$actor[temp$actor=="international cabel protection committee"] <- 'ICPC'
temp$actor[temp$actor=="international cabel protection committee"] <- 'ICPC'
temp$actor[temp$actor=="International Cabel Protection Committee"] <- 'ICPC'
temp$actor[temp$actor=="International Cable Protection Committee"] <- 'ICPC'
temp$actor[temp$actor=="The International Calble Protection Committee"] <- 'ICPC'
temp$actor[temp$actor=="International Cable Protection Committee Limited"] <- 'ICPC'
temp$actor[temp$actor=="The International Cable Protection Committee"] <- 'ICPC'
temp$actor[temp$actor=="Nhm"] <- 'Natural History Museum'
temp$actor[temp$actor=="Pacific Community"] <- 'SPC'
temp$actor[temp$actor=="Duncna"] <- 'Duncan'
temp$actor[temp$actor=="Pew Charitable Trust"] <- 'Pew'
temp$actor[temp$actor=="Credentials Committe"] <- 'Credentials Committee'
temp$actor[temp$actor=="Credentials Commitee ireland"] <- 'Credentials Committee'
temp$actor[temp$actor=="Credentals Commitee ireland"] <- 'Credentials Committee'
temp$actor[temp$actor=="Nyiue"] <- 'Niue'

### New changes - actor cleaning
temp$actor[temp$actor=="140"] <- '140 Participants'
temp$actor[temp$actor=="5"] <- '144 Participants'
temp$actor[temp$actor=="All Actors"] <- 'All'
temp$actor[temp$actor=="Aosis"] <- 'Antigua And Barbuda'
temp$actor[temp$actor=="Argentina Ono Clam"] <- 'Argentina Obo Clam'
temp$actor[temp$actor=="Argentina; Martin Mainero"] <- 'Argentina'
temp$actor[temp$actor=="Aughing"] <- 'Laughing'
temp$actor[temp$actor=="Babb Riley, Barbados"] <- 'Barbados'
temp$actor[temp$actor=="Emd"] <- 'End'
temp$actor[temp$actor=="End Of Informal Informals"] <- 'End'
temp$actor[temp$actor=="Ends"] <- 'End'
temp$actor[temp$actor=="Partcipants"] <- 'Participants'
temp$actor[temp$actor=="Particpants"] <- 'Participants'
temp$actor[temp$actor=="Paticipnats"] <- 'Participants'
temp$actor[temp$actor=="Where They Are"] <- 'All'



temp$actor[temp$actor=="Psdis"] <- 'Psids'
temp$actor[temp$actor=="Room"] <- 'All Laughing'
temp$actor[temp$actor=="Room Clapping"] <- 'All Clapping'
temp$actor[temp$actor=="Room Kughing"] <- 'All Laughing'
temp$actor[temp$actor=="Room Laughing"] <- 'All Laughing'
temp$actor[temp$actor=="Room Laughng"] <- 'All Laughing'
temp$actor[temp$actor=="Room Laughnig"] <- 'All Laughing'
temp$actor[temp$actor=="Waving"] <- 'All Waving'
temp$actor[temp$actor=="Silcence"] <- 'Silence'
temp$actor[temp$actor=="Sielnce"] <- 'Silence'
temp$actor[temp$actor=="Silence - Tech Issue"] <- 'Silence'
temp$actor[temp$actor=="Silence, No Tine"] <- 'Silence'
temp$actor[temp$actor=="Silene"] <- 'Silence'
temp$actor[temp$actor=="Silnece"] <- 'Silence'
temp$actor[temp$actor=="Africa"] <- 'African Group'
temp$actor[temp$actor=="Microesia Obo Psdis"] <- 'Micronesia Obo Psids'
temp$actor[temp$actor=="Obo G77+china"] <- 'Cuba'
temp$actor[temp$actor=="Several Speakers"] <- 'Several Actors'
temp$actor[temp$actor=="Tech"] <- 'Technical Problem'
temp$actor[temp$actor=="Tech Issue"] <- 'Technical Problem'
temp$actor[temp$actor=="Tech Issues"] <- 'Technical Problem'
temp$actor[temp$actor=="Unknown"] <- 'Nz?Aus?'
temp$actor[temp$actor=="Nz?Aus?"] <- 'Unknown'

temp$comment_obs[temp$actor=="Pakistan Angry"] <- 'seems angry'
temp$actor[temp$actor=="Pakistan Angry"] <- 'Pakistan'

temp$comment_obs[temp$actor=="Russia Leaving"] <- 'Leaving'
temp$actor[temp$actor=="Russia Leaving"] <- 'Russia'






temp$actor <- str_to_lower(temp$actor)

## replace NAs with 0 for the ifelse statements not producing NAs
temp$section_title[is.na(temp$section_title)] <- 0
temp$subsection[is.na(temp$subsection)] <- 0
temp$section_title <- str_replace_all(temp$section_title, "(.+)[.]", "\\1")


##
temp$art_title <- NA
temp <- mutate(temp, art_title = 
                 ifelse((package == 5) & (section_title == 3) & (subsection == "2") 
                        | ((package ==5) & (section_title == "II") & (subsection == "3" | subsection == "2.2.")) |  grepl("nonparties", comment_obs), paste ("application"),
                        ifelse((package == 5 | package == 9 | package == 1) & ((IGC == 3 & section_title == "1") |
                                                                                 (IGC == 2 & (section_title == "II" & subsection %in% 1:25) |(section_title == "II" & (subsection == "16" | subsection == "10-14")))
                                                                               | (grepl("definition", comment_obs))), paste("use of terms"), 
                               ifelse(grepl("ipr", issue_detail) | grepl("intellectual property rights", issue_detail) |
                                        grepl("ipr", comment_obs) | (package == 1 & section_title == "3.2.3."), paste("intellectual property rights"),
                                      
                                      ifelse((package == 9 | package == 5) & ((IGC==3 & section_title == "51"))
                                             | (grepl("chm", comment_obs)) | (grepl("clearing house mechanism", comment_obs) | (grepl("clearing house", issue_detail))), paste("clearing-house mechanism"),
                                             ifelse((package == 9 | package == 5) & ((IGC==3 & section_title == "50")
                                                                                     | (grepl("secretariat", comment_obs))), paste("secretariat"), 
                                                    ifelse((package == 9 | package == 5) & ((IGC==3 & section_title == "4")
                                                                                            | (grepl("secretariat", comment_obs))), paste("secretariat"), 
                                                           # ifelse((grepl("equitable", issue_detail) & grepl ("sharing of benefits", issue_detail)
                                                           #         & grepl ("benefit", issue_detail) & grepl("sharing of benefits", comment_obs)), paste("sharing of benefits"), ## sharing of benefits if other
                                                           #        ifelse(((package == 1)) | grepl("ilk", issue_detail), "sharing of benefits",
                                                                         ifelse((package == 1) & grepl("access", issue_detail) | grepl("right to abnj", comment_obs) | grepl("use of mgr", comment_obs), "collection of mgrs",
                                                                                ifelse((package == 1) & ((grepl("3.1", section_title))| (section_title == "3.2.1.") | (grepl("scope", issue_detail)) |
                                                                                                           grepl("application", issue_detail) | grepl("activities", issue_detail)), paste("application of MGR provision"),
                                                                                       ifelse((IGC == 2) & (package == 2) & (section_title == "4.3.1." | section_title == "4.3.1"), paste("identification of areas"),
                                                                                              ifelse(grepl("intellectual property", issue_detail), paste("intellectual property rights"),
                                                                                                     ifelse(package == 2 & (grepl("criteria", issue_detail) | grepl("identification of areas", issue_detail))
                                                                                                            | ((grepl("16", section_title) & IGC ==3)) & package == 2, paste("identification of areas"),
                                                                                                            ifelse((grepl("objectives", issue_detail)) | (grepl("principles", issue_detail)) |
                                                                                                                     (IGC == 3 & package == 5 & section_title == "3"), paste("objectives"),  
                                                                                                                   ifelse((grepl("monitoring", issue_detail)) | (grepl("principles", issue_detail)), paste("objectives"),
                                                                                                                          ifelse((grepl("5.3.", section_title) & (IGC == 2)) | (grepl("activity", issue_detail)), paste("thresholds and criteria for EIA"), 
                                                                                                                                 ifelse((grepl("5.6.", section_title) | grepl("5.7.", section_title)) & IGC == 2 | (grepl("204", observation)), paste("EIA monitoring and review"),
                                                                                                                                        ifelse((grepl("5.6.", section_title) | (section_title == "5.6")) & IGC == 2, paste("EIA monitoring and review"),
                                                                                                                                               ifelse((grepl("monitoring", issue_detail))  & (package == 3), paste("EIA monitoring and review"),
                                                                                                                                                      ifelse((grepl("monitoring", issue_detail))  & (package == 2), paste("ABMT monitoring and review"),
                                                                                                                                                             ifelse((grepl("monitoring", issue_detail))  & (package == 1), paste("MGR monitoring and review"),
                                                                                                                                                                    ifelse((grepl("criteria", issue_detail) | grepl("transboundary", issue_detail)) & package == 3, paste("thresholds and criteria for EIA"),
                                                                                                                                                                           ifelse((IGC == 2 & package == 3) & (section_title == "5.4."|section_title == "5.4" | section_title == "5.5."), paste ("preparation and content of EIA"),
                                                                                                                                                                                  #ifelse((grepl("common heritage", issue_detail)), paste("sharing of benefits") ,
                                                                                                                                                                                  ifelse(id_combined == "IT_41", paste("ABMT consultation") ,
                                                                                                                                                                                         ifelse(package == 3 & (section_title == "5.1" | section_title == "5.1.") ,paste("obligation"),
                                                                                                                                                                                                
                                                                                                                                                                                                ifelse(IGC == 3 & section_title == "43", paste("cooperation for capacity building"),
                                                                                                                                                                                                       ifelse( IGC == 3 & section_title == 31, paste("scoping"),
                                                                                                                                                                                                               ifelse((grepl("technical and scientific", comment_obs) | 
                                                                                                                                                                                                                         grepl("scientific body", comment_obs)) |
                                                                                                                                                                                                                        (package == 5 & section_title == "49"), paste("scientific and technical body"),
                                                                                                                                                                                                                      ifelse(grepl("decision making body", comment_obs), paste("decision-making body"),
                                                                                                                                                                                                                             ifelse(grepl("subsidiary body", comment_obs),paste ("institutions"),
                                                                                                                                                                                                                                    ifelse(grepl("public notification and consultation", issue_detail) & package == 3, "public notification and consultation",
                                                                                                                                                                                                                                           ifelse((package == 2 & (grepl("relation", issue_detail) | grepl("relationship", issue_detail)) | (issue_detail == "international cooperation")) | (IGC == 1 & (section_title == "III.4.2" | section_title == "II.4.2")),
                                                                                                                                                                                                                                                  "relationship to measures under relevant bodies",
                                                                                                                                                                                                                                                  ifelse(package == 3 & (grepl("5.2", section_title)) | (grepl("relation", issue_detail) | grepl("relationship", issue_detail) | (issue_detail == "international cooperation")), "relationship to other EIA processes",
                                                                                                                                                                                                                                                         ifelse((grepl("modalities", issue_detail)) | (IGC == 1 & section_title == "III.6.2"), "modalities for cbtmt",
                                                                                                                                                                                                                                                                ifelse((grepl("funding", issue_detail)) | (IGC == 1 & section_title == "III.6.3"), "funding",
                                                                                                                                                                                                                                                                       ifelse((IGC == 1 & section_title == "III.5.4" &  (grepl("screening", issue_detail))), "screening",
                                                                                                                                                                                                                                                                              ifelse((IGC == 1 & section_title == "III.5.4" & (grepl("scoping", issue_detail))), "scoping",
                                                                                                                                                                                                                                                                                     ifelse((IGC == 1 & section_title == "III.5.4"), "process",
                                                                                                                                                                                                                                                                                            ifelse(IGC == 1 & section_title == "III.6.1", "objectives of cbtmt",
                                                                                                                                                                                                                                                                                                   ifelse(issue_detail == "compatibility" | issue_detail == "procisions compatibility", "relationship to other instruments",
                                                                                                                                                                                                                                                                                                          ifelse(IGC == 1 & section_title== "III.4.3.2.iii", "designation",
                                                                                                                                                                                                                                                                                                                 ifelse((IGC == 2 & grepl("5.7.", section_title)) |  (IGC==1 & section_title == "III.5.7"), "strategic EIA", 
                                                                                                                                                                                                                                                                                                                        ifelse(IGC == 2 & issue_detail == "public notification and consultation", "consultation on and assessment of proposal",
                                                                                                                                                                                                                                                                                                                               ifelse(IGC == 2 & ((grepl("consultation", issue_detail)) | (issue_detail == "public notification and consultation")), "consultation on and assessment of proposal",
                                                                                                                                                                                                                                                                                                                                      ifelse(package == 2 & (issue_detail == "conduct of environmental impact assessment" |
                                                                                                                                                                                                                                                                                                                                                               issue_detail == "environmental impact process") &
                                                                                                                                                                                                                                                                                                                                               (grepl("scoping", comment_obs)), "scoping",
                                                                                                                                                                                                                                                                                                                                             ifelse(package == 2 & (issue_detail == "conduct of environmental impact assessment" |
                                                                                                                                                                                                                                                                                                                                                                      issue_detail == "environmental impact process") &
                                                                                                                                                                                                                                                                                                                                                      (grepl("screening", comment_obs)), "screening",
                                                                                                                                                                                                                                                                                                                                                    ifelse(package == 4 & (issue_detail == "cooperation"), "cooperation in cbtmt",
                                                                                                                                                                                                                                                                                                                                                           ifelse(package == 4 & section_title == "III.6.2", "cooperation in cbtmt",
                                                                                                                                                                                                                                                                                                                                                                  
                                                                                                                                                                                                                                                                                                                                                                  temp$art_title)))))))))))))))))))))))))))))))))))))))))))))))  







##


temp <- mutate(temp, art_title = ifelse(IGC == 5 & section_title == 1, "use of terms", 
ifelse(IGC == 5 & section_title == 2, "general objective", 
ifelse(IGC == 5 & section_title == 3, "application", 
ifelse(IGC == 5 & section_title == 4, "relationship to other instruments", 
ifelse(IGC == 5 & section_title == 5, "general principles and approaches", 
ifelse(IGC == 5 & section_title == 6, "international cooperation", 
ifelse(IGC == 5 & section_title == 7, "objectives of mgr provision", 
ifelse(IGC == 5 & section_title == 8, "application of mgr provision", 
ifelse(IGC == 5 & section_title == 9, "activities with respect to mgrs", 
ifelse(IGC == 5 & section_title == 10, "collection of mgrs", 
ifelse(IGC == 5 & section_title == "10bis", "access to tk", 
ifelse(IGC == 5 & section_title == 11, "sharing of benefits", 
ifelse(IGC == 5 & section_title == 12, "intellectual property rights", 
ifelse(IGC == 5 & section_title == 13, "monitoring and transparency", 
ifelse(IGC == 5 & section_title == 14 , "objectives of abmt/mpa provision", 
ifelse(IGC == 5 & section_title == 17 , "proposals", 
ifelse(IGC == 5 & section_title == "17bis" , "identification of areas", 
ifelse(IGC == 5 & section_title == 18 , "consultation and assessment", 
ifelse(IGC == 5 & section_title == 19 , "decision-making for abmts/mpas", 
ifelse(IGC == 5 & section_title == "19bis" , "international cooperation and coordination", 
ifelse(IGC == 5 & section_title == 20 , "implementation", 
ifelse(IGC == 5 & section_title == 21 , "monitoring and review", 
ifelse(IGC == 5 & section_title == 22 , "obligation to conduct eia", 
ifelse(IGC == 5 & section_title == 23 , "relationship to other processes", 
ifelse(IGC == 5 & section_title == 24 , "tresholds and criteria for eia", 
ifelse(IGC == 5 & section_title == 25 , "cumulative impacts", 
ifelse(IGC == 5 & section_title == 30 , "process", 
ifelse(IGC == 5 & section_title == 34 , "public notification and consultation", 
ifelse(IGC == 5 & section_title == 35 , "content", 
ifelse(IGC == 5 & section_title == 38 , "decision-making for eias", 
ifelse(IGC == 5 & section_title == 39 , "monitoring", 
ifelse(IGC == 5 & section_title == "41ter" , "seas", 
ifelse(IGC == 5 & section_title == "42" , "objectives of cbtmt provision", 
ifelse(IGC == 5 & section_title == "43" , "cooperation in cbtmt", 
ifelse(IGC == 5 & section_title == "44" , "modalities for cbtmt", 
ifelse(IGC == 5 & section_title == "45" , "additional modalities", 
ifelse(IGC == 5 & section_title == "46", "types of cbtmt", 
ifelse(IGC == 5 & section_title == "47" , "monitoring and review", 
ifelse(IGC == 5 & section_title == "48", "cop", 
ifelse(IGC == 5 & section_title == "48bis" , "transparency", 
ifelse(IGC == 5 & section_title == "49", "scientific and technical body", 
ifelse(IGC == 5 & section_title == "50" , "secretariat", 
ifelse(IGC == 5 & section_title == "51" , "clearing-house mechanism", 
ifelse(IGC == 5 & section_title == "52" , "funding", 
ifelse(IGC == 5 & section_title == "53" , "implementation and compliance", 
ifelse(IGC == 5 & section_title == "54" , "settlement of disputes", 
ifelse(IGC == 5 & section_title == "55" , "settlement of disputes", 
ifelse(IGC == 5 & section_title == "61" , "entry into force", 
ifelse(IGC == 5 & section_title == "62" , "provisional application", 
issue_detail))))))))))))))))))))))))))))))))))))))))))))))))))


temp <- mutate(temp, art_title = ifelse(IGC == 4 & section_title == 1, "use of terms", 
ifelse(IGC == 4 & section_title == 2, "general objective", 
ifelse(IGC == 4 & section_title == 3, "application", 
ifelse(IGC == 4 & section_title == 4, "relationship to other instruments", 
ifelse(IGC == 4 & section_title == 5, "general principles and approaches", 
ifelse(IGC == 4 & section_title == 6, "international cooperation", 
ifelse(IGC == 4 & section_title == 7, "objectives of mgr provision", 
ifelse(IGC == 4 & section_title == 8, "application of mgr provision", 
ifelse(IGC == 4 & section_title == 9, "activities with respect to mgrs", 
ifelse(IGC == 4 & section_title == 10, "collection of mgrs", 
ifelse(IGC == 4 & section_title == "10bis", "access to tk", 
ifelse(IGC == 4 & section_title == 11, "sharing of benefits", 
ifelse(IGC == 4 & section_title == 12, "intellectual property rights", 
ifelse(IGC == 4 & section_title == 13, "monitoring and transparency", 
ifelse(IGC == 4 & section_title == 14 , "objectives of abmt/mpa provision", 
ifelse(IGC == 4 & section_title == 15 , "international cooperation and coordination", 
ifelse(IGC == 4 & section_title == 17 , "proposals", 
ifelse(IGC == 4 & section_title == "16" , "identification of areas", 
ifelse(IGC == 4 & section_title == 18 , "consultation and assessment", 
ifelse(IGC == 4 & section_title == 19 , "decision-making for abmts/mpas", 
ifelse(IGC == 4 & section_title == 20 , "implementation", 
ifelse(IGC == 4 & section_title == 21 , "monitoring and review", 
ifelse(IGC == 4 & section_title == 22 , "obligation to conduct eia", 
ifelse(IGC == 4 & section_title == 23 , "relationship to other processes", 
ifelse(IGC == 4 & section_title == 24 , "tresholds and criteria for eia", 
ifelse(IGC == 4 & section_title == 25 , "cumulative impacts", 
ifelse(IGC == 4 & section_title == 26 , "transboundary impacts", 
ifelse(IGC == 4 & section_title == 27 , "ebsas", 
ifelse(IGC == 4 & section_title == 29 , "list of activities", 
ifelse(IGC == 4 & section_title == 30 , "screening", 
ifelse(IGC == 4 & section_title == 31 , "scoping", 
ifelse(IGC == 4 & section_title == 32 , "assessment and evaluation", 
ifelse(IGC == 4 & section_title == 34 , "public notification and consultation", 
ifelse(IGC == 4 & section_title == 35 , "content", 
ifelse(IGC == 4 & section_title == 38 , "decision-making for eias", 
ifelse(IGC == 4 & section_title == 39 , "monitoring", 
ifelse(IGC == 4 & section_title == "28" , "seas", 
ifelse(IGC == 4 & section_title == "40" , "reporting", 
ifelse(IGC == 4 & section_title == "41" , "review", 
ifelse(IGC == 4 & section_title == "42" , "objectives of cbtmt provision", 
ifelse(IGC == 4 & section_title == "43" , "cooperation in cbtmt", 
ifelse(IGC == 4 & section_title == "44" , "modalities for cbtmt", 
ifelse(IGC == 4 & section_title == "45" , "additional modalities", 
ifelse(IGC == 4 & section_title == "46", "types of cbtmt", 
ifelse(IGC == 4 & section_title == "47" , "monitoring and review", 
ifelse(IGC == 4 & section_title == "48", "cop", 
ifelse(IGC == 4 & section_title == "49", "scientific and technical body", 
ifelse(IGC == 4 & section_title == "50" , "secretariat", 
ifelse(IGC == 4 & section_title == "51" , "clearing-house mechanism", 
       art_title))))))))))))))))))))))))))))))))))))))))))))))))))
       
temp <- mutate(temp, art_title =    
ifelse(IGC == 4 & section_title == "52" , "funding", 
ifelse(IGC == 4 & section_title == "53" , "implementation and compliance", 
ifelse(IGC == 4 & section_title == "54" , "settlement of disputes", 
ifelse(IGC == 4 & section_title == "55" , "settlement of disputes", 
ifelse(IGC == 4 & section_title == "61" , "entry into force", 
ifelse(IGC == 4 & section_title == "62" , "provisional application", 
       art_title)))))))



temp <- mutate(temp, art_title = ifelse(IGC == 3 & section_title == 1, "use of terms", 
ifelse(IGC == 3 & section_title == 2, "general objective", 
ifelse(IGC == 3 & section_title == 3, "application", 
ifelse(IGC == 3 & section_title == 4, "relationship to other instruments", 
ifelse(IGC == 3 & section_title == 5, "general principles and approaches", 
ifelse(IGC == 3 & section_title == 6, "international cooperation", 
ifelse(IGC == 3 & section_title == 7, "objectives of mgr provision", 
ifelse(IGC == 3 & section_title == 8, "application of mgr provision", 
ifelse(IGC == 3 & section_title == 9, "activities with respect to mgrs", 
ifelse(IGC == 3 & section_title == 10, "access to mgrs", 
ifelse(IGC == 3 & section_title == 11, "sharing of benefits", 
ifelse(IGC == 3 & section_title == 12, "intellectual property rights", 
ifelse(IGC == 3 & section_title == 13, "monitoring", 
ifelse(IGC == 3 & section_title == 14 , "objectives of abmt/mpa provision", 
ifelse(IGC == 3 & section_title == 15 , "international cooperation and coordination", 
ifelse(IGC == 3 & section_title == 17 , "proposals", 
ifelse(IGC == 3 & section_title == 16 , "identification of areas", 
ifelse(IGC == 3 & section_title == 18 , "consultation and assessment", 
ifelse(IGC == 3 & section_title == 19 , "decision-making for abmts/mpas", 
ifelse(IGC == 3 & section_title == 20 , "implementation", 
ifelse(IGC == 3 & section_title == 21 , "monitoring and review", 
ifelse(IGC == 3 & section_title == 22 , "obligation to conduct eia", 
ifelse(IGC == 3 & section_title == 23 , "relationship to other processes", 
ifelse(IGC == 3 & section_title == 24 , "tresholds and criteria for eia", 
ifelse(IGC == 3 & section_title == 25 , "cumulative impacts", 
ifelse(IGC == 3 & section_title == 26 , "transboundary impacts", 
ifelse(IGC == 3 & section_title == 27 , "ebsas", 
ifelse(IGC == 3 & section_title == 29 , "list of activities", 
ifelse(IGC == 3 & section_title == 30 , "screening", 
ifelse(IGC == 3 & section_title == 31 , "scoping", 
ifelse(IGC == 3 & section_title == 32 , "assessment and evaluation", 
ifelse(IGC == 3 & section_title == 34 , "public notification and consultation", 
ifelse(IGC == 3 & section_title == 35 , "content", 
ifelse(IGC == 3 & section_title == 38 , "decision-making for eias", 
ifelse(IGC == 3 & section_title == 39 , "monitoring", 
ifelse(IGC == 3 & section_title == "28" , "seas", 
ifelse(IGC == 3 & section_title == "40" , "reporting", 
ifelse(IGC == 3 & section_title == "41" , "review", 
ifelse(IGC == 3 & section_title == 42 , "objectives of cbtmt provision", 
ifelse(IGC == 3 & section_title == "43" , "cooperation in cbtmt", 
ifelse(IGC == 3 & section_title == "44" , "modalities for cbtmt", 
ifelse(IGC == 3 & section_title == "45" , "additional modalities", 
ifelse(IGC == 3 & section_title == "46", "types of cbtmt", 
ifelse(IGC == 3 & section_title == "47" , "monitoring and review", 
ifelse(IGC == 3 & section_title == "48", "cop", 
ifelse(IGC == 3 & section_title == "49", "scientific and technical body", 
ifelse(IGC == 3 & section_title == "50" , "secretariat", 
ifelse(IGC == 3 & section_title == "51" , "clearing-house mechanism", 
ifelse(IGC == 3 & section_title == "52" , "funding", art_title))))))))))))))))))))))))))))))))))))))))))))))))))

temp <- mutate(temp, art_title = 
ifelse(IGC == 3 & section_title == "53" , "implementation and compliance", 
ifelse(IGC == 3 & section_title == "54" , "settlement of disputes", 
ifelse(IGC == 3 & section_title == "55" , "settlement of disputes", 
ifelse(IGC == 3 & section_title == "61" , "entry into force", 
ifelse(IGC == 3 & section_title == "62" , "provisional application", 
       art_title))))))



temp <- mutate(temp, art_title = ifelse(IGC == 2 & section_title == 1, "use of terms", 
ifelse(IGC == 2 & section_title == 2, "application", 
ifelse(IGC == 2 & (grepl("2.3", section_title)), "general objectives", 
ifelse(IGC == 2 & (grepl("2.4", section_title)), "relationship to other instruments", 
ifelse(IGC == 2 & (grepl("3.1", section_title)), "scope", 
ifelse(IGC == 2 & (grepl("3.2", section_title)), "access and benefit sharing", 
ifelse(IGC == 2 & (grepl( "3.2.1", section_title)), "access", 
ifelse(IGC == 2 & (grepl( "3.2.2", section_title)), "benefit sharing", 
ifelse(IGC == 2 & (grepl( "3.2.3", section_title)), "intellectual property rights", 
ifelse(IGC == 2 & (grepl( "3.3", section_title)), "monitoring", 
ifelse(IGC == 2 & (grepl( "4.1", section_title)) , "objectives of abmt/mpa provision", 
ifelse(IGC == 2 & (grepl( "4.2", section_title)) , "relationship to measures under relevant instruments", 
ifelse(IGC == 2 & (grepl( "4.3", section_title)) , "process for abmts/mpas", 
ifelse(IGC == 2 & (grepl( "43", section_title)) , "process for abmts/mpas", 
ifelse(IGC == 2 & (grepl( "4.3.1", section_title)), "identification of areas", 
ifelse(IGC == 2 & (grepl( "4.3.2", section_title)), "decision-making for abmts/mpas", 
ifelse(IGC == 2 & (grepl( "4.2", section_title)), "implementation", 
ifelse(IGC == 2 & (grepl( "4.5", section_title)) , "monitoring and review", 
ifelse(IGC == 2 & (grepl( "5.1", section_title)), "obligation to conduct eia", 
ifelse(IGC == 2 & (grepl( "51", section_title)), "obligation to conduct eia", 

ifelse(IGC == 2 & (grepl( "5.2", section_title)) , "relationship to other processes", 
ifelse(IGC == 2 & (grepl( "5.3", section_title)) , "list of activities", 
ifelse(IGC == 2 & (grepl( "5.4", section_title)) , "process for eias", 
ifelse(IGC == 2 & (grepl( "54", section_title)) , "process for eias", 

ifelse(IGC == 2 & (grepl( "5.5", section_title)), "content", 
ifelse(IGC == 2 & (grepl( "55", section_title)), "content", 

ifelse(IGC == 2 & (grepl( "5.6", section_title)) , "monitoring", 
ifelse(IGC == 2 & (grepl( "5.7", section_title)) , "seas", 
ifelse(IGC == 2 & (grepl( "6.1", section_title)) , "objectives of cbtmt provision", 
ifelse(IGC == 2 & (grepl( "6.2", section_title)), "types and modalities of cbtmt", 
ifelse(IGC == 2 & (grepl( "62", section_title)), "types and modalities of cbtmt", 

ifelse(IGC == 2 & (grepl( "6.3", section_title)) , "funding for cbtmt", 
ifelse(IGC == 2 & (grepl( "6.4", section_title)), "monitoring and review", 
ifelse(IGC == 2 & (grepl( "IV.1", section_title)), "cop", 
ifelse(IGC == 2 & (grepl( "IV.3", section_title)), "scientific and technical body", 
ifelse(IGC == 2 & (grepl( "IV.4", section_title)) , "secretariat", 
ifelse(IGC == 2 & (grepl( "V", section_title)) , "clearing-house mechanism", 
       art_title))))))))))))))))))))))))))))))))))))))


temp <- mutate(temp, art_title = ifelse(IGC == 1 & section_title == 1, "use of terms", 
ifelse(IGC == 1 & section_title == 2, "application", 
ifelse(IGC == 1 & (grepl("2.3", section_title)), "general objectives", 
ifelse(IGC == 1 & (grepl("2.4", section_title)), "relationship to other instruments", 
ifelse(IGC == 1 & (grepl("3.1", section_title)), "scope", 
ifelse(IGC == 1 & (grepl("3.2", section_title)), "access and benefit sharing", 
ifelse(IGC == 1 & (grepl( "3.2.1", section_title)), "access", 
ifelse(IGC == 1 & (grepl( "3.2.2", section_title)), "benefit sharing", 
ifelse(IGC == 1 & (grepl( "3.2.3", section_title)), "intellectual property rights", 
ifelse(IGC == 1 & (grepl( "3.3", section_title)), "monitoring", 
ifelse(IGC == 1 & (grepl( "4.1", section_title)) , "objectives of abmt/mpa provision", 
ifelse(IGC == 1 & (grepl( "4.2", section_title)) , "relationship to measures under relevant instruments", 
ifelse(IGC == 1 & (grepl( "4.3", section_title)) , "process for abmts/mpas", 
ifelse(IGC == 1 & (grepl( "4.3.1", section_title)), "identification of areas", 
ifelse(IGC == 1 & (grepl( "431", section_title)), "identification of areas", 
ifelse(IGC == 1 & (grepl( "4.3.2", section_title)), "decision-making for abmts/mpas", 
ifelse(IGC == 1 & (grepl( "4.2", section_title)), "implementation", 
ifelse(IGC == 1 & (grepl( "4.5", section_title)) , "monitoring and review", 
ifelse(IGC == 1 & (grepl( "5.1", section_title)), "obligation to conduct eia", 
ifelse(IGC == 1 & (grepl( "5.2", section_title)) , "relationship to other processes", 
ifelse(IGC == 1 & (grepl( "5.3", section_title)) , "list of activities", 
ifelse(IGC == 1 & (grepl( "5.4", section_title)) , "process for eias", 
ifelse(IGC == 1 & (grepl( "5.5", section_title)), "content", 
ifelse(IGC == 1 & (grepl( "5.6", section_title)) , "monitoring", 
ifelse(IGC == 1 & (grepl( "5.7", section_title)) , "seas", 
ifelse(IGC == 1 & (grepl( "6.1", section_title)) , "objectives of cbtmt provision", 
ifelse(IGC == 1 & (grepl( "61", section_title)) , "objectives of cbtmt provision", 
ifelse(IGC == 1 & (grepl( "6.2", section_title)), "types and modalities of cbtmt", 
ifelse(IGC == 1 & (grepl( "62", section_title)), "types and modalities of cbtmt", 

ifelse(IGC == 1 & (grepl( "6.3", section_title)) , "funding for cbtmt", 
ifelse(IGC == 1 & (grepl( "6.4", section_title)), "monitoring and review", 
ifelse(IGC == 1 & (grepl( "655", section_title)), "funding for cbtmt", 

ifelse(IGC == 1 & (grepl( "IV 1", section_title)), "cop", 
ifelse(IGC == 1 & (grepl( "IV 3", section_title)), "scientific and technical body", 
ifelse(IGC == 1 & (grepl( "IV 4", section_title)), "secretariat", 
ifelse(IGC == 1 & (grepl( "V", section_title)) , "clearing-house mechanism", 
       art_title)))))))))))))))))))))))))))))))))))))



temp$art_title <- ifelse(temp$art_title == "consultation" & temp$package == 2, "consultation and assessment",
ifelse(temp$art_title == "consultation" & temp$package == 3, "public notification and consultation", temp$art_title))

temp$art_title <- ifelse(temp$art_title == "decision-making" & temp$package == 2, "decision-making for abmts/mpas",
ifelse(temp$art_title == "decision-making" & temp$package == 3, "decision-making for eias", temp$art_title))


temp$art_title[temp$art_title=="entry into force" ] <- "provisional application" 
temp$art_title[temp$art_title=="scoping"  ] <- "process for eia" 
temp$art_title[temp$art_title=="process of eia" ] <- "process for eia" 

temp$art_title[temp$art_title=="capacity building modalities" ] <- "modalities for cbtmt" 

temp$art_title[temp$art_title=="impact assessmentt and evaluation" ] <- 'EIA evaluation'

temp$art_title[temp$art_title=="functions of a clearing-house mechanism" ] <- 'clearing-house mechanism'
temp$art_title[temp$art_title=="clearinghouse for technology" ] <- 'clearing-house mechanism'
temp$art_title[temp$art_title=="clearing house mechanism" ] <- 'clearing-house mechanism'
temp$art_title[temp$art_title=="chm" ] <- 'clearing-house mechanism'
temp$art_title[temp$art_title=="decision making" ] <- 'decision-making'
#temp$art_title[temp$art_title=="decision-making"] <- 'designation'

temp$art_title[temp$art_title=="conference of the parties" ] <- 'decision-making body'
temp$art_title[temp$art_title=="decision making body" ] <- 'decision-making body'

temp$art_title[temp$art_title=="scientific cooperation" ] <- 'scientific and technical body'
temp$art_title[temp$art_title=="scientific body" ] <- 'scientific and technical body'

temp$art_title[temp$art_title=="publication of assessmentt reports" ] <- 'public notification and consultation'
temp$art_title[temp$art_title=="publication of assessmenttt reports" ] <- 'public notification and consultation'

temp$art_title[temp$art_title=="ABMT consultation" ] <- 'consultation and assessment'
#temp$art_title[temp$art_title=="public notification and consultation"] <- 'consultation and assessment'


temp$art_title[temp$art_title=="definitions" ] <- 'use of terms'
# temp$art_title[temp$art_title=="connectivity"] <- 'general'
temp$art_title[temp$art_title=="capacity builing, technology transfer, ebsas, nagoya protocol, cbd"  ] <- 'general'
temp$art_title[temp$package== 9 ] <- 'general'

# temp$art_title[temp$art_title=="cbd, mgr, unclos, eez, territorial shelf"] <- 'general'
# temp$art_title[temp$art_title=="traditional knowledge"] <- 'general'
# temp$art_title[temp$art_title=="traditional knowledge compliments science"] <- 'general'
# temp$art_title[temp$art_title=="unclos, continental shelf, sdg 14"] <- 'general'
# temp$art_title[temp$art_title=="unclos, sdg 14, capacity building, technology trasnfer."] <- 'general'
# temp$art_title[temp$art_title=="unclos, mgr, capacity builing, technology transfer, cbd, nagoya, bioprospecting"] <- 'general'
# temp$art_title[temp$art_title=="fisheries, abmt"] <- 'general'
temp$art_title[temp$art_title=="cooperation for cbtmt"  ] <- 'cooperation in cbtmt'

temp$art_title[temp$art_title=="clearing house mechanism"  ] <- 'clearing-house mechanism'
temp$art_title[temp$art_title=="areas identified as ecologically or biologically isgnificant or vulnerable" ] <- 'identification of areas'

temp$art_title[temp$art_title=="CHM" ] <- 'clearing-house mechanism'
temp$art_title[temp$art_title=="clearing-house" ] <- 'clearing-house mechanism'
temp$art_title[temp$art_title=="chms" ] <- 'clearing-house mechanism'
temp$art_title[temp$art_title=="clearing-house mechanismanism" ] <- 'clearing-house mechanism'
temp$art_title[temp$art_title=="clearing-house mechainsm" ] <- 'clearing-house mechanism'
temp$art_title[temp$art_title=="clearing house mechanism" ] <- 'clearing-house mechanism'
temp$art_title[temp$art_title=="clearing-house mechanism / functions of a clearing-house mechanism" ] <- 'clearing-house mechanism'


temp$art_title[temp$art_title=="categories" ] <- 'objectives of cbtmt'
temp$art_title[temp$art_title=="consulation"  ] <- 'public notification and consultation'
temp$art_title[temp$art_title=="scientific body" ] <- 'scientific and technical body'

temp$art_title[temp$art_title=="types" ] <- 'types of capacity building'
temp$art_title[temp$art_title=="no dublication" ] <- 'application'


temp$art_title[temp$art_title=="clearing house mechanism" ] <- 'clearing-house mechanism'
temp$art_title[temp$art_title=="categories" ] <- 'objectives of cbtmt'
temp$art_title[temp$art_title=="consulation" ] <- 'public notification and consultation'
temp$art_title[temp$art_title=="scientific body" ] <- 'scientific and technical body'
temp$art_title[temp$art_title=="science-policy interface, abmt, capacity building, technology trasnfer, data sharing"  ] <- 'general'
temp$art_title[temp$art_title=="area based managemnt tools, capacty building, technology trasnfer, eia"  ] <- 'general'
temp$art_title[temp$art_title=="institutions"  ] <- 'institutional arrangements'
temp$art_title[temp$art_title=="conduct of environmental impact assessment" ] <- 'process'
temp$art_title[temp$art_title=="environmental impact process" ] <- 'process'

temp$art_title[temp$art_title=="benefit sharing" ] <- 'sharing of benefits'
temp$art_title[temp$art_title=="objective" ] <- 'objectives'

temp$subsection[temp$subsection=="t" & temp$id_num =="IT_486"] <- 'p'


temp$art_title[temp$art_title== "application of MGR proviison" ] <- "application of mgr provision"
temp$art_title[temp$art_title== "objectives" & temp$Package == 1] <- "objectives of mgr provision" 
temp$art_title[temp$art_title== "objectives" & temp$Package == 4] <- "objectives of cbtmt provision" 
temp$art_title[temp$art_title== "modalities" & temp$Package == 4] <- "modalities (including additional modalities)"


temp$art_title[temp$art_title=="how regulated	" ] <- 'collection of mgrs'
temp$art_title[temp$art_title=="identification" ] <- 'identification of areas'
temp$art_title[temp$art_title=="clearing-house mechanismanism" ] <- 'clearing-house mechanism'
temp$art_title[temp$art_title=="types of capacity building" ] <- 'types of cbtmt'
temp$art_title[temp$art_title=="disputes"] <- 'settlement of disputes'
temp$art_title[temp$art_title=="sea"] <- 'strategic environmental assessments'
temp$art_title[temp$art_title=="seas"] <- 'strategic environmental assessments'



temp$art_title[temp$art_title=="capacity building modalities"] <- "modalities for cbtmt" 

temp$art_title[temp$art_title=="impact assessmentt and evaluation"] <- 'assessment and evaluation'
temp$art_title[temp$art_title=="evaluation"] <- 'assessment and evaluation'
temp$art_title[temp$art_title=="practical consequences" ] <- 'sharing of benefits'
temp$art_title[temp$art_title=="obligation" ] <- 'obligation to conduct eia'

temp$art_title[temp$art_title=="functions of a clearing-house mechanism"] <- 'clearing-house mechanism'
temp$art_title[temp$art_title=="clearinghouse for technology"] <- 'clearing-house mechanism'
temp$art_title[temp$art_title=="clearing house mechanism"] <- 'clearing-house mechanism'
temp$art_title[temp$art_title=="chm" ] <- 'clearing-house mechanism'
temp$art_title[temp$art_title=="decision making"] <- 'decision-making'
#temp$art_title[temp$art_title=="decision-making"] <- 'designation'
temp$art_title[temp$art_title=="designation"] <- 'identification of areas'
temp$art_title[temp$art_title=="implementation"] <- 'general'

temp$art_title[temp$art_title=="conference of the parties"] <- 'decision-making body'
temp$art_title[temp$art_title=="decision making body"] <- 'decision-making body'

temp$art_title[temp$art_title=="scientific cooperation"] <- 'scientific and technical body'
temp$art_title[temp$art_title=="scientific body"] <- 'scientific and technical body'

temp$art_title[temp$art_title=="publication of assessmentt reports"] <- 'public notification and consultation'
temp$art_title[temp$art_title=="publication of assessmenttt reports"] <- 'public notification and consultation'

temp$art_title[temp$art_title=="ABMT consultation"] <- 'consultation on and assessment of proposals'
#temp$art_title[temp$art_title=="public notification and consultation"] <- 'consultation on and assessment of proposals'


#temp$art_title[temp$art_title=="intellectual property rights"] <- 'sharing of benefits'
temp$art_title[temp$art_title=="definitions"] <- 'use of terms'
temp$art_title[temp$art_title=="connectivity"] <- 'general'
temp$art_title[temp$art_title=="capacity building, technology transfer, ebsas, nagoya protocol, cbd"] <- 'general'
temp$art_title[temp$art_title=="cbd, mgr, unclos, eez, territorial shelf"] <- 'general'
temp$art_title[temp$art_title=="traditional knowledge"] <- 'access to tk'
temp$art_title[temp$art_title=="traditional knowledge compliments science"] <- 'access to tk'
temp$art_title[temp$art_title=="iplk, traditional knowledge"] <- 'access to tk'

temp$art_title[temp$art_title=="unclos, continental shelf, sdg 14"] <- 'general'
temp$art_title[temp$art_title=="unclos, sdg 14, capacity building, technology trasnfer."] <- 'general'
temp$art_title[temp$art_title=="unclos, mgr, capacity builing, technology transfer, cbd, nagoya, bioprospecting"] <- 'general'
temp$art_title[temp$art_title=="cbd, nagoya, traditional knowledge, benefit sharing, capacity builing, technology trasnfer"] <- 'general'


temp$art_title[temp$art_title=="fisheries, abmt"] <- 'general'

temp$art_title[temp$art_title=="clearing house mechanism"] <- 'clearing-house mechanism'
temp$art_title[temp$art_title=="categories"] <- 'objectives of cbtmt'
temp$art_title[temp$art_title=="consulation"] <- 'public notification and consultation'
temp$art_title[temp$art_title=="scientific body"] <- 'scientific and technical body'

temp$art_title[temp$art_title=="types"] <- 'types of cbtmt'
temp$art_title[temp$art_title=="no dublication"] <- 'application'
temp$art_title[temp$art_title=="clearing house mechanism"] <- 'clearing-house mechanism'
temp$art_title[temp$art_title=="instruments and clearing-house mechanism"] <- 'clearing-house mechanism'
temp$art_title[temp$art_title=="clearing-house"] <- 'clearing-house mechanism'
temp$art_title[temp$art_title=="clearing"] <- 'clearing-house mechanism'
temp$art_title[temp$art_title=="categories"] <- 'objectives of cbtmt'
temp$art_title[temp$art_title=="consulation"] <- 'public notification and consultation'
temp$art_title[temp$art_title=="scientific body"] <- 'scientific and technical body'
temp$art_title[temp$art_title=="science-policy interface, abmt, capacity building, technology trasnfer, data sharing"] <- 'general'
temp$art_title[temp$art_title=="area based managemnt tools, capacty building, technology trasnfer, eia"] <- 'general'




temp$art_title[temp$art_title=="conduct of environmental impact assessment"] <- 'process for eias'
temp$art_title[temp$art_title=="environmental impact process"] <- 'process for eias'
temp$art_title[temp$art_title=="benefit sharing"] <- 'sharing of benefits'
temp$art_title[temp$art_title=="objective"] <- 'objectives of cbtmt'
temp$art_title[temp$art_title=="objectives"] <- 'objectives of cbtmt'
temp$art_title[temp$art_title=="concrete obligation of transfer of technology"] <- 'objectives of cbtmt'
temp$art_title[temp$art_title=="development of capacity for isds"] <- 'objectives of cbtmt'
temp$art_title[temp$art_title=="duties to support cbtmt in developing countries"] <- 'objectives of cbtmt'


temp$art_title[temp$art_title=="existing"] <- 'relationship to other instruments'
temp$art_title[temp$art_title=="existing instruments"] <- 'relationship to other instruments'
temp$art_title[temp$art_title=="relationship to unclos and other agreements"] <- 'relationship to other instruments'
temp$art_title[temp$art_title=="relation to the convention"] <- 'relationship to other instruments'
temp$art_title[temp$art_title=="relation to the convetion"] <- 'relationship to other instruments'
temp$art_title[temp$art_title=="relationship to tofer instruments"] <- 'relationship to other instruments'
temp$art_title[temp$art_title=="relation to other instruments"] <- 'relationship to other instruments'
temp$art_title[temp$art_title=="relationship to other instruments"] <- 'relationship to other instruments'
temp$art_title[temp$art_title=="relationship"] <- 'relationship to other instruments'
temp$art_title[temp$art_title=="set out relation"] <- 'relationship to other instruments'
temp$art_title[temp$art_title=="set out relations"] <- 'relationship to other instruments'
temp$art_title[temp$art_title=="set out relationship"] <- 'relationship to other instruments'


temp$art_title[temp$art_title=="strategic eia"] <- 'sea'
temp$art_title[temp$art_title=="seais"] <- 'sea'

temp$art_title[temp$art_title=="cbtmt as obligation and not as a mere posisbility"] <- 'objectives of cbtmt'
temp$art_title[temp$art_title=="application"] <- 'application of MGR provision'
temp$art_title[temp$art_title=="provisions"] <- 'general'
temp$art_title[temp$art_title=="-"] <- 'general'
temp$art_title[temp$art_title=="subject matter of review"] <- 'general'

temp$art_title[temp$art_title=="specific institutional arrangements"] <- 'institutional arrangements'
temp$art_title[temp$art_title=="conduct of environmental impact assessment"] <- "process" 
temp$art_title[temp$art_title=="environmental impact assessment consultation"] <- "public notification and consultation" 
temp$art_title[temp$art_title=="clearing house mechanism"] <- "clearing-house mechanism" 
temp$art_title[temp$art_title=="objectives of CBTT for capacity building"] <- "objectives for cbtmt" 
temp$art_title[temp$art_title=="capacity building modalities"] <- "modalities for cbtmt" 
temp$art_title[temp$art_title=="cross-cutting elements"] <- "modalities for cbtmt" 

temp$art_title[temp$art_title=="funding of capacity building"] <- "funding" 
temp$art_title[temp$art_title=="funding of CBTT"] <- "funding" 
temp$art_title[temp$art_title=="modalities"] <- "modalities for cbtmt" 
temp$art_title[temp$art_title=="benefit sharing"] <- "sharing of benefits" 
temp$art_title[temp$art_title=="categories of states for capacity building"] <- 'objectives for cbtmt'
temp$art_title[temp$art_title=="process" & temp$package == 3] <- 'EIA process'
temp$art_title[temp$art_title=="process" & temp$package == 2] <- 'identification of areas'

temp$art_title[temp$art_title=="mechanisms to be utilized"] <- 'types of cbtmt'
temp$art_title[temp$art_title=="types of capacity builing"] <- 'types of cbtmt'


temp$art_title[temp$art_title=="who"] <- 'sharing of benefits'
temp$art_title[temp$art_title=="instruments and clearing-house mechanism"] <- 'clearing-house mechanism'
temp$art_title[temp$art_title=="provisions, instruments and clearing-house mechanism"] <- 'clearing-house mechanism'
temp$art_title[temp$art_title=="implementation"] <- 'clearing-house mechanism'
temp$art_title[temp$art_title=="content"] <- 'preparation and content of EIA'



### replace 0 with package + general
temp <- mutate(temp, art_title = ifelse(package == 1 & section_title == 0 & subsection == 0 & is.na(art_title), "mgrs general", 
       ifelse(package == 2 & section_title == 0 & subsection == 0 & is.na(art_title), "abmts/mpas general", 
              ifelse(package == 3 & section_title == 0 & subsection == 0 & is.na(art_title), "eias general", 
                     ifelse(package == 4 & section_title == 0 & subsection == 0 & is.na(art_title), "cbtmt general", 
                            ifelse(package == 5 & section_title == 0 & subsection == 0 & is.na(art_title), "crosscutting general", temp$art_title))))))


## translation between draft text versions to IGC 5
temp$art_title[temp$art_title=="access and benefit sharing"] <- 'sharing of benefits'
temp$art_title[temp$art_title=="budget"] <- 'funding'
temp$art_title[temp$art_title=="collection of and accesss to MGRs"] <- "collection of mgrs"
temp$art_title[temp$art_title=="institutions" & temp$package == 5] <- 'crosscutting general'
temp$art_title[temp$art_title=="institutions" & temp$package == 9] <- 'crosscutting general'
temp$art_title[temp$art_title=="institutional arrangements"] <- 'crosscutting general'
temp$art_title[temp$art_title=="insitutional arrangements"] <- 'crosscutting general'

temp$art_title[temp$art_title=="consultation on and assessment of proposal"] <- 'consultation and assessment'
temp$art_title[temp$art_title=="institutions" & temp$package == 2] <- 'decision-making for abmts/mpas'

temp$art_title[temp$art_title=="decision-making" & temp$package == 2] <- 'decision-making for abmts/mpas'
temp$art_title[temp$art_title=="decision-making" & temp$package == 3] <- 'decision-making for eias'
temp$art_title[temp$art_title=="decision-making" & temp$package == 5] <- 'cop'
temp$art_title[temp$art_title=="right to vote" & temp$package == 5] <- 'cop'

temp$art_title[temp$art_title=="general objective" & temp$package == 5] <- 'general objectives'

temp$art_title[temp$art_title=="objectives" & temp$package == 5] <- 'general objectives'
temp$art_title[temp$art_title=="objectives" & temp$package == 9] <- 'general objectives'
temp$art_title[temp$art_title=="objectives" & temp$package == 1] <- 'objectives of mgr provision'
temp$art_title[temp$art_title=="objectives" & temp$package == 2] <- 'objectives of abmt/mpa provision'
temp$art_title[temp$art_title=="objectives" & temp$package == 4] <- 'objectives of cbtmt provision'
temp$art_title[temp$art_title=="objectives" & temp$package == 3] <- 'obligation to conduct eia'
temp$art_title[is.na(temp$art_title) & temp$package == 5] <- 'crosscutting general'
temp$art_title[is.na(temp$art_title) & temp$package == 4] <- 'cbtmt general'
temp$art_title[is.na(temp$art_title) & temp$package == 3] <- 'eias general'
temp$art_title[is.na(temp$art_title) & temp$package == 2] <- 'abmts/mpas general'
temp$art_title[is.na(temp$art_title) & temp$package == 1] <- 'mgrs general'

temp$art_title[temp$art_title=="abtms/mpas general"] <- 'abmts/mpas general'

temp$art_title[temp$art_title=="objectives of cbtmt"] <- 'objectives of cbtmt provision'

temp$art_title[temp$art_title=="mgr, abs, isa, imo,"] <- 'mgrs general'

temp$art_title[temp$art_title=="ebsas"] <- 'identification of areas'
temp$art_title[temp$art_title=="relationship to other EIA processes"] <- 'relationship to other processes'
temp$art_title[temp$art_title=="relationship to measures under relevant bodies"] <- 'international cooperation and coordination'
temp$art_title[temp$art_title=="relationship to measures under relevant instruments"] <- 'international cooperation and coordination'
temp$art_title[temp$art_title=="international cooperation"] <- 'international cooperation and coordination'

temp$art_title[temp$art_title=="obligation"] <- 'obligation to conduct eia'
temp$art_title[temp$art_title=="EIA monitoring and review"] <- 'monitoring'
temp$art_title[temp$art_title=="eia process"] <- 'public notification and consultation'

temp$art_title[temp$art_title=="scope"] <- 'tresholds and criteria for eia'
temp$art_title[temp$art_title=="scoping"] <- 'tresholds and criteria for eia'
temp$art_title[temp$art_title=="seias" ] <- 'seas'
temp$art_title[temp$art_title=="strategic eias"] <- 'seas'
temp$art_title[temp$art_title=="strategic environmental assessments"] <- 'seas'
temp$art_title[temp$art_title=="technology needs assessment"] <- 'modalities for cbtmt'
temp$art_title[temp$art_title=="modalities"] <- 'modalities for cbtmt'
temp$art_title[temp$art_title=="need to request for cbtmt"] <- 'modalities for cbtmt'

temp$art_title[temp$art_title=="technology needs assessment"] <- 'additional modalities for tmt'
temp$art_title[temp$art_title=="types and modalities of cbtmt"] <- 'modalities for cbtmt'
temp$art_title[temp$art_title=="list to be included"] <- 'tresholds and criteria for eia'
temp$art_title[temp$art_title=="list to be included / specific forms of cooperation"] <- 'tresholds and criteria for eia'
temp <- mutate(temp, art_title = ifelse( (grepl("secretariat", art_title)), "secretariat", art_title))
temp <- mutate(temp, art_title = ifelse( (grepl("common heritage", art_title)), "sharing of benefits", art_title))
temp <- mutate(temp, art_title = ifelse( (grepl("benefits", art_title)), "sharing of benefits", art_title))
temp <- mutate(temp, art_title = ifelse( (grepl("fish", art_title)), "application of mgr provision", art_title))
temp <- mutate(temp, art_title = ifelse( (grepl("ipr", art_title)), "intellectual property rights", art_title))


temp$art_title[temp$art_title=="3.2.2."] <- 'sharing of benefits'
temp$art_title[temp$art_title=="collection"] <- 'collection of mgrs'
temp <- mutate(temp, art_title = ifelse( (grepl("ilk", art_title)), "general", art_title))
temp$art_title[temp$art_title=="b"] <- 'application of mgr provision'
temp$art_title[temp$art_title=="application of MGR provision"] <- 'application of mgr provision'
temp$art_title[temp$art_title=="derivatives"] <- 'application of mgr provision'
temp$art_title[temp$art_title=="examples of cooperation"] <- 'cooperation in cbtmt'
temp$art_title[temp$art_title=="existing mechanisms"] <- 'modalities for cbtmt'
temp$art_title[temp$art_title=="how the funds would be used"] <- 'modalities for cbtmt'
temp$art_title[temp$art_title=="recognition of the needs of developing countries"] <- 'modalities for cbtmt'
temp$art_title[temp$art_title=="rights coastal states"] <- 'application of mgr provision'
temp$art_title[temp$art_title=="specific forms of cooperation"] <- 'cooperation in cbtmt'
temp$art_title[temp$art_title=="terms and conditions for tmt"] <- 'additional modalities'
temp$art_title[temp$art_title=="accesss benefit sharing, marine technology transfer"] <- 'general'
temp$art_title[temp$art_title=="process for abmts/mpas"] <- 'consultation and assessment'

temp$art_title[temp$art_title=="criteria"] <- 'thresholds and criteria'
temp$art_title[temp$art_title=="tresholds and criteria for eia"] <- 'thresholds and criteria'
temp$art_title[temp$art_title=="thresholds and criteria for eias"] <- 'thresholds and criteria'

temp$art_title[temp$art_title=="general principles"] <- 'general principles and approaches'
temp$art_title[temp$art_title=="list and modalities"] <- 'modalities for cbtmt'

temp$art_title[temp$art_title=="modalities chms"] <- 'modalities for cbtmt'
temp$art_title[temp$art_title=="objectives, needs, art 266 unclos"] <- 'objectives of cbtmt provision'

temp$art_title[temp$art_title=="procedural steps"] <- 'process'
temp$art_title[temp$art_title=="process for eia"] <- 'process'

temp$art_title[temp$art_title=="3.2.3. intellectual property rights"] <- 'intellectual property rights'
temp$art_title[temp$art_title=="3.3. monitoring"] <- 'monitoring and transparency'
temp$art_title[temp$art_title=="access"] <- 'collection of mgrs'
temp$art_title[temp$art_title=="benefit sharing modalities"] <- 'sharing of benefits'
temp$art_title[temp$art_title=="compatibility"] <- 'international cooperation and coordination'
temp$art_title[temp$art_title=="process for eia"] <- 'process'
temp$art_title[temp$art_title=="process for eias"] <- 'process'
temp$art_title[temp$art_title=="eia process"] <- 'process'
temp$art_title[temp$art_title=="screening"] <- 'process'
temp <- mutate(temp, art_title = ifelse( (grepl("process", art_title)), "process", art_title))

temp$art_title[temp$art_title=="activities with respect to mgr of abnj"] <- 'activities with respect to mgrs'
temp$art_title[temp$art_title=="access to tk"] <- 'access to traditional knowledge'
temp$art_title[temp$art_title=="funding for cbtmt"] <- 'modalities for cbtmt'
temp$art_title[temp$art_title=="modalities for cbtt"] <- 'modalities for cbtmt'


temp$art_title[temp$art_title=="principles"] <- 'general principles and approaches'

temp$art_title[temp$art_title=="general elements"] <- 'general principles and approaches'
temp$art_title[temp$art_title=="geographical scope"] <- 'application of mgr provision'
temp$art_title[temp$art_title=="material scope"] <- 'application of mgr provision'

temp$art_title[temp$art_title=="list of activities"] <- 'obligation to conduct eia'

temp$art_title[temp$art_title=="how regulated	"] <- 'collection of and access to mgrs'
temp$art_title[temp$art_title=="identification"] <- 'identification of areas'
temp$art_title[temp$art_title=="clearing-house mechanismanism"] <- 'clearing-house mechanism'
temp$art_title[temp$art_title=="types of capacity building"] <- 'types of cbtmt'
temp$art_title[temp$art_title=="disputes"] <- 'settlement of disputes'

temp$art_title[temp$art_title=="how regulated	"] <- 'collection of and access to mgrs'
temp$art_title[temp$art_title=="identification"] <- 'identification of areas'
temp$art_title[temp$art_title=="consultation on and assessment of proposals"] <- 'public notification and consultation'
temp$art_title[temp$art_title=="types of capacity building"] <- 'types of cbtt'
temp$art_title[temp$art_title=="publication of assessment reports"] <- 'publication of eia'
temp$art_title[temp$art_title=="data sharing"] <- 'clearing-house mechanism'
temp$art_title[temp$art_title=="abmt consultation"] <- 'consultation and assessment'
temp$art_title[temp$art_title=="science-policy interface"] <- 'scientific and technical body'
temp$art_title[temp$art_title=="crosscutting general" & temp$actor=="IOC"] <- 'clearing-house mechanism'
temp$art_title[temp$art_title=="crosscutting general" & temp$actor=="ISA"] <- 'clearing-house mechanism'
temp$art_title[temp$art_title=="crosscutting general" & temp$actor=="UNEP"] <- 'scientific and technical body'



temp$art_title <- str_to_lower(temp$art_title)




## replace 0 with NA again
temp$section_title[temp$section_title == 0] <- NA
temp$subsection[temp$subsection == 0] <- NA