- view: testtable
  fields:

  - dimension: col_name
    sql: ${TABLE}.ColName

  - dimension: col_value
    sql: ${TABLE}.ColValue

  - measure: count
    type: count
    drill_fields: [col_name]

