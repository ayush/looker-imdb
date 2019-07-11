view: ratings {
  sql_table_name: imdb.ratings ;;

  dimension: distribution {
    type: string
    sql: ${TABLE}.distribution ;;
  }

  dimension: movieid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.movieid ;;
  }

  dimension: rank {
    type: string
    sql: ${TABLE}.rank ;;
  }

  dimension: votes {
    type: number
    sql: ${TABLE}.votes ;;
  }

  measure: count {
    type: count
    drill_fields: [movies.movieid]
  }
}
