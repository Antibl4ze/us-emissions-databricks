SELECT
  state_abbr,
  SUM(CAST(REPLACE(`GHG emissions mtons CO2e`, ,, ) AS DOUBLE)) AS total_emissions
FROM emissions.default.emissions_data_us
group BY state_abbr
ORDER BY total_emissions DESC
LIMIT 10
