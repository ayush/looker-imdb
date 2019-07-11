view: language {
  sql_table_name: imdb.language ;;

  dimension: language {
    type: string
    sql: ${TABLE}.language ;;
  }

  dimension: movieid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.movieid ;;
  }

  measure: count {
    type: count
    drill_fields: [movies.movieid]
  }
}
