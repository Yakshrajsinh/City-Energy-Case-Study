
DROP TABLE IF EXISTS SmartCityEnergy;
create database City;
use City;
CREATE TABLE SmartCityEnergy (
    MeterID             VARCHAR(10)    NOT NULL,
    Zone                VARCHAR(10)    NOT NULL,
    ConsumerType        VARCHAR(15)    NOT NULL,
    Date                DATE           NOT NULL,
    EnergyConsumed_kWh  DECIMAL(10,2)  NOT NULL,
    PeakUsage_kWh       DECIMAL(10,2)  NOT NULL,
    OutageMinutes       INT            NOT NULL DEFAULT 0,
    MeterStatus         VARCHAR(10)    NOT NULL,
    TariffRate          DECIMAL(5,2)   NOT NULL
);

-- Indexes for common query patterns
CREATE INDEX idx_zone         ON SmartCityEnergy(Zone);
CREATE INDEX idx_consumer     ON SmartCityEnergy(ConsumerType);
CREATE INDEX idx_date         ON SmartCityEnergy(Date);
CREATE INDEX idx_meterid      ON SmartCityEnergy(MeterID);
CREATE INDEX idx_status       ON SmartCityEnergy(MeterStatus);

-- ============================================================
-- INSERT DATA (300 rows)
-- ============================================================

INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1025', 'Central', 'Residential', '2024-01-02', 472.25, 115.06, 0, 'Active', 5.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1041', 'East', 'Commercial', '2024-01-03', 518.46, 126.8, 48, 'Active', 6.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1008', 'North', 'Commercial', '2024-01-04', 478.78, 164.39, 146, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1015', 'South', 'Residential', '2024-01-04', 182.84, 60.61, 0, 'Active', 5.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1057', 'West', 'Industrial', '2024-01-04', 1116.18, 330.98, 0, 'Active', 7.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1039', 'East', 'Residential', '2024-01-05', 172.63, 54.05, 0, 'Faulty', 5.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1036', 'Central', 'Industrial', '2024-01-06', 2366.83, 491.1, 0, 'Active', 7.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1020', 'South', 'Commercial', '2024-01-08', 798.37, 215.86, 23, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1036', 'Central', 'Industrial', '2024-01-08', 2170.94, 569.59, 0, 'Active', 7.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1002', 'North', 'Residential', '2024-01-14', 216.32, 64.85, 0, 'Active', 4.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1032', 'Central', 'Commercial', '2024-01-14', 634.82, 201.46, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1034', 'Central', 'Industrial', '2024-01-14', 2239.27, 545.77, 0, 'Active', 8.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1038', 'East', 'Residential', '2024-01-14', 144.18, 39.67, 0, 'Active', 5.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1052', 'West', 'Residential', '2024-01-14', 158.07, 64.94, 0, 'Active', 5.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1015', 'South', 'Residential', '2024-01-15', 231.14, 47.1, 0, 'Active', 5.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1020', 'South', 'Commercial', '2024-01-16', 920.85, 265.06, 49, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1037', 'East', 'Residential', '2024-01-17', 165.57, 56.79, 0, 'Active', 4.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1010', 'North', 'Industrial', '2024-01-19', 804.26, 379.36, 0, 'Active', 7.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1003', 'North', 'Residential', '2024-01-20', 158.09, 47.15, 147, 'Active', 4.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1017', 'South', 'Commercial', '2024-01-20', 365.23, 138.64, 33, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1037', 'East', 'Residential', '2024-01-22', 136.56, 38.62, 0, 'Active', 4.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1017', 'South', 'Commercial', '2024-01-26', 571.3, 182.0, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1002', 'North', 'Residential', '2024-01-27', 138.0, 49.83, 30, 'Active', 4.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1035', 'Central', 'Industrial', '2024-01-27', 2855.86, 753.92, 0, 'Active', 8.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1042', 'East', 'Commercial', '2024-01-27', 218.79, 61.62, 0, 'Faulty', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1039', 'East', 'Residential', '2024-01-29', 98.36, 24.82, 45, 'Active', 5.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1038', 'East', 'Residential', '2024-02-01', 176.9, 53.86, 0, 'Active', 5.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1014', 'South', 'Residential', '2024-02-02', 249.9, 64.83, 0, 'Active', 4.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1034', 'Central', 'Industrial', '2024-02-02', 2298.17, 807.63, 0, 'Active', 8.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1017', 'South', 'Commercial', '2024-02-05', 935.24, 344.03, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1022', 'South', 'Industrial', '2024-02-06', 1615.56, 495.71, 0, 'Active', 8.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1049', 'West', 'Residential', '2024-02-06', 152.84, 56.59, 0, 'Active', 5.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1002', 'North', 'Residential', '2024-02-07', 178.48, 70.08, 0, 'Active', 4.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1009', 'North', 'Industrial', '2024-02-07', 1068.15, 486.74, 0, 'Faulty', 8.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1027', 'Central', 'Residential', '2024-02-07', 319.52, 92.05, 0, 'Active', 5.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1049', 'West', 'Residential', '2024-02-07', 144.54, 47.56, 0, 'Faulty', 5.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1028', 'Central', 'Residential', '2024-02-10', 330.8, 138.55, 0, 'Active', 5.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1016', 'South', 'Residential', '2024-02-14', 223.39, 64.38, 0, 'Active', 5.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1057', 'West', 'Industrial', '2024-02-14', 923.09, 309.75, 0, 'Active', 7.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1049', 'West', 'Residential', '2024-02-15', 250.63, 59.08, 0, 'Active', 5.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1015', 'South', 'Residential', '2024-02-16', 253.62, 51.64, 0, 'Active', 5.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1040', 'East', 'Residential', '2024-02-16', 172.06, 57.47, 0, 'Faulty', 5.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1014', 'South', 'Residential', '2024-02-17', 267.0, 58.87, 0, 'Active', 4.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1025', 'Central', 'Residential', '2024-02-20', 236.46, 83.89, 0, 'Active', 5.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1011', 'North', 'Industrial', '2024-02-21', 1128.02, 394.43, 0, 'Active', 8.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1055', 'West', 'Commercial', '2024-02-21', 589.6, 217.88, 0, 'Active', 6.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1016', 'South', 'Residential', '2024-02-22', 237.97, 74.81, 0, 'Active', 5.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1028', 'Central', 'Residential', '2024-02-24', 283.05, 90.95, 0, 'Active', 5.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1011', 'North', 'Industrial', '2024-02-25', 1011.86, 191.54, 0, 'Active', 8.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1046', 'East', 'Industrial', '2024-02-25', 890.1, 207.55, 0, 'Active', 7.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1048', 'East', 'Industrial', '2024-02-25', 915.93, 364.84, 30, 'Active', 7.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1044', 'East', 'Commercial', '2024-02-26', 540.12, 205.29, 0, 'Active', 6.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1021', 'South', 'Industrial', '2024-02-28', 1673.84, 489.28, 0, 'Active', 7.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1039', 'East', 'Residential', '2024-02-28', 185.0, 40.57, 0, 'Active', 5.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1057', 'West', 'Industrial', '2024-02-28', 1612.98, 609.36, 0, 'Active', 7.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1002', 'North', 'Residential', '2024-03-01', 204.44, 44.35, 0, 'Active', 4.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1028', 'Central', 'Residential', '2024-03-01', 253.81, 51.58, 0, 'Active', 5.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1005', 'North', 'Commercial', '2024-03-03', 362.25, 134.88, 0, 'Active', 6.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1035', 'Central', 'Industrial', '2024-03-04', 2021.82, 811.72, 0, 'Active', 8.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1039', 'East', 'Residential', '2024-03-05', 169.26, 61.05, 13, 'Active', 5.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1030', 'Central', 'Commercial', '2024-03-08', 970.57, 268.87, 0, 'Active', 7.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1044', 'East', 'Commercial', '2024-03-08', 257.85, 110.77, 92, 'Faulty', 6.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1026', 'Central', 'Residential', '2024-03-11', 381.2, 151.27, 0, 'Active', 4.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1039', 'East', 'Residential', '2024-03-11', 195.71, 37.68, 0, 'Active', 5.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1050', 'West', 'Residential', '2024-03-11', 143.85, 44.89, 0, 'Active', 5.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1060', 'West', 'Industrial', '2024-03-13', 1591.56, 753.18, 145, 'Active', 8.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1023', 'South', 'Industrial', '2024-03-15', 1353.83, 418.38, 0, 'Active', 8.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1043', 'East', 'Commercial', '2024-03-15', 542.35, 200.48, 0, 'Faulty', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1037', 'East', 'Residential', '2024-03-16', 190.99, 38.58, 0, 'Active', 4.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1057', 'West', 'Industrial', '2024-03-17', 1398.13, 531.71, 0, 'Active', 7.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1027', 'Central', 'Residential', '2024-03-19', 332.05, 118.25, 0, 'Active', 5.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1012', 'North', 'Industrial', '2024-03-20', 762.61, 326.07, 0, 'Active', 8.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1032', 'Central', 'Commercial', '2024-03-21', 612.31, 221.58, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1035', 'Central', 'Industrial', '2024-03-21', 1439.01, 671.81, 0, 'Active', 8.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1007', 'North', 'Commercial', '2024-03-22', 565.22, 200.04, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1020', 'South', 'Commercial', '2024-03-22', 644.95, 232.57, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1022', 'South', 'Industrial', '2024-03-22', 1965.77, 912.31, 0, 'Active', 8.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1015', 'South', 'Residential', '2024-03-25', 332.9, 133.39, 0, 'Active', 5.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1018', 'South', 'Commercial', '2024-03-25', 573.78, 257.85, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1029', 'Central', 'Commercial', '2024-03-25', 744.97, 326.24, 0, 'Active', 7.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1031', 'Central', 'Commercial', '2024-03-25', 1052.74, 263.7, 0, 'Active', 6.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1060', 'West', 'Industrial', '2024-03-27', 1510.26, 465.32, 0, 'Active', 8.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1011', 'North', 'Industrial', '2024-03-30', 1344.89, 406.29, 61, 'Active', 8.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1048', 'East', 'Industrial', '2024-03-30', 1000.47, 252.35, 0, 'Faulty', 7.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1059', 'West', 'Industrial', '2024-03-30', 1271.71, 484.55, 0, 'Faulty', 7.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1054', 'West', 'Commercial', '2024-04-02', 799.49, 275.51, 0, 'Active', 7.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1027', 'Central', 'Residential', '2024-04-05', 390.41, 78.3, 0, 'Active', 5.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1032', 'Central', 'Commercial', '2024-04-07', 492.46, 173.75, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1017', 'South', 'Commercial', '2024-04-11', 527.36, 145.91, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1048', 'East', 'Industrial', '2024-04-11', 871.97, 323.23, 0, 'Active', 7.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1019', 'South', 'Commercial', '2024-04-12', 800.87, 268.9, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1028', 'Central', 'Residential', '2024-04-12', 254.7, 78.82, 0, 'Active', 5.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1045', 'East', 'Industrial', '2024-04-16', 1007.22, 305.71, 71, 'Active', 7.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1023', 'South', 'Industrial', '2024-04-17', 1798.1, 734.41, 0, 'Active', 8.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1007', 'North', 'Commercial', '2024-04-18', 534.26, 178.95, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1024', 'South', 'Industrial', '2024-04-20', 1696.51, 325.18, 0, 'Active', 7.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1025', 'Central', 'Residential', '2024-04-22', 383.34, 126.12, 0, 'Active', 5.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1022', 'South', 'Industrial', '2024-04-23', 1403.69, 393.53, 0, 'Active', 8.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1043', 'East', 'Commercial', '2024-04-25', 480.39, 159.15, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1035', 'Central', 'Industrial', '2024-04-26', 2429.74, 923.41, 0, 'Active', 8.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1002', 'North', 'Residential', '2024-04-29', 233.98, 63.46, 0, 'Active', 4.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1008', 'North', 'Commercial', '2024-04-29', 604.66, 204.73, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1056', 'West', 'Commercial', '2024-04-29', 512.75, 141.22, 0, 'Faulty', 7.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1038', 'East', 'Residential', '2024-04-30', 193.74, 39.49, 0, 'Active', 5.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1049', 'West', 'Residential', '2024-04-30', 254.01, 59.42, 16, 'Faulty', 5.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1056', 'West', 'Commercial', '2024-04-30', 545.02, 253.97, 0, 'Active', 7.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1047', 'East', 'Industrial', '2024-05-01', 1168.61, 554.26, 0, 'Active', 8.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1049', 'West', 'Residential', '2024-05-01', 170.44, 50.54, 0, 'Active', 5.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1026', 'Central', 'Residential', '2024-05-04', 258.63, 89.23, 0, 'Active', 4.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1041', 'East', 'Commercial', '2024-05-04', 423.33, 156.16, 151, 'Active', 6.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1045', 'East', 'Industrial', '2024-05-04', 653.78, 238.89, 0, 'Active', 7.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1010', 'North', 'Industrial', '2024-05-05', 1132.24, 357.59, 0, 'Active', 7.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1006', 'North', 'Commercial', '2024-05-08', 373.1, 175.18, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1021', 'South', 'Industrial', '2024-05-08', 1548.5, 483.92, 0, 'Active', 7.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1024', 'South', 'Industrial', '2024-05-09', 1888.36, 615.04, 71, 'Active', 7.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1019', 'South', 'Commercial', '2024-05-10', 672.4, 268.99, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1044', 'East', 'Commercial', '2024-05-11', 368.24, 85.19, 0, 'Active', 6.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1013', 'South', 'Residential', '2024-05-14', 358.52, 130.1, 0, 'Active', 5.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1043', 'East', 'Commercial', '2024-05-14', 300.76, 104.08, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1040', 'East', 'Residential', '2024-05-15', 110.49, 22.73, 0, 'Active', 5.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1050', 'West', 'Residential', '2024-05-15', 243.66, 55.1, 0, 'Active', 5.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1053', 'West', 'Commercial', '2024-05-15', 388.21, 148.75, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1005', 'North', 'Commercial', '2024-05-16', 592.21, 182.33, 0, 'Active', 6.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1021', 'South', 'Industrial', '2024-05-16', 1540.03, 421.68, 108, 'Active', 7.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1053', 'West', 'Commercial', '2024-05-17', 619.01, 261.93, 142, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1014', 'South', 'Residential', '2024-05-19', 253.99, 47.49, 0, 'Active', 4.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1045', 'East', 'Industrial', '2024-05-19', 677.66, 222.11, 0, 'Active', 7.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1009', 'North', 'Industrial', '2024-05-20', 1207.7, 459.51, 0, 'Active', 8.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1042', 'East', 'Commercial', '2024-05-20', 337.68, 127.52, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1018', 'South', 'Commercial', '2024-05-22', 820.67, 360.82, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1022', 'South', 'Industrial', '2024-05-22', 2025.29, 956.05, 0, 'Active', 8.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1034', 'Central', 'Industrial', '2024-05-24', 2516.53, 907.71, 0, 'Active', 8.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1008', 'North', 'Commercial', '2024-05-25', 422.96, 136.34, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1032', 'Central', 'Commercial', '2024-05-25', 837.28, 308.21, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1003', 'North', 'Residential', '2024-05-26', 240.85, 70.66, 0, 'Active', 4.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1052', 'West', 'Residential', '2024-05-26', 201.9, 74.18, 0, 'Active', 5.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1020', 'South', 'Commercial', '2024-05-27', 796.78, 323.22, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1056', 'West', 'Commercial', '2024-05-27', 656.05, 220.5, 0, 'Faulty', 7.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1050', 'West', 'Residential', '2024-05-30', 217.86, 70.87, 189, 'Active', 5.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1008', 'North', 'Commercial', '2024-05-31', 433.21, 126.93, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1021', 'South', 'Industrial', '2024-05-31', 1372.6, 527.94, 0, 'Active', 7.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1055', 'West', 'Commercial', '2024-05-31', 615.38, 259.54, 173, 'Active', 6.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1018', 'South', 'Commercial', '2024-06-01', 522.09, 180.26, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1016', 'South', 'Residential', '2024-06-02', 345.17, 65.94, 0, 'Active', 5.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1016', 'South', 'Residential', '2024-06-04', 324.28, 104.4, 0, 'Active', 5.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1042', 'East', 'Commercial', '2024-06-04', 278.42, 83.41, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1054', 'West', 'Commercial', '2024-06-06', 474.53, 141.32, 0, 'Faulty', 7.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1045', 'East', 'Industrial', '2024-06-07', 1207.04, 391.38, 46, 'Active', 7.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1035', 'Central', 'Industrial', '2024-06-09', 1691.19, 465.06, 0, 'Active', 8.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1006', 'North', 'Commercial', '2024-06-10', 445.01, 113.87, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1005', 'North', 'Commercial', '2024-06-12', 538.61, 220.99, 0, 'Active', 6.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1022', 'South', 'Industrial', '2024-06-12', 2058.84, 533.94, 0, 'Active', 8.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1031', 'Central', 'Commercial', '2024-06-12', 682.34, 325.99, 0, 'Active', 6.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1011', 'North', 'Industrial', '2024-06-14', 1459.14, 429.15, 0, 'Active', 8.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1015', 'South', 'Residential', '2024-06-14', 337.53, 111.56, 0, 'Active', 5.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1017', 'South', 'Commercial', '2024-06-14', 498.17, 211.93, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1009', 'North', 'Industrial', '2024-06-15', 841.22, 342.74, 0, 'Active', 8.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1057', 'West', 'Industrial', '2024-06-16', 1256.38, 315.3, 117, 'Active', 7.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1006', 'North', 'Commercial', '2024-06-17', 603.37, 269.25, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1026', 'Central', 'Residential', '2024-06-17', 428.36, 146.0, 0, 'Active', 4.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1008', 'North', 'Commercial', '2024-06-18', 361.24, 126.48, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1056', 'West', 'Commercial', '2024-06-18', 639.13, 255.15, 86, 'Active', 7.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1009', 'North', 'Industrial', '2024-06-19', 1353.21, 493.43, 141, 'Active', 8.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1024', 'South', 'Industrial', '2024-06-19', 1109.36, 442.93, 0, 'Active', 7.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1048', 'East', 'Industrial', '2024-06-19', 1113.11, 377.13, 0, 'Active', 7.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1015', 'South', 'Residential', '2024-06-21', 333.29, 105.08, 0, 'Faulty', 5.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1030', 'Central', 'Commercial', '2024-06-21', 593.63, 263.71, 0, 'Active', 7.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1030', 'Central', 'Commercial', '2024-06-22', 864.09, 252.66, 0, 'Active', 7.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1050', 'West', 'Residential', '2024-06-22', 255.02, 49.11, 0, 'Active', 5.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1001', 'North', 'Residential', '2024-06-23', 138.25, 35.23, 0, 'Active', 5.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1012', 'North', 'Industrial', '2024-06-23', 792.36, 225.3, 0, 'Active', 8.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1014', 'South', 'Residential', '2024-06-23', 353.8, 104.97, 0, 'Active', 4.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1019', 'South', 'Commercial', '2024-06-23', 582.64, 148.58, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1031', 'Central', 'Commercial', '2024-06-23', 592.81, 191.52, 0, 'Active', 6.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1007', 'North', 'Commercial', '2024-06-24', 649.02, 168.9, 0, 'Faulty', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1041', 'East', 'Commercial', '2024-06-24', 313.05, 122.78, 0, 'Active', 6.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1012', 'North', 'Industrial', '2024-06-27', 986.39, 463.58, 0, 'Active', 8.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1050', 'West', 'Residential', '2024-06-28', 193.36, 71.71, 0, 'Faulty', 5.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1003', 'North', 'Residential', '2024-06-29', 200.0, 56.88, 0, 'Active', 4.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1035', 'Central', 'Industrial', '2024-06-29', 2401.37, 588.38, 0, 'Active', 8.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1007', 'North', 'Commercial', '2024-06-30', 257.01, 99.42, 14, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1039', 'East', 'Residential', '2024-07-02', 104.31, 25.68, 0, 'Active', 5.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1041', 'East', 'Commercial', '2024-07-04', 422.38, 172.79, 68, 'Active', 6.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1020', 'South', 'Commercial', '2024-07-05', 895.18, 385.88, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1029', 'Central', 'Commercial', '2024-07-06', 838.61, 191.01, 0, 'Active', 7.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1033', 'Central', 'Industrial', '2024-07-09', 1491.77, 441.74, 153, 'Active', 8.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1039', 'East', 'Residential', '2024-07-11', 132.8, 29.42, 0, 'Active', 5.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1007', 'North', 'Commercial', '2024-07-12', 464.03, 147.2, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1012', 'North', 'Industrial', '2024-07-13', 1088.35, 442.15, 0, 'Active', 8.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1036', 'Central', 'Industrial', '2024-07-13', 1552.1, 532.95, 189, 'Active', 7.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1009', 'North', 'Industrial', '2024-07-14', 1014.72, 344.28, 0, 'Active', 8.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1056', 'West', 'Commercial', '2024-07-14', 497.37, 118.27, 0, 'Active', 7.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1036', 'Central', 'Industrial', '2024-07-16', 1760.74, 728.41, 0, 'Active', 7.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1011', 'North', 'Industrial', '2024-07-18', 1434.92, 545.53, 0, 'Active', 8.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1025', 'Central', 'Residential', '2024-07-19', 253.88, 88.89, 0, 'Active', 5.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1023', 'South', 'Industrial', '2024-07-21', 1335.14, 421.67, 0, 'Active', 8.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1044', 'East', 'Commercial', '2024-07-22', 536.43, 232.33, 0, 'Active', 6.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1020', 'South', 'Commercial', '2024-07-23', 505.7, 166.34, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1030', 'Central', 'Commercial', '2024-07-23', 850.4, 223.5, 0, 'Active', 7.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1005', 'North', 'Commercial', '2024-07-24', 476.8, 180.46, 0, 'Active', 6.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1024', 'South', 'Industrial', '2024-07-25', 1442.15, 484.76, 0, 'Active', 7.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1043', 'East', 'Commercial', '2024-07-26', 359.77, 155.52, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1032', 'Central', 'Commercial', '2024-07-27', 933.81, 230.78, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1001', 'North', 'Residential', '2024-07-28', 177.82, 57.35, 0, 'Active', 5.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1009', 'North', 'Industrial', '2024-07-28', 1368.9, 270.63, 0, 'Active', 8.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1055', 'West', 'Commercial', '2024-07-28', 401.54, 136.86, 0, 'Active', 6.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1003', 'North', 'Residential', '2024-07-31', 229.69, 95.38, 0, 'Active', 4.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1006', 'North', 'Commercial', '2024-08-02', 534.94, 200.95, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1013', 'South', 'Residential', '2024-08-02', 273.95, 97.61, 0, 'Active', 5.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1021', 'South', 'Industrial', '2024-08-02', 1191.17, 483.28, 0, 'Active', 7.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1009', 'North', 'Industrial', '2024-08-03', 1128.13, 404.95, 0, 'Active', 8.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1055', 'West', 'Commercial', '2024-08-03', 565.17, 116.05, 0, 'Active', 6.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1044', 'East', 'Commercial', '2024-08-04', 333.8, 90.91, 0, 'Active', 6.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1055', 'West', 'Commercial', '2024-08-04', 580.48, 204.94, 0, 'Active', 6.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1004', 'North', 'Residential', '2024-08-05', 146.54, 54.66, 0, 'Active', 5.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1044', 'East', 'Commercial', '2024-08-07', 342.82, 133.37, 0, 'Active', 6.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1043', 'East', 'Commercial', '2024-08-08', 357.13, 120.95, 0, 'Faulty', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1009', 'North', 'Industrial', '2024-08-09', 1109.32, 497.39, 0, 'Active', 8.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1024', 'South', 'Industrial', '2024-08-11', 2054.7, 736.39, 0, 'Active', 7.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1011', 'North', 'Industrial', '2024-08-12', 1377.33, 563.12, 0, 'Active', 8.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1021', 'South', 'Industrial', '2024-08-12', 1627.16, 628.66, 0, 'Active', 7.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1039', 'East', 'Residential', '2024-08-12', 101.41, 19.89, 0, 'Active', 5.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1050', 'West', 'Residential', '2024-08-12', 163.52, 56.46, 0, 'Active', 5.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1040', 'East', 'Residential', '2024-08-13', 135.83, 55.92, 0, 'Active', 5.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1006', 'North', 'Commercial', '2024-08-14', 519.24, 214.25, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1059', 'West', 'Industrial', '2024-08-14', 1610.39, 465.17, 0, 'Active', 7.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1017', 'South', 'Commercial', '2024-08-16', 548.19, 212.07, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1035', 'Central', 'Industrial', '2024-08-17', 1540.48, 345.12, 0, 'Active', 8.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1020', 'South', 'Commercial', '2024-08-19', 500.75, 147.18, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1047', 'East', 'Industrial', '2024-08-20', 633.05, 187.4, 0, 'Active', 8.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1043', 'East', 'Commercial', '2024-08-22', 271.87, 119.84, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1050', 'West', 'Residential', '2024-08-22', 149.1, 34.05, 0, 'Active', 5.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1018', 'South', 'Commercial', '2024-08-24', 572.23, 234.05, 0, 'Faulty', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1049', 'West', 'Residential', '2024-08-25', 304.84, 89.88, 44, 'Faulty', 5.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1033', 'Central', 'Industrial', '2024-08-27', 2089.1, 656.08, 110, 'Active', 8.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1025', 'Central', 'Residential', '2024-08-28', 293.87, 53.47, 0, 'Active', 5.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1033', 'Central', 'Industrial', '2024-08-28', 2709.08, 776.32, 0, 'Active', 8.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1010', 'North', 'Industrial', '2024-08-30', 756.38, 332.52, 34, 'Active', 7.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1048', 'East', 'Industrial', '2024-08-31', 907.28, 206.74, 0, 'Active', 7.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1003', 'North', 'Residential', '2024-09-05', 198.96, 55.59, 0, 'Active', 4.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1060', 'West', 'Industrial', '2024-09-05', 978.21, 463.24, 0, 'Active', 8.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1014', 'South', 'Residential', '2024-09-06', 339.11, 63.96, 171, 'Active', 4.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1006', 'North', 'Commercial', '2024-09-07', 474.17, 136.17, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1033', 'Central', 'Industrial', '2024-09-08', 2011.71, 370.43, 0, 'Active', 8.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1014', 'South', 'Residential', '2024-09-09', 259.47, 81.81, 0, 'Active', 4.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1051', 'West', 'Residential', '2024-09-09', 215.23, 69.63, 0, 'Active', 5.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1051', 'West', 'Residential', '2024-09-10', 173.74, 62.5, 0, 'Active', 5.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1039', 'East', 'Residential', '2024-09-11', 191.19, 75.85, 0, 'Active', 5.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1054', 'West', 'Commercial', '2024-09-11', 668.7, 219.44, 0, 'Active', 7.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1014', 'South', 'Residential', '2024-09-16', 287.75, 62.35, 0, 'Active', 4.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1037', 'East', 'Residential', '2024-09-16', 127.34, 51.44, 0, 'Active', 4.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1037', 'East', 'Residential', '2024-09-16', 121.43, 41.0, 37, 'Active', 4.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1046', 'East', 'Industrial', '2024-09-16', 1115.83, 403.74, 130, 'Faulty', 7.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1009', 'North', 'Industrial', '2024-09-17', 1101.75, 464.26, 0, 'Active', 8.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1054', 'West', 'Commercial', '2024-09-17', 600.17, 246.13, 0, 'Active', 7.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1059', 'West', 'Industrial', '2024-09-17', 1596.83, 435.55, 116, 'Active', 7.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1054', 'West', 'Commercial', '2024-09-18', 421.41, 192.11, 21, 'Active', 7.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1020', 'South', 'Commercial', '2024-09-20', 641.3, 279.41, 0, 'Faulty', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1056', 'West', 'Commercial', '2024-09-20', 512.48, 172.3, 45, 'Active', 7.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1010', 'North', 'Industrial', '2024-09-21', 981.06, 383.31, 0, 'Active', 7.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1036', 'Central', 'Industrial', '2024-09-21', 2628.28, 652.9, 0, 'Active', 7.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1008', 'North', 'Commercial', '2024-09-23', 474.29, 141.06, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1047', 'East', 'Industrial', '2024-09-23', 788.6, 311.03, 132, 'Active', 8.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1038', 'East', 'Residential', '2024-09-25', 164.64, 68.38, 0, 'Active', 5.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1053', 'West', 'Commercial', '2024-09-25', 583.69, 271.56, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1027', 'Central', 'Residential', '2024-09-26', 244.83, 83.46, 0, 'Faulty', 5.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1042', 'East', 'Commercial', '2024-09-27', 377.3, 160.84, 41, 'Faulty', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1015', 'South', 'Residential', '2024-09-28', 348.11, 112.7, 0, 'Active', 5.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1046', 'East', 'Industrial', '2024-09-28', 737.33, 173.92, 94, 'Active', 7.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1004', 'North', 'Residential', '2024-09-30', 215.43, 47.23, 0, 'Active', 5.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1008', 'North', 'Commercial', '2024-10-01', 637.96, 258.78, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1054', 'West', 'Commercial', '2024-10-01', 513.86, 126.73, 0, 'Active', 7.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1028', 'Central', 'Residential', '2024-10-02', 418.53, 122.03, 0, 'Active', 5.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1060', 'West', 'Industrial', '2024-10-02', 1537.99, 716.19, 0, 'Active', 8.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1036', 'Central', 'Industrial', '2024-10-03', 1967.26, 822.6, 0, 'Active', 7.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1048', 'East', 'Industrial', '2024-10-04', 626.15, 197.4, 132, 'Active', 7.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1056', 'West', 'Commercial', '2024-10-04', 569.99, 144.21, 0, 'Active', 7.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1057', 'West', 'Industrial', '2024-10-06', 1144.77, 468.89, 0, 'Active', 7.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1052', 'West', 'Residential', '2024-10-08', 159.15, 53.56, 0, 'Faulty', 5.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1051', 'West', 'Residential', '2024-10-09', 261.94, 60.67, 0, 'Active', 5.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1009', 'North', 'Industrial', '2024-10-11', 750.58, 352.46, 0, 'Active', 8.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1030', 'Central', 'Commercial', '2024-10-11', 1013.42, 361.59, 0, 'Active', 7.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1005', 'North', 'Commercial', '2024-10-12', 297.4, 76.68, 0, 'Faulty', 6.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1058', 'West', 'Industrial', '2024-10-12', 883.99, 356.23, 0, 'Active', 8.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1016', 'South', 'Residential', '2024-10-14', 274.1, 98.48, 0, 'Active', 5.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1020', 'South', 'Commercial', '2024-10-17', 745.01, 344.81, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1019', 'South', 'Commercial', '2024-10-19', 600.51, 154.43, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1023', 'South', 'Industrial', '2024-10-19', 1688.17, 402.32, 0, 'Active', 8.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1025', 'Central', 'Residential', '2024-10-19', 312.53, 78.45, 0, 'Faulty', 5.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1001', 'North', 'Residential', '2024-10-20', 135.59, 36.35, 0, 'Active', 5.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1047', 'East', 'Industrial', '2024-10-20', 592.72, 199.68, 0, 'Faulty', 8.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1021', 'South', 'Industrial', '2024-10-21', 1516.26, 511.07, 0, 'Active', 7.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1023', 'South', 'Industrial', '2024-10-21', 1806.5, 848.99, 0, 'Active', 8.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1044', 'East', 'Commercial', '2024-10-21', 324.27, 89.0, 0, 'Active', 6.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1042', 'East', 'Commercial', '2024-10-22', 330.91, 96.16, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1027', 'Central', 'Residential', '2024-10-23', 314.04, 66.43, 0, 'Active', 5.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1028', 'Central', 'Residential', '2024-10-23', 375.7, 96.68, 0, 'Active', 5.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1043', 'East', 'Commercial', '2024-10-24', 361.44, 134.76, 0, 'Active', 6.0);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1048', 'East', 'Industrial', '2024-10-24', 1081.25, 345.79, 149, 'Active', 7.5);
INSERT INTO SmartCityEnergy (MeterID, Zone, ConsumerType, Date, EnergyConsumed_kWh, PeakUsage_kWh, OutageMinutes, MeterStatus, TariffRate) VALUES ('MTR1016', 'South', 'Residential', '2024-10-30', 279.06, 52.05, 0, 'Active', 5.0);

-- ============================================================
-- SAMPLE SQL QUERIES FOR ANALYSIS
-- ============================================================

-- Total & Average Daily Energy Consumption by Zone
SELECT Zone,
       COUNT(*)                              AS Readings,
       ROUND(SUM(EnergyConsumed_kWh), 2)    AS Total_kWh,
       ROUND(AVG(EnergyConsumed_kWh), 2)    AS Avg_Daily_kWh,
       ROUND(MAX(EnergyConsumed_kWh), 2)    AS Max_kWh
FROM SmartCityEnergy
GROUP BY Zone
ORDER BY Total_kWh DESC;

-- Top 5 Highest Energy-Consuming Meters
SELECT MeterID, Zone, ConsumerType,
       ROUND(SUM(EnergyConsumed_kWh), 2)    AS Total_kWh,
       COUNT(*)                              AS Readings
FROM SmartCityEnergy
GROUP BY MeterID, Zone, ConsumerType
ORDER BY Total_kWh DESC
LIMIT 5;

-- Monthly Consumption Trend Across Zones
SELECT SUBSTR(Date, 1, 7) AS Month,
       Zone,
       ROUND(SUM(EnergyConsumed_kWh), 2) AS Total_kWh,
       ROUND(AVG(EnergyConsumed_kWh), 2) AS Avg_kWh
FROM SmartCityEnergy
GROUP BY Month, Zone
ORDER BY Month, Zone;

-- Average Cost per Zone (EnergyConsumed × TariffRate)
SELECT Zone,
       ROUND(AVG(TariffRate), 2) AS Avg_Tariff,
       ROUND(SUM(EnergyConsumed_kWh), 2) AS Total_kWh,
       ROUND(SUM(EnergyConsumed_kWh * TariffRate), 2) AS Total_Cost_INR,
       ROUND(AVG(EnergyConsumed_kWh * TariffRate), 2) AS Avg_Cost_Per_Reading
FROM SmartCityEnergy
GROUP BY Zone
ORDER BY Total_Cost_INR DESC;

-- Meters with Highest Faults or Outages
SELECT MeterID, Zone, ConsumerType,
       SUM(CASE WHEN MeterStatus = 'Faulty' THEN 1 ELSE 0 END) AS Faulty_Count,
       SUM(CASE WHEN OutageMinutes > 0 THEN 1 ELSE 0 END) AS Outage_Incidents,
       ROUND(SUM(OutageMinutes), 0) AS Total_Outage_Mins,
       COUNT(*) AS Total_Readings
FROM SmartCityEnergy
GROUP BY MeterID, Zone, ConsumerType
HAVING Faulty_Count > 0 OR Outage_Incidents > 0
ORDER BY Faulty_Count DESC, Total_Outage_Mins DESC
LIMIT 15;

-- Zones with Lowest Energy Efficiency (High Usage + Frequent Outages)
SELECT Zone,
       ROUND(AVG(EnergyConsumed_kWh), 2)                                            AS Avg_Energy_kWh,
       ROUND(SUM(OutageMinutes), 0)                                                  AS Total_Outage_Mins,
       SUM(CASE WHEN MeterStatus = 'Faulty' THEN 1 ELSE 0 END)                      AS Faulty_Readings,
       COUNT(*)                                                                       AS Total_Readings,
       ROUND(CAST(SUM(CASE WHEN MeterStatus='Faulty' THEN 1 ELSE 0 END) AS REAL)
             / COUNT(*) * 100, 1)                                                    AS Fault_Rate_Pct,
       ROUND(AVG(EnergyConsumed_kWh) + SUM(OutageMinutes) * 1.0 / COUNT(*), 2)     AS Inefficiency_Score
FROM SmartCityEnergy
GROUP BY Zone
ORDER BY Inefficiency_Score DESC;

-- Peak Usage: Weekdays vs Weekends

SELECT 
       Zone,
       ConsumerType,
       CASE 
            WHEN DAYOFWEEK(Date) IN (1, 7)
            THEN 'Weekend'
            ELSE 'Weekday'
       END AS Day_Type,
       COUNT(*) AS Readings,
       ROUND(AVG(PeakUsage_kWh), 2) AS Avg_Peak_kWh,
       ROUND(MAX(PeakUsage_kWh), 2) AS Max_Peak_kWh,
       ROUND(AVG(EnergyConsumed_kWh), 2) AS Avg_Energy_kWh
FROM SmartCityEnergy
GROUP BY 
       Zone, 
       ConsumerType,
       CASE 
            WHEN DAYOFWEEK(Date) IN (1, 7)
            THEN 'Weekend'
            ELSE 'Weekday'
       END
ORDER BY Zone, ConsumerType, Day_Type;
