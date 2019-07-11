view: movies2directors {
  sql_table_name: imdb.movies2directors ;;

  dimension: directorid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.directorid ;;
  }

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
    drill_fields: [movies.movieid, directors.directorid, directors.name]
  }
}
