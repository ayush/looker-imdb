view: runningtimes {
  sql_table_name: imdb.runningtimes ;;

  dimension: addition {
    type: string
    sql: ${TABLE}.addition ;;
  }

  dimension: movieid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.movieid ;;
  }

  dimension: time {
    type: string
    sql: ${TABLE}.time ;;
  }

  dimension: time1 {
    type: number
    sql: ${TABLE}.time1 ;;
  }

  measure: count {
    type: count
    drill_fields: [movies.movieid]
  }
}
