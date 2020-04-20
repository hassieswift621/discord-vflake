module dsnowflake

// parse_i64 parses an i64 to a snowflake.
pub fn parse_i64(id i64) &Snowflake {
	return dsnowflake.new(u64(id))
}

// parse_u64 parses a u64 to a snowflake.
pub fn parse_u64(id u64) &Snowflake {
	return dsnowflake.new(id)
}
