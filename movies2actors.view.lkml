view: movies2actors {
  sql_table_name: imdb.movies2actors ;;

  dimension: actorid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.actorid ;;
  }

  dimension: as_character {
    type: string
    sql: ${TABLE}.as_character ;;
  }

  dimension: leading {
    type: number
    sql: ${TABLE}.`leading` ;;
  }

  dimension: movieid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.movieid ;;
  }

  measure: count {
    type: count
    drill_fields: [movies.movieid, actors.actorid, actors.name]
  }
}
