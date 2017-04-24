# -*- coding: utf-8 -*-
"""
Created on Wed Apr 19 18:21:37 2017

@author: kathy
"""


from os import path

from wordcloud import WordCloud



#d = path.dirname(__file__)



# Read the whole text.

text = open('1.txt').read()



# Generate a word cloud image

wordcloud = WordCloud().generate(text)



# Display the generated image:

# the matplotlib way:

import matplotlib.pyplot as plt

plt.imshow(wordcloud, interpolation='bilinear')

plt.axis("off")



# lower max_font_size

wordcloud = WordCloud(max_font_size=40).generate(text)

plt.figure()

plt.imshow(wordcloud, interpolation="bilinear")

plt.axis("off")

plt.show()

