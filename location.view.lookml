- view: location
  fields:

  - dimension: airport
    sql: ${TABLE}.airport

  - dimension: city
    sql: ${TABLE}.city

  - dimension: country
    sql: ${TABLE}.country

  - dimension_group: last_run_timestamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_run_timestamp

  - dimension: loc_id
    type: int
    sql: ${TABLE}.loc_id

  - dimension: state
    sql: ${TABLE}.state

  - dimension: weather_state
    sql: ${TABLE}.weather_state

  - measure: count
    type: count
    drill_fields: []

