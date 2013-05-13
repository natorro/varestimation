############ NASDAQ #############
getSymbols("^IXBK",from="2004-10-26",to="2009-01-22")
nasdaq1 <- as.numeric(IXBK$IXBK.Close)
getSymbols("^IXBK",from="2004-10-25",to="2009-01-21")
nasdaq2 <- as.numeric(IXBK$IXBK.Close)



length(nasdaq1)

#	Compute the log returns 
returns_nasdaq<- (nasdaq1-nasdaq2)

# Plot some basic graphs
# Use this in case of multiple graphs par(mfrow=c(1,2))
#plot(nasdaq1,pch=20,main="NYSE", type="l")
#plot(returns_nasdaq,pch=20,main="Nasdaq (net returns)", type="l")

basicStats(returns_nasdaq)

############ NYSE ############# 
getSymbols("^NY",from="2004-01-13",to="2009-01-22")
ny1 <- as.numeric(NY$NY.Close)
getSymbols("^NY",from="2004-01-12",to="2009-01-21")
ny2 <- as.numeric(NY$NY.Close)



length(ny1)

#	Compute the log returns 
returns_ny <- (ny1-ny2)

# Plot some basic graphs
# Use this in case of multiple graphs par(mfrow=c(1,2))
#plot(ny1,pch=20,main="NYSE", type="l")
#plot(returns_ny,pch=20,main="NYSE (net returns)", type="l")

basicStats(returns_ny)

############ S&P CNX NIFTY ############# 
getSymbols("^NSEI",from="2005-01-02",to="2009-01-21")
nsei1 <- as.numeric(NSEI$NSEI.Close)
getSymbols("^NSEI",from="2005-01-01",to="2009-01-20")
nsei2 <- as.numeric(NSEI$NSEI.Close)



length(nsei1)
length(nsei2)

#	Compute the log returns 
returns_nsei <- (nsei1-nsei2)

# Plot some basic graphs
# Use this in case of multiple graphs par(mfrow=c(1,2))
#plot(ny1,pch=20,main="NYSE", type="l")
#plot(returns_ny,pch=20,main="NYSE (net returns)", type="l")

basicStats(returns_nsei)
