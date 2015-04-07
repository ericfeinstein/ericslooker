- view: dates
  fields:

  - dimension: date_id
    primary_key: true
    type: int
    sql: ${TABLE}.date_id

  - dimension: active
    sql: ${TABLE}.active

  - dimension: adults
    sql: ${TABLE}.adults

  - dimension_group: check_in
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.check_in
    drill_fields: [check_in, check_out, active, adults, children, date_id]

  - dimension: check_in_day
    sql: ${TABLE}.check_in_day

  - dimension: check_in_year_month
    sql: ${TABLE}.check_in_year_month

  - dimension_group: check_out
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.check_out

  - dimension: check_out_day
    sql: ${TABLE}.check_out_day

  - dimension: check_out_year_month
    sql: ${TABLE}.check_out_year_month

  - dimension: children
    sql: ${TABLE}.children

  - dimension: last_run_notes
    sql: ${TABLE}.last_run_notes

  - dimension_group: last_run_timestamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_run_timestamp

  - dimension: nights
    sql: ${TABLE}.nights

  - dimension: rooms
    sql: ${TABLE}.rooms

  - measure: count
    type: count
    drill_fields: [check_in, check_out, active, adults, children, date_id]


