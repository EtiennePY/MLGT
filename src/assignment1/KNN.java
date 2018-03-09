package assignment1;

import java.io.File;
import java.io.IOException;

import net.sf.javaml.classification.Classifier;
import net.sf.javaml.classification.KNearestNeighbors;
import net.sf.javaml.core.Dataset;
import net.sf.javaml.core.Instance;
import net.sf.javaml.tools.data.FileHandler;

public class KNN {
	
	
	public static void main(String[] args) throws IOException {
		Classifier knn = new KNearestNeighbors(5);
		Dataset data = FileHandler.loadDataset(new File("/home/etienne/eclipse-workspace/data/iris/iris.data"), 4, ",");
		
		knn.buildClassifier(data);
		Dataset dataForClassification = FileHandler.loadDataset(new File("/home/etienne/eclipse-workspace/data/iris/iris.data"), 4, ",");
		/* Counters for correct and wrong predictions. */
		int correct = 0, wrong = 0;
		/* Classify all instances and check with the correct class values */
		for (Instance inst : dataForClassification) {
			Object predictedClassValue = knn.classify(inst);
			Object realClassValue = inst.classValue();
			if (predictedClassValue.equals(realClassValue)) {
				correct++;
			} else {
				wrong++;
			}
		}
		System.out.println(correct);
		System.out.println(wrong);
	}
}
