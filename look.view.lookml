- view: look
  sql_table_name: LOOK
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension_group: deleted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.DELETED_AT

  - dimension: description
    type: string
    sql: ${TABLE}.DESCRIPTION

  - dimension: public
    type: yesno
    sql: ${TABLE}.PUBLIC

  - dimension: public_slug
    type: string
    sql: ${TABLE}.PUBLIC_SLUG

  - dimension: query_id
    type: number
    # hidden: true
    sql: ${TABLE}.QUERY_ID

  - dimension: space_id
    type: number
    # hidden: true
    sql: ${TABLE}.SPACE_ID

  - dimension: title
    type: string
    sql: ${TABLE}.TITLE

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
    - user.dev_branch_name
    - user.last_name
    - user.first_name
    - user.id
    - query.id
    - space.name
    - space.id
    - dashboard_element.count
    - history.count
    - scheduled_job.count
    - scheduled_look.count
    - scheduled_plan.count
    - scheduled_task_look.count

