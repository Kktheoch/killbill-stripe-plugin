CREATE TABLE `stripe_payment_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kb_account_id` varchar(255) NOT NULL,
  `kb_payment_method_id` varchar(255) DEFAULT NULL,
  `stripe_customer_id` varchar(255) DEFAULT NULL,
  `stripe_card_id_or_token` varchar(255) NOT NULL,
  `cc_first_name` varchar(255) DEFAULT NULL,
  `cc_last_name` varchar(255) DEFAULT NULL,
  `cc_type` varchar(255) DEFAULT NULL,
  `cc_exp_month` int(11) DEFAULT NULL,
  `cc_exp_year` int(11) DEFAULT NULL,
  `cc_last_4` int(11) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_stripe_payment_methods_on_kb_account_id` (`kb_account_id`),
  KEY `index_stripe_payment_methods_on_kb_payment_method_id` (`kb_payment_method_id`)
) ENGINE=InnoDB CHARACTER SET utf8 COLLATE utf8_bin;

CREATE TABLE `stripe_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stripe_response_id` int(11) NOT NULL,
  `api_call` varchar(255) NOT NULL,
  `kb_payment_id` varchar(255) NOT NULL,
  `stripe_txn_id` varchar(255) NOT NULL,
  `amount_in_cents` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_stripe_transactions_on_kb_payment_id` (`kb_payment_id`)
) ENGINE=InnoDB CHARACTER SET utf8 COLLATE utf8_bin;

CREATE TABLE `stripe_responses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `api_call` varchar(255) NOT NULL,
  `kb_payment_id` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `authorization` varchar(255) DEFAULT NULL,
  `fraud_review` tinyint(1) DEFAULT NULL,
  `test` tinyint(1) DEFAULT NULL,
  `params_id` varchar(255) DEFAULT NULL,
  `params_object` varchar(255) DEFAULT NULL,
  `params_created` varchar(255) DEFAULT NULL,
  `params_livemode` varchar(255) DEFAULT NULL,
  `params_paid` varchar(255) DEFAULT NULL,
  `params_amount` varchar(255) DEFAULT NULL,
  `params_currency` varchar(255) DEFAULT NULL,
  `params_refunded` varchar(255) DEFAULT NULL,
  `params_card_id` varchar(255) DEFAULT NULL,
  `params_card_object` varchar(255) DEFAULT NULL,
  `params_card_last4` varchar(255) DEFAULT NULL,
  `params_card_type` varchar(255) DEFAULT NULL,
  `params_card_exp_month` varchar(255) DEFAULT NULL,
  `params_card_exp_year` varchar(255) DEFAULT NULL,
  `params_card_fingerprint` varchar(255) DEFAULT NULL,
  `params_card_customer` varchar(255) DEFAULT NULL,
  `params_card_country` varchar(255) DEFAULT NULL,
  `params_card_name` varchar(255) DEFAULT NULL,
  `params_card_address_line1` varchar(255) DEFAULT NULL,
  `params_card_address_line2` varchar(255) DEFAULT NULL,
  `params_card_address_city` varchar(255) DEFAULT NULL,
  `params_card_address_state` varchar(255) DEFAULT NULL,
  `params_card_address_zip` varchar(255) DEFAULT NULL,
  `params_card_address_country` varchar(255) DEFAULT NULL,
  `params_card_cvc_check` varchar(255) DEFAULT NULL,
  `params_card_address_line1_check` varchar(255) DEFAULT NULL,
  `params_card_address_zip_check` varchar(255) DEFAULT NULL,
  `params_captured` varchar(255) DEFAULT NULL,
  `params_refunds` varchar(255) DEFAULT NULL,
  `params_balance_transaction` varchar(255) DEFAULT NULL,
  `params_failure_message` varchar(255) DEFAULT NULL,
  `params_failure_code` varchar(255) DEFAULT NULL,
  `params_amount_refunded` varchar(255) DEFAULT NULL,
  `params_customer` varchar(255) DEFAULT NULL,
  `params_invoice` varchar(255) DEFAULT NULL,
  `params_description` varchar(255) DEFAULT NULL,
  `params_dispute` varchar(255) DEFAULT NULL,
  `params_metadata` varchar(255) DEFAULT NULL,
  `params_error_type` varchar(255) DEFAULT NULL,
  `params_error_message` varchar(255) DEFAULT NULL,
  `avs_result_code` varchar(255) DEFAULT NULL,
  `avs_result_message` varchar(255) DEFAULT NULL,
  `avs_result_street_match` varchar(255) DEFAULT NULL,
  `avs_result_postal_match` varchar(255) DEFAULT NULL,
  `cvv_result_code` varchar(255) DEFAULT NULL,
  `cvv_result_message` varchar(255) DEFAULT NULL,
  `success` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB CHARACTER SET utf8 COLLATE utf8_bin;
