## code for analysing report for ...

# read in the data -------------------------------------------------------------

data <- read.csv()

# run the model ----------------------------------------------------------------

lm_fit_school <- lm(grade_5 ~ race + grade_1 + grade_2 + grade_3 + grade_4,
                    data = data)

# show model summary -----------------------------------------------------------

summary(lm_fit_school)

# manipulate model values ------------------------------------------------------

my_predictions <- predict(lm_fit_school)

my_residuals <- residuals(lm_fit_school)

my_values <- lm_fit_school$grade_5

my_new_data_frame <- data.frame(my_predictions,
                                my_residuals,
                                my_values)

# do the plotting --------------------------------------------------------------

plot(lm_fit_school)
    
library(ggplot2)

ggplot(data = my_new_data_frame,
       aes(x = my_values,
           y = my_predictions)) + 
    geom_point()

ggplot(data = my_new_data_frame,
       aes(x = my_residuals,
           y = my_predictions)) + 
    geom_point()

ggplot(data = my_new_data_frame,
       aes(x = my_residuals,
           y = my_predictions)) + 
    geom_point()


