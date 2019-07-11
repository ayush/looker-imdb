view: movies2producers {
  sql_table_name: imdb.movies2producers ;;

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

  dimension: producerid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.producerid ;;
  }

  measure: count {
    type: count
    drill_fields: [movies.movieid, producers.producerid, producers.name]
  }
}
