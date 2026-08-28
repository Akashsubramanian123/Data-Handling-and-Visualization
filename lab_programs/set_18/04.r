sales_ts <- ts(c(15000, 18000, 22000, 20000, 23000))
acf(sales_ts, main = "Autocorrelation Plot of Monthly Sales")