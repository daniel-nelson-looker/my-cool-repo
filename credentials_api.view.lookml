- view: credentials_api
  sql_table_name: CREDENTIALS_API
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension_group: last_request
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LAST_REQUEST_AT

  - dimension: secret
    type: string
    sql: ${TABLE}.SECRET

  - dimension: token
    type: string
    sql: ${TABLE}.TOKEN

  - dimension: user_id
    type: number
    # hidden: true
    sql: ${TABLE}.USER_ID

  - measure: count
    type: count
    drill_fields: [id, user.dev_branch_name, user.last_name, user.first_name, user.id]

