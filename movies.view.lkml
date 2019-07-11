view: movies {
  sql_table_name: imdb.movies ;;

  dimension: movieid {
    primary_key: yes
    type: number
    sql: ${TABLE}.movieid ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      movieid,
      business.count,
      countries.count,
      distributors.count,
      genres.count,
      language.count,
      movies2actors.count,
      movies2directors.count,
      movies2editors.count,
      movies2producers.count,
      movies2writers.count,
      prodcompanies.count,
      ratings.count,
      runningtimes.count
    ]
  }
}
