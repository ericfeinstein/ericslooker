- view: hotel_config
  fields:

  - dimension: active
    sql: ${TABLE}.active

  - dimension: adults
    sql: ${TABLE}.adults

  - dimension_group: check_in
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.check_in

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

  - dimension: city
    sql: ${TABLE}.city

  - dimension: country
    sql: ${TABLE}.country

  - dimension: date_id
    type: int
    # hidden: true
    sql: ${TABLE}.date_id

  - dimension: last_run_notes
    sql: ${TABLE}.last_run_notes

  - dimension: last_run_records
    sql: ${TABLE}.last_run_records

  - dimension_group: last_run_timestamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_run_timestamp

  - dimension: loc_id
    type: int
    sql: ${TABLE}.loc_id

  - dimension: nights
    sql: ${TABLE}.nights

  - dimension: rooms
    sql: ${TABLE}.rooms

  - dimension: state
    sql: ${TABLE}.state

  - measure: count
    type: count
    drill_fields: [dates.date_id]

