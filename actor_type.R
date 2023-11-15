## Categorization of actor_type & actor_type2


### define groups/categories

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
              'United Arab Emirates', 'UK', 'USA', 'Uruguay',
              'Uzbekistan', 'Vanuatu', 'Venezuela', 'Viet Nam', 'Yemen', 'Zambia', 'Zimbabwe', 'EU', "Holy See")

NGO <- c('Greenpeace', "American Society Of International Law", "Asociaci?n Interamericana Para La Defensa Del Ambiente", 
         "Birdlife", "Care-To-Help Foundation", "Center For Oceans Law And Policy", "Comit? Des Observateurs Des Droits De L'homme",
         "Development Alternatives With Women For A New Era",
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
        "ifremer", "university washington", "WORLD MARITIME UNIVERSITY","DOSI")




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


### attribute actor_type

bbnj$actor <- str_to_lower(bbnj$actor)

bbnj <- mutate(bbnj, actor_type =ifelse (actor %in% Country, "State",
                                         ifelse (actor %in% NGO, "NGO",
                                                 ifelse (actor %in% IGO, "IGO",
                                                         ifelse (actor %in% unbodies, "UN Body",
                                                                 ifelse (actor %in% sc, "Scientific Institute",
                                                                         ifelse (actor %in% unalliance, "State",
                                                                                 ifelse (actor %in% business, "Business",   
                                                                                         ifelse (actor %in% unag, "UN Agency",  
                                                                                                 ifelse (actor %in% unepcon, "UN Env. Treaty",         
                                                                                                         "Other"))))))))))



bbnj$actor_type2 <- bbnj$actor_type

bbnj$actor_type2[bbnj$actor_type == "UN Alliance"] <- "State"
bbnj$actor_type2[bbnj$actor_type == "UN Env. Treaty"] <- "IGO"
bbnj$actor_type2[bbnj$actor_type == "UN Agency"] <- "IGO"
bbnj$actor_type2[bbnj$actor_type == "business"] <- "Industry"
bbnj$actor_type2 <- ifelse(bbnj$actor %in% c("vice president", 
                                             "president", 
                                             "facilitator",
                                             "chair", 
                                             "credentials committee"), "Secretariat",bbnj$actor_type2)

bbnj$actor_type2[bbnj$actor_type2 == "UN Body"] <- "IGO"


