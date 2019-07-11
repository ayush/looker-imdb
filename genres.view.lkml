view: genres {
  sql_table_name: imdb.genres ;;

  dimension: genre {
    type: string
    sql: ${TABLE}.genre ;;
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
