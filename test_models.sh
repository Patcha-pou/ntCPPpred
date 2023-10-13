#!/bin/bash

# Path setting
export CLASSPATH=$CLASSPATH:/home/Software/weka-3-9-1/weka.jar:.

# Train and test the model for CPPs dataset
echo "Training and Testing the model for CPPs dataset..."
java weka.classifiers.trees.RandomForest -I 10 -K 0 -S 1 -t selectedfiltered_acTrainCPPs.arff -T selectedfiltered_acTestCPPs.arff

echo "---------------------------------------------------------"

# Train and test the model for Toxic dataset
echo "Training and Testing the model for Toxic dataset..."
java weka.classifiers.trees.RandomForest -I 10 -K 0 -S 1 -t selectedfiltered_acTrainToxic.arff -T selectedfiltered_acTestToxic.arff
