import pandas as pd
import matplotlib.pyplot as plt

# File path
file_path = 'resources/Incidence_US_by_State_All_Races_Lung_&_Bronchus_(Both_Sexes)_2017_-_2021.csv'

# Reading the CSV file
df = pd.read_csv(file_path)

# Calculating the number of lung cancer cases caused by smoking directly based on the smoking percentage
df["Lung Cancer from Smoking (Count)"] = (df["Percent of Smokers by State Population"] / 100) * df["Count of population with lung cancer"]

# Plotting the graph with the correct calculation (direct lung cancer cases from smoking)
plt.figure(figsize=(18,10))  # Widen the figure size for better visualization

# Plot 1: Population by state
plt.bar(df["Incidence, US by State, All Races, Lung & Bronchus (Both Sexes), 2017 - 2021"], df["popuation"], label="Population", color="skyblue", alpha=0.6)

# Plot 2: Smokers percentage
plt.bar(df["Incidence, US by State, All Races, Lung & Bronchus (Both Sexes), 2017 - 2021"], df["Percent of Smokers by State Population"] * df["popuation"] / 100, label="Smokers", color="orange", alpha=0.6)

# Plot 3: Lung Cancer from Smoking (direct count)
plt.bar(df["Incidence, US by State, All Races, Lung & Bronchus (Both Sexes), 2017 - 2021"], df["Lung Cancer from Smoking (Count)"], label="Lung Cancer from Smoking", color="red", alpha=0.6)

# Adding labels and title
plt.xlabel("States")
plt.ylabel("Count")
plt.title("Population, Smokers, and Lung Cancer from Smoking by State (Direct Count)")
plt.xticks(rotation=90)
plt.legend()

# Show the plot
plt.tight_layout()
plt.show()
