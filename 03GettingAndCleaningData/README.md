## READ ME

1. Read data from train and test sets and combine them
I read information from subject_train, y_train and X_train and combine them into a dataframe in this order using 'cbind()'
because they have the same number of rows. The same operation is done for the test set. rbind() then is used to combined
both these sets into a dataframe. Notice there is no NA.

2. Extract only the mean and std columns.
I search the features.text file to know which indices are for mean() and std() in this vector, using grep. Note that
for 'grep', I should set fixed=F otherwise I can't do the | (or) operation on 'mean' and 'std'. Subsetting data is done
after considering the first 2 columns has been added for subject_train and y_train.

3. Rename activity labels.
Simply cast the activity column as factor and rename its levels.

4. Rename variables in the combined data set.
For subject ID and activity, correct names are put.
For features, names are taken from features.text. I also remove the brakets () and add the word Average.

5. Take the average of all measurements per subject ID per activity.
Use 'aggregate' to apply function 'mean' across each pair of subject and activity. Then write data to a txt file.
