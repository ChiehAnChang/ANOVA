# A study of the effect of temperature on percent shrinkage in dyeing fabrics 
# was made on two replications for each of three types of fabric in a completely 
# randomized design.The data are the percent shrinkage of two replicate fabric 
# pieces dried at each of the four temperatures

## Read the data
data = read.csv("q2data-1.csv")

model = lm(Response ~ Fabric * Temperature, data=data)
anova(model)

# Let H0 represent that there is no interaction effect.
# Based on the model, we see that the p-value is less than 0.05.
# This means that we can reject H0; this means that there is an
# interaction effect. So, the percent shrinkage in dyeing fabrics
# depends on the type of fabric differently for different 
# temperature level.

 

