- view: airports
  fields:

  - dimension: airport_id
    primary_key: true
    type: int
    sql: ${TABLE}.airport_ID

  - dimension: altitude
    type: int
    sql: ${TABLE}.Altitude

  - dimension: city
    sql: ${TABLE}.city

  - dimension: country
    sql: ${TABLE}.Country

  - dimension: dst
    sql: ${TABLE}.DST

  - dimension: faa_cd
    sql: ${TABLE}.FAA_cd

  - dimension: iata_cd
    sql: ${TABLE}.IATA_cd

  - dimension: latitude
    type: number
    sql: ${TABLE}.Latitude

  - dimension: longitude
    type: number
    sql: ${TABLE}.Longitude

  - dimension: name
    sql: ${TABLE}.name

  - dimension: timezone
    type: number
    sql: ${TABLE}.Timezone

  - dimension: ts_value
    sql: ${TABLE}.ts_value

  - measure: count
    type: count
    drill_fields: [airport_id, name]

