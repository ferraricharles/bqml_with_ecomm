connection: "sample_bigquery_connection"
include: "/dashboards/*.dashboard.lookml" # include all the views
include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

explore: order_items {
  label: "(1) Orders, Items and Users"
  view_name: order_items

  join: inventory_items {
    view_label: "Inventory Items"
    #Left Join only brings in items that have been sold as order_item
    type: full_outer
    relationship: one_to_one
    sql_on: ${inventory_items.id} = ${order_items.inventory_item_id} ;;
  }
  join: users {
    view_label: "Users"
    type: left_outer
    relationship: many_to_one
    sql_on: ${order_items.user_id} = ${users.id} ;;
  }

  join: reviews_with_comments {
    relationship: one_to_one
    sql_on: ${reviews_with_comments.order_item_id} =  ${order_items.id};;
  }

  # join: reviews_probs {
  #   relationship: one_to_one
  #   sql_on: ${reviews_probs.id} = ${order_items.id} ;;
  # }


  join: products {
    view_label: "Products"
    type: left_outer
    relationship: many_to_one
    sql_on: ${products.id} = ${inventory_items.product_id} ;;
  }


}
