view: business {
  sql_table_name: imdb.business ;;

  dimension: businesstext {
    type: string
    sql: ${TABLE}.businesstext ;;
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
