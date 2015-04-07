- view: flight_config
  fields:

  - dimension: active
    type: int
    sql: ${TABLE}.active

  - dimension_group: check_in
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.check_in

  - dimension_group: check_out
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.check_out

  - dimension: config_id
    type: int
    sql: ${TABLE}.config_id

  - dimension: config_name
    sql: ${TABLE}.config_name

  - dimension: destination
    sql: ${TABLE}.destination

  - dimension: last_run_records
    type: int
    sql: ${TABLE}.last_run_records

  - dimension_group: last_run_timestamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_run_timestamp

  - dimension: origin
    sql: ${TABLE}.origin

  - measure: count
    type: count
    drill_fields: [config_name]

