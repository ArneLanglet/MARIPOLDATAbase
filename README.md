This is the readme for how to read the bbnj_database R files

The R files in different steps reads, cleans and stores the data 

The first file 0_bbnj.R is the master file. By running this file, the three main files that 1. reads the raw excel files filled out by the researchers; 
2. cleans, organizes and generates the variables of the dataset and 3. stores the final data (1_read.R; 2._cleaning.R; 3_save.R)


1_read.R accesses the raw data - i.e. the codebooks filled out by the researchers. These are on the MARIPOLDATA servers and cannot be publicly accessed. 

2_cleaning.R cleans the data and organizes, categorizes the variables. In detail, this file will run the following variable creating files: 

text cleaning - this files corrects typos 
text.R

packages - this file adds the label to the numbering of the packages and cleans the variable
packages.R

actor - this file corrects and streamlines the actors names 
actors.R

date & time - this file formats the date & time columns
datetime.R 

speaking time (diff) variable and double - this time calculates the time each statement lasted, i.e. the difference between the start time of a 
statement and the start time of the following statement. Using this and the id variable it also adds a "double" variable with which duplicated rows 
of the same statement can be identified and filtered
double.R
diff_time.R


type of observation + label - this file streamlines the type of observation and add a label column
type_obs.R


actor_type - this variable categorizes the types of actors and creates the following variables: "actor_type" & "actor_type2"
actor_type.R


alliance - this file generates the "alliance" variable. It categorizes each state into an alliance (where applicable)
alliances.R


on behalf of (obo) - this file generates the "obo" variable. Where applicable it adds the alliance on behalf of which a state spoke
obo.R


negotiation format - this file streamlines and generates the negotiation_format column
negformat.R

article title - this variable streamlines the art_title column
arttitle.R 


section title
sectiontitle.R


pro/contra variable
procontra.R


mood
mood.R


issue scientific
scientific.R


sentiment analysis variables 
sentiment.R


webcast, enb reports draft links - this file was written by Simon Fellinger. It adds the links to the current draft text,
the ENB reports of a day and the webcast (where applicable) to the respective IGC, day and session
links.R


anonymization - this file anonymizes the observations from informal negotiation settings systematically
anonymization.R

-------------

3_save.R stores the cleaned dataset as final data and creates subsets of the dataset 

