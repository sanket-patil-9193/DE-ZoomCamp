import sys
import pandas as pd
import fastparquet as fp

arg_list = sys.argv

if len(arg_list) < 2 or arg_list[1]  is None:
    arg_list.append('1')

month = int(arg_list[1])

print(f"Running pipeline for month {month}...")

df = pd.DataFrame({"A":[1,2], "B":[3,4]})
df["month"] = month
print(df.head())

df.to_parquet(f"data/month_{month}.parquet")