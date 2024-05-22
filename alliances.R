## alliance,

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

clam <- c("Brazil", "Argentina", "Uruguay", "Chile", "Costa Rica", "El Salvador",
              "Guatemala", "Honduras", "Mexico", "Panama", "Peru", "Dominican Republic", "Colombia",
          "Clam")


ldc <- c("Malawi", "Ldcs", "Bangladesh")


nun <- c("Turkey", "Venezuela", "Syrian Arab Republic", "UZBEKISTAN",
         "TURKMENISTAN", "TAJIKISTAN")


## un groups
weog <- c("canada", "eu", "new zealand", "australia", "usa", "switzerland", "norway", "iceland",
          "France", "UK", "Spain", "Monaco", "Israel", "Finland", "Belgium")



asia_pcf <- c("Afghanistan", "Bahrain",
              "Bangladesh",
              "Bhutan",
              "Brunei Darussalam",
              "Cambodia",
              "China",
              "Cyprus",
              "North Korea",
              "Fiji",
              "India", 
              "Indonesia", 
              "Iran",
              "Iraq",
              "Japan", 
              "Jordan", 
              "Kazakhstan", 
              "Kuwait", 
              "Kyrgyzstan", 
              "Lao People's Democratic Republic",
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
              "Repubic of Korea",
              "Samoa", 
              "Saudi Arabia", 
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
              "United Arab Emirates",
              "Uzbekistan",
              "Vanuatu",
              "Viet Nam",
              "Yemen",
              "Federated States of Micronesia")

asia_pcf <- str_to_lower(asia_pcf)

la <- c("Brazil", "Argentina", "Uruguay", "Chile", "Costa Rica", "El Salvador",
          "Guatemala", "Honduras", "Mexico", "Panama", "Peru", "Dominican Republic", "Colombia",
          "Ecuador", "Venezuela", "Saint Lucia", "Antigua and Barbuda", "Jamaica", "Paraguay",
        "Bahamas", "Belize", "Trinidad and Tobago", "Cuba", "barbados", "Nicaragua")


eastern <- c("Russia")

weog <- str_to_lower(weog)
eastern <- str_to_lower(eastern)
afr <- str_to_lower(afr)


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
clam <- str_to_lower(clam)
ldc <- str_to_lower(ldc)


###

bbnj <- mutate(bbnj, alliance =ifelse (actor %in% afr, "African Group",
                                       ifelse (actor %in% clam, "CLAM",
                                               ifelse (actor %in% cari, "CARICOM",
                                                       ifelse (actor %in% piss, "PSIDS",
                                                               ifelse (actor %in% aos, "AOSIS",
                                                                       ifelse (actor %in% ldc, "Least Developed",
                                                                               ifelse (actor %in% nun, "Non UNCLOS Party",
                                                                                       ifelse (actor %in% land, "Landlocked",
                                                                                       ifelse (actor %in% g77, "G77/China",
                                                                                               ifelse(actor == "eu", "EU",
                                                                                               NA)))))))))))




bbnj$actor <- str_to_lower(bbnj$actor
                                               )
bbnj <- mutate(bbnj, un_group =ifelse (actor %in% weog, "Western European and Others",
                                       ifelse (actor %in% la, "Latin American and Caribbean",
                                               ifelse (actor %in% asia_pcf, "Asia-Pacific",
                                                       ifelse (actor %in% afr, "African Group",
                                                               ifelse (actor %in% eastern, "Eastern European",
                                                               NA))))))



