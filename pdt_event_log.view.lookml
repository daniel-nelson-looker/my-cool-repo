- view: pdt_event_log
  sql_table_name: PDT_EVENT_LOG
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: action
    type: string
    sql: ${TABLE}.ACTION

  - dimension: action_data
    type: string
    sql: ${TABLE}.ACTION_DATA

  - dimension: at
    type: number
    sql: ${TABLE}."AT"

  - dimension: connection
    type: string
    sql: ${TABLE}.CONNECTION

  - dimension: hash_key
    type: string
    sql: ${TABLE}.HASH_KEY

  - dimension: model_name
    type: string
    sql: ${TABLE}.MODEL_NAME

  - dimension: table_name
    type: string
    sql: ${TABLE}.TABLE_NAME

  - dimension: tid
    type: string
    sql: ${TABLE}.TID

  - dimension: tseq
    type: number
    sql: ${TABLE}.TSEQ

  - dimension: view_name
    type: string
    sql: ${TABLE}.VIEW_NAME

  - measure: count
    type: count
    drill_fields: [id, view_name, model_name, table_name]

