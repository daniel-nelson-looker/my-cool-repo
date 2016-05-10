- view: dashboard_layout_component
  sql_table_name: DASHBOARD_LAYOUT_COMPONENT
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: column
    type: number
    sql: ${TABLE}."COLUMN"

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension: dashboard_element_id
    type: number
    # hidden: true
    sql: ${TABLE}.DASHBOARD_ELEMENT_ID

  - dimension: dashboard_layout_id
    type: number
    # hidden: true
    sql: ${TABLE}.DASHBOARD_LAYOUT_ID

  - dimension_group: deleted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.DELETED_AT

  - dimension: height
    type: number
    sql: ${TABLE}.HEIGHT

  - dimension: row
    type: number
    sql: ${TABLE}."ROW"

  - dimension: width
    type: number
    sql: ${TABLE}.WIDTH

  - measure: count
    type: count
    drill_fields: [id, dashboard_layout.id, dashboard_element.id]

