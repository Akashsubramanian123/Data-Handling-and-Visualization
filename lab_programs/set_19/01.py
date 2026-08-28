import matplotlib.pyplot as plt
import pandas as pd

df19 = pd.DataFrame({
    'Department': ['Sales', 'HR', 'Marketing', 'Sales', 'HR']
})

df19['Department'].value_counts().plot(kind='bar', color='teal')
plt.title('Employee Count by Department')
plt.xlabel('Department')
plt.ylabel('Number of Employees')
plt.show()