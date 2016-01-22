Data description - Human Activity Measurments

Human Activity Recognition Using Smartphones Data Set

<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>\#

Please find the original data including files with description of all
measurements in the link below:

<http://archive.ics.uci.edu/ml/machine-learning-databases/00240/>

Further manipulation of data is carried in the run\_analysis.R, the
variable names that have been modified are followed the instructions
below:

1.activity

The original data set had numbers representing the activities monitored
that were replaced by the word describing each activity. 1-walking
2-walking upstairs 3-walking downstairs 4-sitting 5-standing 6-laying

2.subject

Sequence of integers from 1 to 30, representing group of 30 volunteers
within an age bracket of 19-48 years.

All the variables from number 3 to 68 were renamed in order to
facilitate understanding of what they actually measure. All the variable
names below refer to the average measurements for each subject and each
activity, hence they all start with "avg".The next segment denotes
whether it is a "Time" or "Frequency" domain signals. The following
segment describes if the data is taken from "Body" or "Gravity". The
"Linearacc" or "Angvelocity" indicate if they come from the
accelerometer and gyroscope respectively. Then "Mean" and "Sigma"
indicates whether the measurement is a mean or a standard deviation.
Finally, "X","Y" and "Z" refer to the three axis to which measurements
were taken.

3.avgTimeBodyLinearaccMeanX

4.avgTimeBodyLinearaccMeanY

5.avgTimeBodyLinearaccMeanZ

6.avgTimeBodyLinearaccSigmaX

7.avgTimeBodyLinearaccSigmaY

8.avgTimeBodyLinearaccSigmaZ

9.avgTimeGravityLinearaccMeanX

10.avgTimeGravityLinearaccMeanY

11.avgTimeGravityLinearaccMeanZ

12.avgTimeGravityLinearaccSigmaX

13.avgTimeGravityLinearaccSigmaY

14.avgTimeGravityLinearaccSigmaZ

15.avgTimeBodyLinearaccJerkMeanX

16.avgTimeBodyLinearaccJerkMeanY

17.avgTimeBodyLinearaccJerkMeanZ

18.avgTimeBodyLinearaccJerkSigmaX

19.avgTimeBodyLinearaccJerkSigmaY

20.avgTimeBodyLinearaccJerkSigmaZ

21.avgTimeBodyAngvelocityMeanX

22.avgTimeBodyAngvelocityMeanY

23.avgTimeBodyAngvelocityMeanZ

24.avgTimeBodyAngvelocitySigmaX

25.avgTimeBodyAngvelocitySigmaY

26.avgTimeBodyAngvelocitySigmaZ

27.avgTimeBodyAngvelocityJerkMeanX

28.avgTimeBodyAngvelocityJerkMeanY

29.avgTimeBodyAngvelocityJerkMeanZ

30.avgTimeBodyAngvelocityJerkSigmaX

31.avgTimeBodyAngvelocityJerkSigmaY

32.avgTimeBodyAngvelocityJerkSigmaZ

33.avgTimeBodyLinearaccMagMean

34.avgTimeBodyLinearaccMagSigma

35.avgTimeGravityLinearaccMagMean

36.avgTimeGravityLinearaccMagSigma

37.avgTimeBodyLinearaccJerkMagMean

38.avgTimeBodyLinearaccJerkMagSigma

39.avgTimeBodyAngvelocityMagMean

40.avgTimeBodyAngvelocityMagSigma

41.avgTimeBodyAngvelocityJerkMagMean

42.avgTimeBodyAngvelocityJerkMagSigma

43.avgFrequencyBodyLinearaccMeanX

44.avgFrequencyBodyLinearaccMeanY

45.avgFrequencyBodyLinearaccMeanZ

46.avgFrequencyBodyLinearaccSigmaX

47.avgFrequencyBodyLinearaccSigmaY

48.avgFrequencyBodyLinearaccSigmaZ

49.avgFrequencyBodyLinearaccJerkMeanX

50.avgFrequencyBodyLinearaccJerkMeanY

51.avgFrequencyBodyLinearaccJerkMeanZ

52.avgFrequencyBodyLinearaccJerkSigmaX

53.avgFrequencyBodyLinearaccJerkSigmaY

54.avgFrequencyBodyLinearaccJerkSigmaZ

55.avgFrequencyBodyAngvelocityMeanX

56.avgFrequencyBodyAngvelocityMeanY

57.avgFrequencyBodyAngvelocityMeanZ

58.avgFrequencyBodyAngvelocitySigmaX

59.avgFrequencyBodyAngvelocitySigmaY

60.avgFrequencyBodyAngvelocitySigmaZ

61.avgFrequencyBodyLinearaccMagMean

62.avgFrequencyBodyLinearaccMagSigma

63.avgFrequencyBodyLinearaccJerkMagMean

64.avgFrequencyBodyLinearaccJerkMagSigma

65.avgFrequencyBodyAngvelocityMagMean

66.avgFrequencyBodyAngvelocityMagSigma

67.avgFrequencyBodyAngvelocityJerkMagMean

68.avgFrequencyBodyAngvelocityJerkMagSigma
