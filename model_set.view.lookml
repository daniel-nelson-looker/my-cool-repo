- view: model_set
  sql_table_name: MODEL_SET
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: built_in
    type: yesno
    sql: ${TABLE}.BUILT_IN

  - dimension: embed
    type: yesno
    sql: ${TABLE}.EMBED

  - dimension: models
    type: string
    sql: ${TABLE}.MODELS

  - dimension: name
    type: string
    sql: ${TABLE}.NAME

  - dimension: unlimited
    type: yesno
    sql: ${TABLE}.UNLIMITED

  - measure: count
    type: count
    drill_fields: [id, name, role.count]

