y <-c(10,14,10,3,3,1,7,12,9,3,8,5,20,26,20,20,14,20,5,8,14,14,18,15,12,17,12,18,19,13)
a <- factor(c(1,2,3, 1,2,4, 1,3,6, 1,4,5, 1,5,6, 2,3,5, 2,4,6, 2,5,6,
              3,4,5, 3,4,6))
k <- 3
b <- factor(rep(1:10, each=k))
depress <- data.frame(rating = y, practitioner= a, patient = b)
depress

# If we want to see the treament effect which is the effect of practitioner,
# then we need to put patient first and then practitioner
anova(lm(rating ~ patient + practitioner, data=depress))
# Since the p-value is greate than 0.05, we FTR H0; where H0 represents
# that there is no treatment effect.

# If we want to see the blocking effect which is the effect of patient,
# then we need to put the practitioner first then patient
anova(lm(rating ~ practitioner + patient, data=depress))

# Since the p-value is less than 0.05, this means that blocking effect is
# significant.



