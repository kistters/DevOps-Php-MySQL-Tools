
DATABASE_NAME=community

mysqldump -u root -p --no-data dbname > $(date +'%d-%m-%Y')-$DATABASE_NAME-schema.sql

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
> $(date +'%d-%m-%Y')-$DATABASE_NAME-dump.sql