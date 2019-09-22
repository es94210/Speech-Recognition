# Speech-Recognition
## Description
This project is coded in MATLAB. The system can recognize five single words: "cookies", "fish", "hamburger", "pizza", and "special". Once the word is recognized, the system will play pre-recorded responses. I recorded a few different samples for each word and normalized them, then I took the average of the data to create five templates for the words. When a user speaks a word to the microphone, the input data and the five templates will be compared five times by using the "cross-correlation" method to recognize the word.
