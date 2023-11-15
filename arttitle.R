
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

temp <- temp[order(temp$author, temp$id_num), ]


my_vec12 <- temp$subsection
new_vec12 <- vector(length = length(my_vec12))
for (i in seq_along(my_vec12)) {
  if (!is.na(my_vec12[i])) current <- my_vec12[i]
  new_vec12[i] <- current
}
temp[["subsection"]] <- new_vec12