connection: "imdb_connection"

# include all the views
include: "*.view"

datagroup: imdb_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: imdb_project_default_datagroup

explore: actors {}

explore: business {
  join: movies {
    type: left_outer
    sql_on: ${business.movieid} = ${movies.movieid} ;;
    relationship: many_to_one
  }
}

explore: countries {
  join: movies {
    type: left_outer
    sql_on: ${countries.movieid} = ${movies.movieid} ;;
    relationship: many_to_one
  }
}

explore: directors {}

explore: distributors {
  join: movies {
    type: left_outer
    sql_on: ${distributors.movieid} = ${movies.movieid} ;;
    relationship: many_to_one
  }
}

explore: editors {}

explore: genres {
  join: movies {
    type: left_outer
    sql_on: ${genres.movieid} = ${movies.movieid} ;;
    relationship: many_to_one
  }
}

explore: language {
  join: movies {
    type: left_outer
    sql_on: ${language.movieid} = ${movies.movieid} ;;
    relationship: many_to_one
  }
}

explore: movies {}

explore: movies2actors {
  join: movies {
    type: left_outer
    sql_on: ${movies2actors.movieid} = ${movies.movieid} ;;
    relationship: many_to_one
  }

  join: actors {
    type: left_outer
    sql_on: ${movies2actors.actorid} = ${actors.actorid} ;;
    relationship: many_to_one
  }
}

explore: movies2directors {
  join: movies {
    type: left_outer
    sql_on: ${movies2directors.movieid} = ${movies.movieid} ;;
    relationship: many_to_one
  }

  join: directors {
    type: left_outer
    sql_on: ${movies2directors.directorid} = ${directors.directorid} ;;
    relationship: many_to_one
  }
}

explore: movies2editors {
  join: movies {
    type: left_outer
    sql_on: ${movies2editors.movieid} = ${movies.movieid} ;;
    relationship: many_to_one
  }

  join: editors {
    type: left_outer
    sql_on: ${movies2editors.editorid} = ${editors.editorid} ;;
    relationship: many_to_one
  }
}

explore: movies2producers {
  join: movies {
    type: left_outer
    sql_on: ${movies2producers.movieid} = ${movies.movieid} ;;
    relationship: many_to_one
  }

  join: producers {
    type: left_outer
    sql_on: ${movies2producers.producerid} = ${producers.producerid} ;;
    relationship: many_to_one
  }
}

explore: movies2writers {
  join: writers {
    type: left_outer
    sql_on: ${movies2writers.writerid} = ${writers.writerid} ;;
    relationship: many_to_one
  }

  join: movies {
    type: left_outer
    sql_on: ${movies2writers.movieid} = ${movies.movieid} ;;
    relationship: many_to_one
  }
}

explore: prodcompanies {
  join: movies {
    type: left_outer
    sql_on: ${prodcompanies.movieid} = ${movies.movieid} ;;
    relationship: many_to_one
  }
}

explore: producers {}

explore: ratings {
  join: movies {
    type: left_outer
    sql_on: ${ratings.movieid} = ${movies.movieid} ;;
    relationship: many_to_one
  }
}

explore: runningtimes {
  join: movies {
    type: left_outer
    sql_on: ${runningtimes.movieid} = ${movies.movieid} ;;
    relationship: many_to_one
  }
}

explore: writers {}
