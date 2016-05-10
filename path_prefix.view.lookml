- view: path_prefix
  sql_table_name: PATH_PREFIX
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: prefix
    type: string
    sql: ${TABLE}.PREFIX

  - dimension: sha
    type: string
    sql: ${TABLE}.SHA

  - measure: count
    type: count
    drill_fields: [id, history.count]

