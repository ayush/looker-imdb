view: movies2writers {
  sql_table_name: imdb.movies2writers ;;

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

  dimension: writerid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.writerid ;;
  }

  measure: count {
    type: count
    drill_fields: [writers.writerid, writers.name, movies.movieid]
  }
}
