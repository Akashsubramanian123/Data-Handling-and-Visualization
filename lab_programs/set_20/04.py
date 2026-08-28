import matplotlib.pyplot as plt

prices = [20, 15, 18, 22, 25]
quantities = [250, 175, 300, 200, 220]

plt.scatter(prices, quantities, color='coral')
plt.title('Product Price vs Quantity Available')
plt.xlabel('Product Price ($)')
plt.ylabel('Quantity Available')
plt.show()

# Insights:
# Demonstrates whether lower-priced products are kept in higher stock quantities compared to premium items.