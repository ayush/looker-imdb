view: countries {
  sql_table_name: imdb.countries ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
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
