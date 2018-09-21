
DATABASE_NAME=community

#mysqldump -u root -p --no-data dbname > schema.sql

mysqldump -u root -p  $DATABASE_NAME \
--ignore-table=$DATABASE_NAME.sales_billing_agreement \
--ignore-table=$DATABASE_NAME.sales_billing_agreement_order \
--ignore-table=$DATABASE_NAME.sales_flat_creditmemo \
--ignore-table=$DATABASE_NAME.sales_flat_creditmemo_comment \
--ignore-table=$DATABASE_NAME.sales_flat_creditmemo_grid \
--ignore-table=$DATABASE_NAME.sales_flat_creditmemo_item \
--ignore-table=$DATABASE_NAME.sales_flat_invoice \
--ignore-table=$DATABASE_NAME.sales_flat_invoice_comment \
--ignore-table=$DATABASE_NAME.sales_flat_invoice_grid \
--ignore-table=$DATABASE_NAME.sales_flat_invoice_item \
--ignore-table=$DATABASE_NAME.sales_flat_order \
--ignore-table=$DATABASE_NAME.sales_flat_order_address \
--ignore-table=$DATABASE_NAME.sales_flat_order_grid \
--ignore-table=$DATABASE_NAME.sales_flat_order_item \
--ignore-table=$DATABASE_NAME.sales_flat_order_payment \
--ignore-table=$DATABASE_NAME.sales_flat_order_status_history \
--ignore-table=$DATABASE_NAME.sales_flat_quote \
--ignore-table=$DATABASE_NAME.sales_flat_quote_address \
--ignore-table=$DATABASE_NAME.sales_flat_quote_address_item \
--ignore-table=$DATABASE_NAME.sales_flat_quote_item \
--ignore-table=$DATABASE_NAME.sales_flat_quote_item_option \
--ignore-table=$DATABASE_NAME.sales_flat_quote_payment \
--ignore-table=$DATABASE_NAME.sales_flat_quote_shipping_rate \
--ignore-table=$DATABASE_NAME.sales_flat_shipment \
--ignore-table=$DATABASE_NAME.sales_flat_shipment_comment \
--ignore-table=$DATABASE_NAME.sales_flat_shipment_grid \
--ignore-table=$DATABASE_NAME.sales_flat_shipment_item \
--ignore-table=$DATABASE_NAME.sales_flat_shipment_track \
\
--ignore-table=$DATABASE_NAME.customer_entity \
--ignore-table=$DATABASE_NAME.customer_entity_datetime \
--ignore-table=$DATABASE_NAME.customer_entity_decimal \
--ignore-table=$DATABASE_NAME.customer_entity_int \
--ignore-table=$DATABASE_NAME.customer_entity_text \
--ignore-table=$DATABASE_NAME.customer_entity_varchar \
--ignore-table=$DATABASE_NAME.customer_flowpassword \
\
 --ignore-table=$DATABASE_NAME.customer_address_entity \
--ignore-table=$DATABASE_NAME.customer_address_entity_datetime \
--ignore-table=$DATABASE_NAME.customer_address_entity_decimal \
--ignore-table=$DATABASE_NAME.customer_address_entity_int \
--ignore-table=$DATABASE_NAME.customer_address_entity_text \
--ignore-table=$DATABASE_NAME.customer_address_entity_varchar \
\
 --ignore-table=$DATABASE_NAME.log_customer \
--ignore-table=$DATABASE_NAME.log_quote \
--ignore-table=$DATABASE_NAME.log_summary \
--ignore-table=$DATABASE_NAME.log_summary_type \
--ignore-table=$DATABASE_NAME.log_url \
--ignore-table=$DATABASE_NAME.log_url_info \
--ignore-table=$DATABASE_NAME.log_visitor \
--ignore-table=$DATABASE_NAME.log_visitor_info \
--ignore-table=$DATABASE_NAME.log_visitor_online \
\
--ignore-table=$DATABASE_NAME.report_event \
--ignore-table=$DATABASE_NAME.report_viewed_product_aggregated_daily \
--ignore-table=$DATABASE_NAME.report_viewed_product_aggregated_monthly \
--ignore-table=$DATABASE_NAME.report_viewed_product_aggregated_yearly \
--ignore-table=$DATABASE_NAME.report_viewed_product_index \
> $(date +'%d-%m-%Y')-$DATABASE_NAME.sql


mysqldump -u root -p --no-data $DATABASE_NAME \
sales_billing_agreement \
sales_billing_agreement_order \
sales_flat_creditmemo \
sales_flat_creditmemo_comment \
sales_flat_creditmemo_grid \
sales_flat_creditmemo_item \
sales_flat_invoice \
sales_flat_invoice_comment \
sales_flat_invoice_grid \
sales_flat_invoice_item \
sales_flat_order \
sales_flat_order_address \
sales_flat_order_grid \
sales_flat_order_item \
sales_flat_order_payment \
sales_flat_order_status_history \
sales_flat_quote \
sales_flat_quote_address \
sales_flat_quote_address_item \
sales_flat_quote_item \
sales_flat_quote_item_option \
sales_flat_quote_payment \
sales_flat_quote_shipping_rate \
sales_flat_shipment \
sales_flat_shipment_comment \
sales_flat_shipment_grid \
sales_flat_shipment_item \
sales_flat_shipment_track \
customer_entity \
customer_entity_datetime \
customer_entity_decimal \
customer_entity_int \
customer_entity_text \
customer_entity_varchar \
customer_flowpassword \
customer_address_entity \
customer_address_entity_datetime \
customer_address_entity_decimal \
customer_address_entity_int \
customer_address_entity_text \
customer_address_entity_varchar \
log_customer \
log_quote \
log_summary \
log_summary_type \
log_url \
log_url_info \
log_visitor \
log_visitor_info \
log_visitor_online \
report_event \
report_viewed_product_aggregated_daily \
report_viewed_product_aggregated_monthly \
report_viewed_product_aggregated_yearly \
report_viewed_product_index \
> $(date +'%d-%m-%Y')-schema-$DATABASE_NAME.sql