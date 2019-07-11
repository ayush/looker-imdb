view: actors {
  sql_table_name: imdb.actors ;;

  dimension: actorid {
    primary_key: yes
    type: number
    sql: ${TABLE}.actorid ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: sex {
    type: string
    sql: ${TABLE}.sex ;;
  }

  measure: count {
    type: count
    drill_fields: [actorid, name, movies2actors.count]
  }
}
