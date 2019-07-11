view: producers {
  sql_table_name: imdb.producers ;;

  dimension: producerid {
    primary_key: yes
    type: number
    sql: ${TABLE}.producerid ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [producerid, name, movies2producers.count]
  }
}
