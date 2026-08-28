import pandas as pd

df19_data = pd.DataFrame({
    'Employee ID': [1, 2, 3, 4, 5],
    'Department': ['Sales', 'HR', 'Marketing', 'Sales', 'HR'],
    'Years of Service': [5, 3, 7, 4, 2],
    'Performance Score': [85, 92, 78, 90, 76]
})

print("--- Employee Performance Data Table ---")
print(df19_data.to_string(index=False))