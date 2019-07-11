view: writers {
  sql_table_name: imdb.writers ;;

  dimension: writerid {
    primary_key: yes
    type: number
    sql: ${TABLE}.writerid ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [writerid, name, movies2writers.count]
  }
}
