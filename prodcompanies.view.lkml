view: prodcompanies {
  sql_table_name: imdb.prodcompanies ;;

  dimension: movieid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.movieid ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [name, movies.movieid]
  }
}
