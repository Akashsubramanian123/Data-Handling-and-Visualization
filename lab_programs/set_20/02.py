import pandas as pd
import matplotlib.pyplot as plt

df20_py = pd.DataFrame({
    'Category': ['Cat 1', 'Cat 1', 'Cat 2', 'Cat 2', 'Cat 3'],
    'Product Name': ['Product A', 'Product B', 'Product C', 'Product D', 'Product E'],
    'Quantity Available': [250, 175, 300, 200, 220]
})

pivot_df = df20_py.pivot(index='Category', columns='Product Name', values='Quantity Available').fillna(0)
pivot_df.plot(kind='bar', stacked=True)
plt.title('Product Quantity by Category')
plt.xlabel('Category')
plt.ylabel('Quantity Available')
plt.show()