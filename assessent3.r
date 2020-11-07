library(Lahman)
top <- Batting %>% 
  filter(yearID == 2016) %>%
  arrange(desc(HR)) %>%    # arrange by descending HR count
  slice(1:10)    # take entries 1-10
top %>% as_tibble()

Master %>% as_tibble()

top_names <- top %>% left_join(Master)  %>% select(playerID, nameFirst, nameLast, HR)

top_names
top_salary <- Salaries %>% filter(yearID == 2016) %>%  right_join(top_names) %>% select(nameFirst, nameLast, teamID, HR, salary)

top_salary

awards_2016 <- AwardsPlayers %>% filter(yearID == 2016) %>% select(playerID, awardID)
top10_awards <- inner_join(top_names, awards_2016)
top10_awards

col_awards <- awards_2016$playerID
col_top10 <- top_names$playerID
setdiff(col_awards, col_top10)

