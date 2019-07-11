view: movies2editors {
  sql_table_name: imdb.movies2editors ;;

  dimension: addition {
    type: string
    sql: ${TABLE}.addition ;;
  }

  dimension: editorid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.editorid ;;
  }

  dimension: movieid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.movieid ;;
  }

  measure: count {
    type: count
    drill_fields: [movies.movieid, editors.editorid, editors.name]
  }
}
