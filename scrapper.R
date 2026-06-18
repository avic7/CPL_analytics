api_url <- "Can_PL API (Replace this wiht actual CPL api for the specific season you neeed to scrape the data) " 
# Fetch the JSON data from the API
raw_data <- fromJSON(api_url)

# JSON data is often nested. So we  might need to extract a specific list element to get table.
str(raw_data)


# Isolate the players data frame from the raw list
players_raw <- raw_data$players

# Extract the nested team name and add it as a regular column
players_raw$team_name <- players_raw$team$shortName
