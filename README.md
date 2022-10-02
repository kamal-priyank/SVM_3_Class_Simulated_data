# SVM_3_Class_Simulated_data
 

<p align="center">
<img width="636" alt="Screenshot 2022-10-02 at 21 35 43" src="https://user-images.githubusercontent.com/66077662/193475143-fc7d5530-0b71-48dc-96be-ee0d12201f38.png">
</p>
<h5 align="center">3-Class Dataset</h5>

The data set is split into a training set of 50% and a test set of 50% and the support vector machine is trained with a linear kernel, a polynomial kernel and an RBF or a Radial kernel on the training data with all the parameters tuned by 5-fold cross validation.  

<p align="center">
<img width="523" alt="Screenshot 2022-10-02 at 21 37 13" src="https://user-images.githubusercontent.com/66077662/193475189-4cf96d56-898a-4cf4-a53d-96b5e878f035.png">
</p>
<h5 align="center">SVM With Linear Kernel</h5>

The above svm classification plot with linear kernel shows that there is highly inaccurate i.e the accuracy is found to be 42.66, which means more than half of the datapoints were incorrectly classified.  

<p align="center">
<img width="523" alt="Screenshot 2022-10-02 at 21 37 29" src="https://user-images.githubusercontent.com/66077662/193475200-b920295a-f064-44e8-a804-dd657b3297ed.png">
</p>
<h5 align="center">SVM With Polynomial Kernel</h5>

The above svm classification plot with a polynomial kernel also shows high error rate but better than the linear model.  

<p align="center">
<img width="523" alt="Screenshot 2022-10-02 at 21 37 39" src="https://user-images.githubusercontent.com/66077662/193475207-0a1080cb-b0d4-4e6a-a0c3-ca593cd11902.png">
</p>
<h5 align="center">SVM With Radial Kernel</h5>

The above svm classification plot with a Radial kernel also a high error rate with an accuracy of 46.66.  

The Radial or RBF kernel model is found to be a better fit and gives best results for the above simulated 3-class dataset. 
