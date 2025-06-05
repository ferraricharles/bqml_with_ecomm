---
- dashboard: reviews
  title: Reviews
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: fvaOxVIdr54Jv256WkWHdg
  elements:
  - title: Best Rated brands
    name: Best Rated brands
    model: thelook
    explore: order_items
    type: looker_bar
    fields: [reviews_with_comments.average_rating, products.brand]
    sorts: [reviews_with_comments.average_rating desc 0]
    limit: 20
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen: {}
    row: 28
    col: 0
    width: 12
    height: 8
  - title: Worst Rated Brands
    name: Worst Rated Brands
    model: thelook
    explore: order_items
    type: looker_bar
    fields: [reviews_with_comments.average_rating, products.brand]
    filters:
      reviews_with_comments.average_rating: NOT NULL
    sorts: [reviews_with_comments.average_rating]
    limit: 20
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    defaults_version: 1
    listen: {}
    row: 28
    col: 12
    width: 12
    height: 8
  - title: Reviews distribution Past 6 months
    name: Reviews distribution Past 6 months
    model: thelook
    explore: order_items
    type: looker_pie
    fields: [reviews_with_comments.count, reviews_with_comments.reviews_sql_rating]
    filters:
      order_items.created_date: 6 months
    sorts: [reviews_with_comments.reviews_sql_rating]
    limit: 2000
    column_limit: 50
    value_labels: legend
    label_type: labPer
    series_colors:
      '1': "#9334E6"
      '2': "#EA4335"
      '3': "#F9AB00"
      '4': "#1A73E8"
      '5': "#7CB342"
      'null': "#80868B"
    series_labels:
      'null': No Reviews
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen: {}
    row: 0
    col: 8
    width: 8
    height: 6
  - title: Submited Reviews
    name: Submited Reviews
    model: thelook
    explore: order_items
    type: single_value
    fields: [reviews_with_comments.count, reviews_with_comments.is_good]
    filters:
      reviews_with_comments.count: NOT NULL
      reviews_with_comments.reviews_sql_rating: NOT NULL
    sorts: [reviews_with_comments.count desc 0]
    limit: 2000
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: sum(${reviews_with_comments.count})
      label: Total
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: total
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_labels: legend
    label_type: labPer
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen: {}
    row: 0
    col: 0
    width: 8
    height: 6
  - title: Good vs Bad Reviews Distribution past 6 months
    name: Good vs Bad Reviews Distribution past 6 months
    model: thelook
    explore: order_items
    type: looker_area
    fields: [reviews_with_comments.count, reviews_with_comments.is_good, order_items.created_date]
    pivots: [reviews_with_comments.is_good]
    filters:
      reviews_with_comments.count: NOT NULL
      reviews_with_comments.reviews_sql_rating: NOT NULL
      order_items.created_date: 6 months
    sorts: [reviews_with_comments.is_good, reviews_with_comments.count desc 0]
    limit: 2000
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      Yes - reviews_with_comments.count: "#7CB342"
      No - reviews_with_comments.count: "#EA4335"
    series_labels:
      Yes - reviews_with_comments.count: ":D"
      No - reviews_with_comments.count: ":("
    ordering: none
    show_null_labels: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    hidden_pivots: {}
    listen: {}
    row: 17
    col: 0
    width: 24
    height: 5
  - title: Submitted Reviews distribution Past 6 months
    name: Submitted Reviews distribution Past 6 months
    model: thelook
    explore: order_items
    type: looker_pie
    fields: [reviews_with_comments.count, reviews_with_comments.reviews_sql_rating]
    filters:
      order_items.created_date: 6 months
      reviews_with_comments.reviews_sql_rating: NOT NULL
    sorts: [reviews_with_comments.count desc 0]
    limit: 2000
    column_limit: 50
    value_labels: legend
    label_type: labPer
    series_colors:
      '1': "#9334E6"
      '2': "#EA4335"
      '3': "#F9AB00"
      '4': "#1A73E8"
      '5': "#7CB342"
      'null': "#80868B"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    row: 0
    col: 16
    width: 8
    height: 6
  - title: Latest reviews
    name: Latest reviews
    model: thelook
    explore: order_items
    type: looker_grid
    fields: [order_items.created_date, reviews_with_comments.reviews_sql_rating, products.category,
      products.brand, reviews_with_comments.comment]
    filters:
      order_items.created_date: 6 months
      reviews_with_comments.comment: "-NULL"
    sorts: [order_items.created_date desc]
    limit: 10
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    minimum_column_width: 75
    series_column_widths:
      order_items.created_date: 95
      products.category: 114
      products.brand: 157
      reviews_with_comments.reviews_sql_rating: 75
    listen: {}
    row: 22
    col: 0
    width: 24
    height: 6
  - title: Orders with 70%+ chances of a bad review
    name: Orders with 70%+ chances of a bad review
    model: thelook
    explore: order_items
    type: looker_column
    fields: [order_items.created_date, order_items.count]
    fill_fields: [order_items.created_date]
    filters:
      order_items.created_date: 15 days
      reviews_probs.no_probability: ">0.7"
    sorts: [order_items.created_date desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots: {}
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen: {}
    row: 6
    col: 0
    width: 24
    height: 6
  - title: Responses per Rate
    name: Responses per Rate
    model: thelook
    explore: order_items
    type: looker_area
    fields: [reviews_with_comments.count, order_items.created_date, reviews_with_comments.reviews_sql_rating]
    pivots: [reviews_with_comments.reviews_sql_rating]
    filters:
      reviews_with_comments.count: NOT NULL
      order_items.created_date: 6 months
    sorts: [reviews_with_comments.reviews_sql_rating desc, reviews_with_comments.count
        desc 0]
    limit: 2000
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
        reverse: true
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      Yes - reviews_with_comments.count: "#7CB342"
      No - reviews_with_comments.count: "#EA4335"
      5 - reviews_with_comments.count: "#7CB342"
      4 - reviews_with_comments.count: "#A8A116"
      1 - reviews_with_comments.count: "#EA4335"
      2 - reviews_with_comments.count: "#FF8168"
      3 - reviews_with_comments.count: "#F9AB00"
      reviews_with_comments.reviews_sql_rating___null - reviews_with_comments.count: "#80868B"
    series_labels:
      Yes - reviews_with_comments.count: ":D"
      No - reviews_with_comments.count: ":("
    ordering: none
    show_null_labels: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    hidden_pivots: {}
    listen: {}
    row: 12
    col: 0
    width: 24
    height: 5
