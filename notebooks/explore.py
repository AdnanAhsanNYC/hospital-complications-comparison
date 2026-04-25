import pandas as pd

df = pd.read_csv("data/raw/complications_deaths.csv")

print("Shape:", df.shape)
print("\nColumns:")
print(df.columns.tolist())
print("\nFirst 3 rows:")
print(df.head(3))
print("\nNull counts:")
print(df.isnull().sum())
