CREATE PROCEDURE Compare_Current_to_Bought (
	IN coin_name INT, 
	OUT truth_value BOOLEAN
)
BEGIN
	SET @current_price = (
		SELECT price_feed.price
		FROM price_feed, wallets
		WHERE price_feed.coin = coin_name
		AND price_feed.exchange = wallets.exchange
		AND wallets.coin = coin_name
		AND date = (
			SELECT max(price_feed.date)
			FROM price_feed, wallets
			WHERE price_feed.coin = coin_name
			AND wallets.coin = coin_name
			AND price_feed.exchange = wallets.exchange 
		)
	);


END;
//

DELIMITER ;