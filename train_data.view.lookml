- view: train_data
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: amb_score
    type: number
    sql: ${TABLE}.amb_score

  - dimension: created_at
    type: string
    sql: ${TABLE}.created_at

  - dimension: food_score
    type: number
    sql: ${TABLE}.food_score

  - dimension: lattd
    type: number
    sql: ${TABLE}.lattd

  - dimension: longi
    type: number
    sql: ${TABLE}.longi

  - dimension: rest_id
    type: string
    sql: ${TABLE}.rest_id

  - dimension: rev_score
    type: number
    sql: ${TABLE}.rev_score

  - dimension: rev_title
    type: string
    sql: ${TABLE}.rev_title

  - dimension: review
    type: string
    sql: ${TABLE}.review

  - dimension: service_score
    type: number
    sql: ${TABLE}.service_score

  - dimension: user_name
    type: string
    sql: ${TABLE}.user_name
    
  - measure: sum_rev_score
    type: sum
    sql: ${rev_score}

  - measure: sum_food_score
    type: sum
    sql: ${food_score}

  - measure: sum_amb_score
    type: sum
    sql: ${amb_score}

  - measure: sum_service_score
    type: sum
    sql: ${service_score}

## Averages
  - measure: avg_rev_score
    type: average
    sql: ${rev_score}

  - measure: avg_food_score
    type: average
    sql: ${food_score}

  - measure: avg_amb_score
    type: average
    sql: ${amb_score}

  - measure: avg_service_score
    type: average
    sql: ${service_score}


  - measure: count
    type: count
    drill_fields: [id, user_name]

