compute
switchColumn: firstColumn withColumn: secondColumn

	1 to: self grid height do: [ :i |
	self switchBox: firstColumn @ i with: secondColumn @ i ]