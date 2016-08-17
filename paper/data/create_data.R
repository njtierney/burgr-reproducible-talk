# create the data from wakefield.

library(wakefield)

burgr_data <- r_data_frame(n = 100,
                           id,
                           race,
                           r_series(grade, 
                                    j = 5, 
                                    n = 100, 
                                    relate = "+1_6")
                           )

burgr_data

# readr::write_csv(burgr_data, "burgr_data_clean.csv")

big_burgr_data <- r_data_frame(n = 1000,
                               id,
                               race,
                               r_series(grade, 
                                        j = 5, 
                                        n = 1000, 
                                        relate = "+1_6")
)

# readr::write_csv(big_burgr_data, "big_burgr_data_clean.csv")

library(dplyr)
library(tidyr)

burgr_data %>% 
    gather(key = "grade",
           value = "score",
           -ID, 
           -Race) %>%
    mutate(Race = as.character(Race)) %>%
    # arrange(Race, grade) %>%
    # readr::write_csv("burgr_data_s2.csv")

    burgr_data_gather <- burgr_data %>%
    gather(key = "grade",
           value = "score",
           -ID, 
           -Race) 

burgr_data_gather %>%
    spread(key = "grade",
           value = "score")

    # burgr_data_gather %>%
    #     filter(grade == "Grade_1") %>%
    #     group_by(grade, Race) %>%
    #     summarise_at(vars(score),
    #                  funs(mean, sd)) %>%
    #     readr::write_csv("burgr_data_grade_1.csv")
    # 
    # burgr_data_gather %>%
    #     filter(grade == "Grade_2") %>%
    #     group_by(grade, Race) %>%
    #     summarise_at(vars(score),
    #                  funs(mean, sd)) %>%
    #     readr::write_csv("burgr_data_grade_2.csv")
    # 
    # burgr_data_gather %>%
    #     filter(grade == "Grade_3") %>%
    #     group_by(grade, Race) %>%
    #     summarise_at(vars(score),
    #                  funs(mean, sd)) %>%
    #     readr::write_csv("burgr_data_grade_3.csv")
    # 
    # burgr_data_gather %>%
    #     filter(grade == "Grade_4") %>%
    #     group_by(grade, Race) %>%
    #     summarise_at(vars(score),
    #                  funs(mean, sd)) %>%
    #     readr::write_csv("burgr_data_grade_4.csv")
    # 
    # burgr_data_gather %>%
    #     filter(grade == "Grade_5") %>%
    #     group_by(grade, Race) %>%
    #     summarise_at(vars(score),
    #                  funs(mean, sd)) %>%
    #     readr::write_csv("burgr_data_grade_5.csv")
    # 
