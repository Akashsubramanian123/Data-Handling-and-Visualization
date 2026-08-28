import pandas as pd
import matplotlib.pyplot as plt

df21_interactions = pd.DataFrame({
    'Date': ['2023-01-01', '2023-01-02', '2023-01-03', '2023-01-04', '2023-01-05'],
    'Likes': [100, 120, 90, 110, 130],
    'Shares': [30, 40, 25, 35, 45],
    'Comments': [15, 20, 10, 18, 25]
})

plt.stackplot(df21_interactions['Date'], df21_interactions['Likes'], df21_interactions['Shares'], df21_interactions['Comments'], labels=['Likes', 'Shares', 'Comments'])
plt.title('Website User Interactions Distribution')
plt.xlabel('Date')
plt.ylabel('Interaction Count')
plt.legend(loc='upper left')
plt.show()