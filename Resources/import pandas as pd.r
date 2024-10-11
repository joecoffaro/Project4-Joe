import pandas as pd
import matplotlib.pyplot as plt


# Creating a DataFrame from the provided dataset
data = {
    "State": ["Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", 
              "Delaware", "District of Columbia", "Florida", "Georgia", "Hawaii", "Idaho", "Iowa", 
              "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan", 
              "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", 
              "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", 
              "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", 
              "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", 
              "Wyoming"],
    "Lung Cancer Cases": [19458, 1912, 20068, 13491, 82010, 12034, 13384, 3990, 1497, 89159, 34363, 4045, 
                          4959, 12766, 9494, 24754, 17610, 7205, 19150, 25910, 40061, 19385, 12976, 
                          27341, 3561, 6255, 8325, 5847, 4606, 69610, 41587, 2562, 50596, 15373, 
                          13516, 52995, 4436, 20329, 3102, 30246, 67606, 3562, 2588, 27307, 22563, 
                          10335, 21987, 1462],
    "Population": [5024279, 733391, 7151502, 3011524, 39538223, 5773714, 3605944, 3271616, 989948, 
                   21538187, 10711908, 1455271, 1839106, 3190369, 2937880, 4505836, 4657757, 1362359, 
                   6177224, 7029917, 10439388, 5706494, 2961279, 6154913, 1362359, 1961504, 3104614, 
                   1377529, 2117522, 20201249, 10439388, 779094, 11799448, 4237256, 4237256, 13002700, 
                   1097379, 5118425, 886667, 6910840, 29145505, 3271616, 643077, 8631393, 7705281, 
                   1793716, 5893718, 576851],
    "Smoking Percentage": [20.2, 17.4, 14.9, 20.2, 10, 13.5, 12.1, 15.9, 12.7, 14.8, 16.3, 12.3, 15.3, 
                           19.2, 16.4, 16.2, 23.6, 21.9, 17.6, 12.7, 12, 18.7, 14.6, 20.4, 19.6, 14.7, 
                           16.6, 14.7, 15.7, 16, 12.7, 18.5, 17, 20.8, 18.9, 14.5, 17.3, 9.6, 13.3, 
                           17.5, 18.3, 19.9, 14.7, 7.9, 15.1, 14, 12.6, 23.8]
}

df = pd.DataFrame(data)

# Calculating percentage of lung cancer cases caused by smoking
df["Lung Cancer from Smoking (%)"] = (df["Smoking Percentage"] / 100) * 85  # Assuming 85% of lung cancers are smoking-related

# Plotting population, percentage of smokers, and lung cancer cases caused by smoking

plt.figure(figsize=(14,8))

# Plot 1: Population by state
plt.bar(df["State"], df["Population"], label="Population", color="skyblue", alpha=0.6)

# Plot 2: Smokers percentage
plt.bar(df["State"], df["Smoking Percentage"] * df["Population"] / 100, label="Smokers", color="orange", alpha=0.6)

# Plot 3: Lung Cancer from Smoking
plt.bar(df["State"], df["Lung Cancer from Smoking (%)"] * df["Lung Cancer Cases"] / 100, label="Lung Cancer from Smoking", color="red", alpha=0.6)

# Adding labels and title
plt.xlabel("States")
plt.ylabel("Count")
plt.title("Population, Smokers, and Lung Cancer from Smoking by State")
plt.xticks(rotation=90)
plt.legend()

# Display the plot
plt.tight_layout()
plt.show()

