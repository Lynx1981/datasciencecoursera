The script works with UCI HAR Dataset folder provided by Samsung.<br/>
What it does:<br/>
1. it reads the training and test data sets, as well as features.txt file and activity_labels.txt<br/>
2. It merges the subject and activity to dataset, as well as replaces the activity code with its name as per activity label<br/>
3. It assigns the column names using the names from feature.txt<br/>
4. it selects only the columns containing means and stardand derivations<br/>
5. it creates a new data frame where for all the variables the average is calulated, grouped by subject and activity<br/>
6. it adds the names for grouping dimensions and adds "Average_" to variable names to reflect the fact that the mean value is calculates<br/>
7. it outputs this data frame<br/>
