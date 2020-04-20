module dsnowflake

import strconv

// parse_epoch_ms parses an epoch milliseconds timestamp to a snowflake.
pub fn parse_epoch_ms(epoch u64) &?Snowflake {
	if epoch < discord_epoch {
		return error('dsnowflake: epoch cannot be earlier than the Discord epoch')
	}
	return new((epoch - discord_epoch) << 22)
}

// parse_epoch_s parses an epoch seconds timestamp to a snowflake.
pub fn parse_epoch_s(epoch u64) &?Snowflake {
	return parse_epoch_ms(epoch * 1000)
}

// parse_i64 parses an i64 to a snowflake.
pub fn parse_i64(id i64) &Snowflake {
	return new(u64(id))
}

// parse_u64 parses a u64 to a snowflake.
pub fn parse_u64(id u64) &Snowflake {
	return new(id)
}

// parse_string parses a string to a snowflake.
pub fn parse_string(id string) &Snowflake {
	// TODO: Return error once strconv returns errors.
	i := strconv.parse_uint(id, 10, 64)
	return new(i)
}
