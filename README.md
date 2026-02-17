# ⚡ WattWatch – Smart City Energy Analysis

## 📌 Project Overview

WattWatch is a Smart City Energy Analytics project designed to analyze electricity consumption patterns, grid reliability, and cost estimation using SQL and Power BI.

The project combines SQL-based data exploration with interactive dashboard visualization to generate actionable insights for city energy management.

---

## 📂 Dataset

**File:** SmartCityEnergy.csv

| Column Name | Description |
|-------------|-------------|
| MeterID | Unique identifier for each smart meter |
| Zone | City zone (North, South, Central, etc.) |
| ConsumerType | Residential / Commercial / Industrial |
| Date | Reading date |
| EnergyConsumed_kWh | Total kilowatt-hours consumed |
| PeakUsage_kWh | Maximum kWh drawn in a single hour |
| OutageMinutes | Power outage duration (minutes) |
| MeterStatus | Active / Faulty |
| TariffRate | Price per kWh |

---

# 🔧 PART 1 – SQL Analysis

The following analyses were performed:

### 🔌 1. Total & Average Daily Consumption by Zone
- Aggregated daily energy usage per zone.
- Calculated average daily consumption.

### ⚡ 2. Top 5 Highest Energy-Consuming Consumers
- Identified highest consumers grouped by ConsumerType.

### 📈 3. Monthly Consumption Trend
- Aggregated kWh usage by month and zone.

### 🧾 4. Average Cost per Zone
- Calculated estimated cost using:
  EnergyConsumed_kWh × TariffRate

### 📉 5. Meters with Highest Faults / Outages
- Ranked meters based on outage duration and faulty status.

### ♻️ 6. Energy Efficiency Analysis
- Identified zones with high consumption and frequent outages.

### 🗓️ 7. Weekday vs Weekend Peak Pattern
- Compared peak usage patterns using DAYOFWEEK logic.

All results exported to CSV for dashboard integration.

---

# 📊 PART 2 – Power BI Dashboard

## Dashboard Components

### 📍 Geo Heatmap
- Energy consumption by Zone.

### 📈 Line Chart
- Monthly kWh consumption trend.

### 📊 Bar Chart
- Energy usage by ConsumerType.

### 📌 KPI Cards
- Total Consumption
- Average Peak Usage
- Total Outage Minutes
- Total Estimated Cost

### 🎛️ Interactive Slicers
- Zone
- ConsumerType
- Date Range

---

# 📊 Key Business Insights

- Industrial sector drives maximum energy demand.
- High consumption zones show elevated peak load risk.
- Outage-heavy zones indicate grid reliability concerns.
- Seasonal trends impact energy demand patterns.
- Revenue concentration varies by tariff structure.

---

# 🛠 Tools Used

- MySQL
- Power BI
- Excel (Data Export)
- DAX Measures
- Data Aggregation & Time Intelligence

---

# 📁 Project Files

| File | Description |
|------|------------|
| SmartCity_SQL.sql | SQL queries and analysis |
| WattWatchDashboard.pbix | Interactive Power BI dashboard |
| EnergyFindings.txt | Key business insights |
| SmartCityEnergy.csv | Dataset |

---

# 🎯 Project Outcome

This project demonstrates:

✔ SQL analytical querying  
✔ Data aggregation & grouping  
✔ Business KPI development  
✔ Interactive dashboard design  
✔ Energy performance evaluation  

---

# 🚀 Author

Yakshraj Gohil  
Aspiring Data Analyst | SQL | Power BI | Business Intelligence
