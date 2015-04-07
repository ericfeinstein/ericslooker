- connection: digitalocean

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: airports

- explore: dates

- explore: flight_config

- explore: hotel_config
  joins:
    - join: dates
      foreign_key: date_id


- explore: location

- explore: pairs

- explore: testtable

- explore: weather_config

