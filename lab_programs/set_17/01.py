import matplotlib.pyplot as plt

ages = [28, 35, 42, 30, 45]

plt.hist(ages, bins=5, color='skyblue', edgecolor='black')
plt.title('Distribution of Customer Ages')
plt.xlabel('Age')
plt.ylabel('Frequency')
plt.show()