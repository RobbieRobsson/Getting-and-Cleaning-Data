# Codebook

For information on the original data, please see README.txt in the original ZIP-file. Please note that the make.unique function has been applied to the variable names in order to have distinguishable variable names.

Added variables:  
*Activity: information contained in "y\_test" / "y\_train" data sets considering the activity the person was doing when collecting the data  
*Person: information contained in "subject\_test" / "subject\_train" data sets specifying the person that was being observed  
*Group: two level factor variable telling whether the person belonged to the training or test data set

Also note: The variables contained in the "FinalTidyData.txt"-file are - except for the grouping variables "Activity" and "Person" - the means of the respective variable grouped by those variables.