#a)
xmin <- c(23, 20.5, 28.2, 20.3, 22.4, 17.2, 18.2)
xmax <- c(25, 22.8, 31.2, 27.3, 28.4, 20.2, 24.1)

#b)
xmax-xmin

#c)
mean(xmin)
mean(xmax)

#d)
## Better write xmin[xmin < mean(xmin)]. This makes the code easier to read.
xmin[xmin<21.4]

#e)
## This works but 'which' is not necessary here
xmax[which(xmax>25.57143)]

#f)
xmin
str(xmin)
dayNames <- c('03Mon18', '04Tue18', '05Wed18', '06Thu18', '07Fri18', '08Sat18', '09Sun18')
names(xmin) <- dayNames
str(xmin)

xmax
str(xmax)
names(xmax)<-dayNames
str(xmax)


#g)
temperatures <- data.frame(
  df.xmin = xmin,
  df.xmax = xmax
)
temperatures


#h)
temperatures <- within(temperatures, {
	xminFahrenheit <-9/5*xmin + 32
})
temperatures

#i)
## You can refer to 
## the xminFahrenheit column in temperatures in 
## this way: temperatures$xminFahrenheit or temperatures[, 'xminFahrenheit']

xminFahrenheit <- c(73.40, 68.90, 82.76, 68.54, 72.32, 62.96, 64.76)
Fahrenheit <- data.frame(
  df.xminFahrenheit = xminFahrenheit
)
Fahrenheit

#j-i
Fahrenheitday <- data.frame(
  df.xminFahrenheit = xminFahrenheit[c(1:5)]
)
Fahrenheitday

#j-ii
dayFh <- data.frame(
  df.xminFahrenheit = xminFahrenheit[c(-6,-7)]
)
dayFh

## Easier way:

Fahrenheit[1:5, ]
Fahrenheit[-(6:7), ]

