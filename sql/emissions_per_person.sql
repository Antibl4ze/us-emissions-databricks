SELECT
  CONCAT(county_name, , , state_abbr) AS county_state_name,
  population,
  ROUND(CAST(REPLACE(`GHG emissions mtons CO2e`, ,, ) AS DOUBLE) / population, 2) AS emissions_per_person
FROM emissions.default.emissions_data_us
ORDER BY emissions_per_person DESC
