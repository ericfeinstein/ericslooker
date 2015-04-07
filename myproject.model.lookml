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

# what if i add another hotel_config
# --- errors

- explore: location

- explore: pairs

- explore: testtable

- explore: weather_config

