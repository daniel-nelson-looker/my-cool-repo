- view: dashboard_element
  sql_table_name: DASHBOARD_ELEMENT
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension: dashboard_id
    type: number
    # hidden: true
    sql: ${TABLE}.DASHBOARD_ID

  - dimension_group: deleted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.DELETED_AT

  - dimension: listen
    type: string
    sql: ${TABLE}.LISTEN

  - dimension: look_id
    type: number
    # hidden: true
    sql: ${TABLE}.LOOK_ID

  - dimension: note_display
    type: string
    sql: ${TABLE}.NOTE_DISPLAY

  - dimension: note_state
    type: string
    sql: ${TABLE}.NOTE_STATE

  - dimension: note_text
    type: string
    sql: ${TABLE}.NOTE_TEXT

  - dimension: refresh_interval
    type: string
    sql: ${TABLE}.REFRESH_INTERVAL

  - dimension: type
    type: string
    sql: ${TABLE}.TYPE

  - measure: count
    type: count
    drill_fields: [id, dashboard.id, look.id, dashboard_layout_component.count]

