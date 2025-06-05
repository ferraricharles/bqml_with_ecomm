view: reviews_probs {
  derived_table: {
    sql: // YOUR ML.PREDICT CODE HERE ;;
  }

  measure: count {
    type: count
  }


  dimension: no_probability {
    type: number # Or float
    sql: ${TABLE}.predicted_reviews_sql_good_feedback_probs[1].prob ;;
    value_format_name: percent_2 # Optional: format as a percentage
  }

  dimension: yes_probability {
    type: number # Or float, depending on desired precision
    sql: ${TABLE}.predicted_reviews_sql_good_feedback_probs[0].prob ;;
    value_format_name: percent_2 # Optional: format as a percentage
  }


  dimension: predicted_reviews_sql_good_feedback {
    hidden: yes
    type: string
    sql: ${TABLE}.predicted_reviews_sql_good_feedback ;;
  }


}
