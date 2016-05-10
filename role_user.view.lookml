- view: role_user
  sql_table_name: ROLE_USER
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: role_id
    type: number
    # hidden: true
    sql: ${TABLE}.ROLE_ID

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
    - role.id
    - role.name

