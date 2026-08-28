from wordcloud import WordCloud
import matplotlib.pyplot as plt

feedback = "Great product Excellent service Friendly staff Highly recommend Great experience"

wordcloud = WordCloud(width=800, height=400, background_color='white').generate(feedback)

plt.figure(figsize=(8, 4))
plt.imshow(wordcloud, interpolation='bilinear')
plt.axis('off')
plt.title('Customer Feedback Word Cloud')
plt.show()