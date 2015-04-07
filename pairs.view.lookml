- view: pairs
  fields:

  - dimension: destination
    sql: ${TABLE}.destination

  - dimension_group: last_run_timestamp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_run_timestamp

  - dimension: origin
    sql: ${TABLE}.origin

  - measure: count
    type: count
    drill_fields: []

