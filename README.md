The script works with UCI HAR Dataset folder provided by Samsung.
What it does:
1. it reads the training and test data sets, as well as features.txt file and activity_labels.txt
2. It merges the subject and activity to dataset, as well as replaces the activity code with its name as per activity label
3. It assigns the column names using the names from feature.txt
4. it selects only the columns containing means and stardand derivations
5. it creates a new data frame where for all the variables the average is calulated, grouped by subject and activity
6. it outputs this data frame
