## Brief
This repo is almost copied from [SincNet](https://github.com/mravanelli/SincNet)

This project is our DSP final project 

What we did is applying the network to our proposed data set **MyTIMIT** 

And make prediction based on our trained model

## MyTIMIT
This data set consists of 32 wav files(sampling rate: 16kHz, normalized to (-1,1). 8 files per person. Language: Mandarin) in the folder MyTIMIT



Thanks to our contributors: **gdx wcy xfy zr**



(What they are saying is really funny :) )

## How Exactly did we modify the code

1. We recorded using IPhone 8P, whose default format is m4a. So we used Matlab to convert it to wav format. 
2. By the same time, we reduced sample rate to 16KHz(48KHz default) 
3. By the same time, we cut off silence fragment
4. Change dataset folder path in configure file
5. Change data_lists's content manully
6. Write label dict using a python script
7. Make prediction by removing **Optimization Step** in Training Process.
