# Getting-and-Cleaning-Data
### Coursera Data Science Specialization Course

This repo is created for the evaluation of the course project.

It contains two linked R scripts that do the following:
- CourseProject.R: Download the data from the website and read it into R; write the result of the analysis to text file
- run_analysis.R: Merge the data to meet the course project requirements 1 - 5
It also includes the file CodeBook.md that describes the data and the variables.

## Please note
Please note that the run_analysis.R script doesn't stick to the order of the requirements. The merging step is done pretty late in the analysis only because I wanted to include a variable that contains the origin (training/test data set) for each observation. I realize that I could have spared myself a lot of coding by first merging the two data sets but I just didn't want to rewrite all the work I had done.
