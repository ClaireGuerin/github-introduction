# This small program prints out a short description of essential git commands 

if (!require("pacman")) install.packages("pacman")
pacman::p_load(crayon)
library(crayon)

#==== Version control ====
cat(blue("\n Version control\n\n"))

cat(green("git pull"), "\t\t\t\t Get the most recent version of this branch from remote repository.\n")
cat(green("git add"), blue("[file]"), "\t\t\t\t Stage changes to file to add them to the next commit. \n")
cat(green("git add"), blue("."), "\t\t\t\t Stage all new changes to add them to the next commit. \n")
cat(green("git commit"), blue("-m"), "\t\t\t\t Commit any change with a message. \n")
cat(green("git commit"), blue("-am"), "\t\t\t\t Stage and commit changes on already existing files with a message. \n")
cat(green("git tag"), blue("-a [version] -m [message]"), "\t Tag new release with version number and message. \n")
cat(green("git push"), "\t\t\t\t Push local commits to origin branch in remote repository. \n")
cat(green("git push"), blue("--set-upstream origin [branch]"), " Push local branch to remote repository. \n")
cat(green("git push"), blue("origin --tags"), "\t\t\t Push local tags to remote repository. \n")

#==== Navigation ====
cat(blue("\n\n Navigation\n\n"))

cat(green("git status"), "\t\t\t Status of files in current branch. \n")
cat(green("git branch"), "\t\t\t List local branches. \n")
cat(green("git branch"), blue("-r"), "\t\t\t List remote branches. \n")
cat(green("git branch"), blue("-a"), "\t\t\t List all branches, both remote and local. \n")
cat(green("git branch"), blue("[new-branch]"), "\t Create a new local branch. \n")
cat(green("git checkout"), blue("[branch]"), "\t\t Move HEAD to branch. \n")
cat(green("git checkout"), blue("[commit-number]"), "\t Move HEAD to commit. \n")
cat(green("git checkout"), blue("-b [new-branch]"), "\t Create a new local branch and move HEAD there. \n")
cat(green("git log"), "\t\t\t Full commit history. \n")
cat(green("git log"), blue("--oneline"), "\t\t Short commit history (on one line). \n")
cat(green("git diff"), "\t\t\t Show changes between now and last commit. \n")
cat(green("git diff"), blue("[other-branch]"), "\t Show differences between current branch and other branch. \n")
