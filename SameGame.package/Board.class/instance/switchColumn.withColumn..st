compute
switchColumn: firstColumn withColumn: secondColumn

	1 to: self grid height do: [ :i |
	self switchCase: firstColumn @ i with: secondColumn @ i ]