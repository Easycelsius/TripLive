import sys
import os
import time

os.environ['TF_CPP_MIN_LOG_LEVEL'] = '2'

import tensorflow as tf
import cv2
import numpy as np
from keras.models import load_model



def predict_image(model, images):
    prediction = model.predict(images)
    category = np.argmax(prediction)

    if category == 0:
        result = 'St.Pauls'
    elif category == 1:
        result = 'Marina Bay Sands'
    elif category == 2:
        result = 'Osaka Castle'
    elif category == 3:
        result = 'Statue Of Liberty'

    return result

# print(os.path.join(os.path.realpath('.'), 'src', 'main', 'resources', 'static', 'uploaded' , sys.argv[1], sys.argv[2]))

# ./webapps/ROOT/WEB-INF/classes/com/triplive/pythonconnect/CNN_model.py
# model = load_model(os.path.join(os.path.realpath('.'), 'triplive', 'src', 'main', 'java', 'com', 'triplive', 'pythonconnect' , 'trainedModelForLandMark.h5'))
model = load_model(os.path.join(os.path.realpath('.'), 'webapps', 'ROOT', 'WEB-INF', 'classes', 'com', 'triplive', 'pythonconnect' , 'trainedModelForLandMark.h5'))
# model = load_model(os.path.join(os.path.realpath('.'), 'src', 'main', 'java', 'com', 'triplive', 'pythonconnect', 'trainedModelForLandMark.h5'))

# img = cv2.imread(os.path.join(os.path.realpath('.'), 'triplive', 'src', 'main', 'resources', 'META-INF', 'resources', 'uploaded' , sys.argv[1], sys.argv[2]))
img = cv2.imread(os.path.join(os.path.realpath('.'), 'webapps', 'ROOT', 'WEB-INF', 'classes', 'static', 'uploaded' , sys.argv[1], sys.argv[2]))
# img = cv2.imread(os.path.join(os.path.realpath('.'), 'src', 'main', 'resources', 'static', 'uploaded' , sys.argv[1], sys.argv[2]))


# print(img)
# img = cv2.imread("1.jpg")
img = cv2.cvtColor(img, cv2.COLOR_BGR2RGB)
img = cv2.resize(img, dsize=(224, 224))
img = np.expand_dims(img, axis=0)
img = tf.image.convert_image_dtype(img, tf.float32)
result = predict_image(model, img)

print(result)
