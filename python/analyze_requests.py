import pandas as pd

# Load the dataset
data = pd.read_csv("../data/service_requests.csv")

# Total requests
total_requests = len(data)

# High priority requests
high_priority = data[data["Priority"] == "High"]

# Requests by status
status_counts = data["Status"].value_counts()

# Requests assigned to technicians
technician_tasks = data[data["Assigned_To"] == "Technician"]

print("Service Request Insights")
print("------------------------")
print(f"Total Requests: {total_requests}")
print(f"High Priority Requests: {len(high_priority)}")
print(f"Requests handled by Technicians: {len(technician_tasks)}")

print("\nRequests by Status:")
print(status_counts)
