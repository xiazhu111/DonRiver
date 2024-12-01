#import libraries
library(ggplot2)

#plastic flux ~ discharge regression, for microplastic
#(discharge [m3/s], plastic flux [count/s])
#(1.32, 7348.00)
#(3.94, 17795.67)
#(10.5, 39900.00)
#(13.4, 102286.67)
#(8.82, 103194.00)
#(3.92, 34953.33)
plasticflux <- c(7348.00, 17795.67, 39900.00, 102286.67, 103194.00, 34953.33)
discharge <- c(1.32, 3.94, 10.5, 13.4, 8.82, 3.92)
#plot
ggplot(mapping = aes(x=discharge,y=plasticflux)) +
  geom_point(color="#2980B9",size=4) +
  geom_smooth(method=lm, color="gray")
#fit a linear regression
plastic_discharge.lm <- lm(plasticflux~discharge)
summary(plastic_discharge.lm)
#find confidence interval for slope (B1) and intercept
confint(plastic_discharge.lm)

#macroplastic item count ~ pre-to-peak ratio regression, for macroplastic
