#!/bin/bash

########################Path setting########################

export CLASSPATH=$CLASSPATH:YOUR PATH HERE

echo $CLASSPATH

#########################Normal Train#########################
java weka.classifiers.trees.RandomForest -I 10 -K 0 -S 1 -t ac-fselec.arff

#########################Weka calling#########################
java -jar weka.jar -xms4G -xmx6G


#######################Train and Test#######################
java weka.classifiers.trees.RandomForest -I 10 -K 0 -S 1 -t filtered_1TrainTry1.arff -T filtered_1TestTry1.arff


######################Attribute selection######################
java weka.attributeSelection.CfsSubsetEval \
    -M \
    -s "weka.attributeSelection.BestFirst -D 1 -N 5" \
    -i filtered_1TrainTry1.arff

################Attribute selection & Training################
java weka.classifiers.meta.AttributeSelectedClassifier \
   -t ~/Desktop/TestScript==Silly/3.3_input/Training/*.arff \
   -E "weka.attributeSelection.CfsSubsetEval -M" \
   -S "weka.attributeSelection.BestFirst -D 1 -N 5" \
   -W weka.classifiers.trees.RandomForest 

################################Attribute selection IN BASH################################
java weka.attributeSelection.CfsSubsetEval -M -s "weka.attributeSelection.BestFirst -D 1 -N 5" -i filtered_1TrainTry1.arff>attribute_1TrainTry1.arff

java weka.attributeSelection.CfsSubsetEval -M -s "weka.attributeSelection.BestFirst -D 1 -N 5" -i filtered_2TrainTry1.arff>attribute_2TrainTry1.txt

java weka.attributeSelection.CfsSubsetEval -M -s "weka.attributeSelection.BestFirst -D 1 -N 5" -i filtered_3TrainTry1.arff>attribute_3TrainTry1.txt

###################################Attribute remove IN BASH###################################
java weka.filters.unsupervised.attribute.Remove -V -R 28,83,146,250,306,327,452,491,492,497 -i remove_filtered_1TrainG1.arff>selected_remove_filtered_1TrainG1.arff


java weka.classifiers.functions.Logistic -R 1.0E-8 -M -1 -t selectedfiltered_9TrainG2.arff -T selectedfiltered_9TestG2.arff

java weka.classifiers.trees.RandomForest -I 10 -K 0 -S 1 -t selectedfiltered_1TrainG1.arff -T selectedfiltered_1TestG1.arff

java weka.classifiers.functions.MultilayerPerceptron -L 0.3 -M 0.2 -N 500 -V 0 -S 0 -E 20 -H a -t selectedfiltered_1TrainG1.arff -T selectedfiltered_1TestG1.arff

java weka.classifiers.trees.RandomForest -I 10 -K 0 -S 1 -t selectedfiltered_1TrainG1.arff -T selectedfiltered_1TestG1.arff > 1Result1.arff



@relation 'Hypercholes_for_db-weka.filters.supervised.instance.SpreadSubsample-M1.0-X0.0-S1-weka.filters.supervised.instance.Resample-B0.0-S1-Z80.0-no-replacement
-weka.filters.unsupervised.attribute.Remove-R1-3
-weka.filters.unsupervised.attribute.Remove-V-R24,26,70-71,86,88,146,153,156,199,201,207,262-263,317,319,336,350,361,374,386-387,390,398,401,403,435,445,448,460,466,481-483,510,517,1'

