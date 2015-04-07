- view: weather_config
  fields:

  - dimension: active
    sql: ${TABLE}.active

  - dimension: last_run_success
    sql: ${TABLE}.last_run_success

  - dimension_group: last_run_timestamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_run_timestamp

  - dimension: loc_id
    type: int
    sql: ${TABLE}.loc_id

  - dimension_group: weather
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.weather_date

  - dimension: weather_id
    type: int
    sql: ${TABLE}.weather_id

  - dimension: weather_mmdd
    sql: ${TABLE}.weather_mmdd

  - measure: count
    type: count
    drill_fields: []

