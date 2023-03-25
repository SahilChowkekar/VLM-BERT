# TomBERT

## Adapting BERT for Target-Oriented Multimodal Sentiment Classification
- Dataset and codes for our IJCAI 2019 paper "Adapting BERT for Target-Oriented Multimodal Sentiment Classification"
https://www.ijcai.org/proceedings/2019/0751.pdf

Original Author - Jianfei YU (jfyu@njust.edu.cn)

Made changes by Priyanshu Sharma (pshar053@ucr.edu) and Sahil Chowkekar (schow064@ucr.edu)

## Change Logs

Mar 24, 2023

> Added comparision of different BERT-based model with BART-based approaches for Multimodal Sentiment Analysis.

## Details
- We are inspired by the pooling techniques used in TomBERT in order to concatenate the visual and textual features and used the same in BART-based method.
- We also found out that our result with pooling technique are better with BART-based approaches
as compared to BERT-based one.
- For more details you guys can view the results of all the experiments in the results folder.
- BERT - Base Model - https://wandb.ai/pshar053/Bert-Configuration?workspace=user-pshar053
- BERT - Large Model - https://wandb.ai/pshar053/Bert-Large-Configuration?workspace=user-pshar053
- We have already merged our all the code changes related our all the experiments in the master branch.
You guys can track that using the recently merged Pull Requests.
- We have also added the further detail of basic code setup. Follow the following documentation precisely in order to replicate the exact results.

> Target-oriented Multimodal Sentiment Classification (TMSC), PyTorch Implementations.

## Requirement

* PyTorch 1.0.0
* Python 3.7


## Download tweet images and set up image path
- Step 1: Download each tweet's associated image via this link (https://drive.google.com/file/d/1PpvvncnQkgDNeBMKVgG2zFYuRhbL873g/view)
- Step 2: Change the image path in line 553 and line 555 of the "run_multimodal_classifier.py" file
- Step 3: Download the pre-trained ResNet-152 via this link (https://download.pytorch.org/models/resnet152-b121ed2d.pth)
- Setp 4: Put the pre-trained ResNet-152 model under the folder named "resnet"



## Code Usage

### (Optional) Preprocessing
- This is optional, because I have provided the pre-processed data under the folder named "absa_data"

```sh
python process_absa_data.py
```

### Training for TomBERT
- This is the training code of tuning parameters on the dev set, and testing on the test set. Note that you can change "CUDA_VISIBLE_DEVICES=6" based on your available GPUs.

```sh
sh run_multimodal_classifier.sh
```

### Testing for TomBERT
- After training the model, the following code is used for directly loading the trained model and testing it on the test set

```sh
sh run_multimodal_classifier_test.sh
```


## Implemented models

### BERT and BERT+BL ([run_classifier.py](./run_classifier.py))
- You can run the following code to perform training and testing.

```sh
sh run_classifier.sh
```

### TomBERT, mBERT, Res-BERT ([run_multimodal_classifier.py](./run_multimodal_classifier.py))
- You can choose different models in the "run_multimodal_classifier.sh" file.

### BERT and TomBERT trained by me
- You can download the BERT and TomBERT models trained by me. You can find the results we report in our paper from the "eval_result" files.
https://drive.google.com/open?id=1e3rL3G1ojaDWZnrkmZX-uLudPbQo7tVe

