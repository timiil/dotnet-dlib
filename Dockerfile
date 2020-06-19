FROM mcr.microsoft.com/dotnet/core/sdk:3.1
MAINTAINER timiil@163.com

RUN apt-get update -y && apt-get install -y libopenblas-dev liblapack-dev libx11-6 libgdiplus git wget bzip2

RUN mkdir -p /data && cd /data && \
  wget https://github.com/davisking/dlib-models/raw/master/dlib_face_recognition_resnet_model_v1.dat.bz2 && \
  wget https://github.com/davisking/dlib-models/raw/master/mmod_human_face_detector.dat.bz2 && \
  wget https://github.com/davisking/dlib-models/raw/master/shape_predictor_5_face_landmarks.dat.bz2 && \
  wget https://github.com/davisking/dlib-models/raw/master/shape_predictor_68_face_landmarks.dat.bz2 && \
  bunzip2 dlib_face_recognition_resnet_model_v1.dat.bz2 && \
  bunzip2 mmod_human_face_detector.dat.bz2 && \
  bunzip2 shape_predictor_5_face_landmarks.dat.bz2 && \
  bunzip2 shape_predictor_68_face_landmarks.dat.bz2 && \
  rm -rf *.bz2


