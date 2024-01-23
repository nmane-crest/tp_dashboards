---
- dashboard: poc
  title: poc
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: B1X18Z2wfyQkwPBW51dIyH
  elements:
  - title: poc
    name: poc
    model: shpoc
    explore: poc
    type: table
    fields: [poc.email_id, poc.id, poc.time_poc_dimension]
    sorts: [poc.time_poc_dimension desc]
    limit: 500
    column_limit: 50
    listen:
      Time Poc: poc.time_poc
      Username: poc.username
    row: 3
    col: 0
    width: 10
    height: 7
  - type: button
    name: button_89
    rich_content_json: '{"text":"High","description":"","newTab":false,"alignment":"center","size":"medium","style":"FILLED","color":"#E52592","href":"https://40f7f28e-b4d6-445a-963a-9529a73a3172.looker.app/embed/dashboards/22"}'
    row: 0
    col: 21
    width: 3
    height: 1
  - title: POC
    name: POC
    model: tp
    explore: employee
    type: tp::stats_count
    fields: [count1, count2, count3, count4, count5]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression: ''
      label: count1
      based_on: employee.id
      _kind_hint: measure
      measure: count1
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: ''
      label: count2
      based_on: employee.id
      _kind_hint: measure
      measure: count2
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: ''
      label: count3
      based_on: employee.id
      _kind_hint: measure
      measure: count3
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: ''
      label: count5
      based_on: employee.id
      _kind_hint: measure
      measure: count5
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: ''
      label: count4
      based_on: employee.id
      _kind_hint: measure
      measure: count4
      type: count_distinct
      _type_hint: number
    query_timezone: America/Los_Angeles
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 0
    title_hidden: true
    listen:
      Username: employee.username
    row: 1
    col: 0
    width: 24
    height: 2
  filters:
  - name: Time Poc
    title: Time Poc
    type: field_filter
    default_value: 15 days
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
      options:
      - 15 days
      - 30 days
    model: shpoc
    explore: poc
    listens_to_filters: []
    field: poc.time_poc
  - name: Username
    title: Username
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: tp
    explore: employee
    listens_to_filters: []
    field: employee.username
