# An industrial psychologist working for a large corporation designs a study to evaluate the
# effect of background music on the typing efficiency of secretaries. The psychologist selects a random sample
# of seven secretaries from the secretarial pool. Each subject is exposed to three types of background music:
# no music, classical music, and hard rock music. The subject is given a standard typing test that combines
# an assessment of speed with a penalty for typing errors. The particular order of the three experiments
# is randomized for each of the seven subjects. The results are given here, with a high score indicating
# a superior performance. This is a special type of randomized complete block design in which a single
# experimental unit serves as a block and receives all treatments

data = read.csv("q1data-1.csv")
attach(data)

model = lm(Response~Music+factor(Subject), data=data)

anova(model)


# Based on the result of anova, we claim that the music effect is significant.
# In the meantime, blocking may help to reduce the experiment error.