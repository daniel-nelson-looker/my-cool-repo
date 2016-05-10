- view: scheduled_look_action
  sql_table_name: SCHEDULED_LOOK_ACTION
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension: external_email
    type: string
    sql: ${TABLE}.EXTERNAL_EMAIL

  - dimension: scheduled_look_id
    type: number
    # hidden: true
    sql: ${TABLE}.SCHEDULED_LOOK_ID

  - dimension: slug
    type: string
    sql: ${TABLE}.SLUG

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
    - scheduled_look.id
    - user.dev_branch_name
    - user.last_name
    - user.first_name
    - user.id

