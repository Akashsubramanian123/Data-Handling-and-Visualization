import matplotlib.pyplot as plt

ad_budget = [1000, 1500, 2200, 1800, 2500]
sales = [15000, 18000, 22000, 20000, 23000]

plt.scatter(ad_budget, sales, color='blue')
plt.title('Advertising Budget vs Monthly Sales')
plt.xlabel('Advertising Budget ($)')
plt.ylabel('Monthly Sales ($)')
plt.grid(True)
plt.show()

# Insights:
# Higher advertising spend shows a direct positive relationship with higher monthly sales volume.