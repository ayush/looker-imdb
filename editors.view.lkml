view: editors {
  sql_table_name: imdb.editors ;;

  dimension: editorid {
    primary_key: yes
    type: number
    sql: ${TABLE}.editorid ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [editorid, name, movies2editors.count]
  }
}
