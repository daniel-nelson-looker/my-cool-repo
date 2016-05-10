- view: access_token
  sql_table_name: access_token
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension: credentials_api3_id
    type: number
    # hidden: true
    sql: ${TABLE}.CREDENTIALS_API3_ID

  - dimension: encrypted_code
    type: string
    sql: ${TABLE}.ENCRYPTED_CODE

  - dimension: encrypted_token
    type: string
    sql: ${TABLE}.ENCRYPTED_TOKEN

  - dimension_group: expires
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.EXPIRES_AT

  - dimension: grant_type
    type: string
    sql: ${TABLE}.GRANT_TYPE

  - dimension: resource_owner_id
    type: number
    sql: ${TABLE}.RESOURCE_OWNER_ID

  - dimension: role_id
    type: number
    # hidden: true
    sql: ${TABLE}.ROLE_ID

  - dimension: session_id
    type: number
    # hidden: true
    sql: ${TABLE}.SESSION_ID

  - dimension: user_id
    type: number
    # hidden: true
    sql: ${TABLE}.USER_ID

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - credentials_api3.id
    - session.id
    - role.id
    - role.name
    - user.dev_branch_name
    - user.last_name
    - user.first_name
    - user.id
    - session.count

