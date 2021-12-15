# This simple program will print a random say from a random Windows animal
# Author: Claire Guerin - 26/08/2021

if (!require("pacman")) install.packages("pacman")
pacman::p_load(cowsay)
library(cowsay)

#==== Cowsay windows compatible animals ====
# make a vector of animals safe to use on windows in case vignette built on windows
not_on_windows <- c('shortcat','longcat','fish','signbunny','stretchycat',
                    'anxiouscat','longtailcat','grumpycat','mushroom')
names_safe <- names(animals)[!names(animals) %in% not_on_windows]

#==== Print a random saying by a random animal on screen

say(what = "fortune", 
    by = sample(names_safe, 1),
    what_color = rgb(.1, .2, .3),
    by_color = sample(colors(), 5),
    type = "message")

print("... But only at the beginning!")
