install.packages(dplyr)
library(dplyr)
?mtcars
dplyr::filter(mtcars, mpg > 25 & am==1) #:: specifies the scope of extracting the #filter

filter functioj from the dplyr package
filter(mtcars, mpg>25 & am==1)

mtcars %>% filter(mpg>25 & am==1) #Both the above functions give the same values

mtcars %>% filter(mpg>25 & am==1) %>% arrange(wt) #arranging the wt i ascending oredr and displaying the function

mtcars %>% filter(mpg>25 & am==1) %>% arrange(wt) %>% summarise(n())
mtcars %>% filter(mpg>25 & am==1) %>% arrange(wt) %>% count() #both the above commands give the same functional values

mtcars %>% group_by(am) %>% summarise(mean(mpg)) #mean mpg of mt cars with am=0,1
mtcars %>% group_by(wt & gear) %>% summarise(mean(mpg)) #mean of mpg of mtcars considering the wt and gear
?select
select(mtcars, gear, am, wt)
pull(mtcars,gear)
?select
select(mtcars, ends_with(m))

#mutate

mutate(mtcars,displ_l= disp/61.0237) #keeps other cols
transmutate(mtcars, displ_l= disp/61.0237)
