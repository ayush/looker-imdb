view: directors {
  sql_table_name: imdb.directors ;;

  dimension: directorid {
    primary_key: yes
    type: number
    sql: ${TABLE}.directorid ;;
  }

  dimension: gross {
    type: number
    sql: ${TABLE}.gross ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: num {
    type: number
    sql: ${TABLE}.num ;;
  }

  dimension: rate {
    type: number
    sql: ${TABLE}.rate ;;
  }

  measure: count {
    type: count
    drill_fields: [directorid, name, movies2directors.count]
  }
}
