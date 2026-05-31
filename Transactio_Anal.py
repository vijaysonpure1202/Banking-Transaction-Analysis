import pandas as pd

# Load Excel dataset
df = pd.read_excel("banking_analysis_report.xlsx")

print("===== First 5 Records =====")
print(df.head())

print("\n===== Transaction Status Count =====")
print(df["status"].value_counts())

print("\n===== Total Revenue =====")
success_revenue = df[df["status"] == "SUCCESS"]["amount"].sum()
print(success_revenue)

print("\n===== Top Customers =====")
top_customers = (
    df.groupby("customer_id")["amount"]
    .sum()
    .sort_values(ascending=False)
)

print(top_customers)

print("\n===== Transaction Type Analysis =====")
print(df["transaction_type"].value_counts())