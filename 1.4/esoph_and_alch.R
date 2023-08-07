# q 1
df <- esoph
nrow(df)


# q 2
all_cases <- sum(df$ncases)
all_cases


# q 3
all_controls <- sum(df$ncontrols)
all_controls


# q 4
max(df$alcgp)
max_alco_group <- subset(df, alcgp == max(alcgp))
sum(max_alco_group$ncases)/(sum(max_alco_group$ncontrols)+sum(max_alco_group$ncases))
sum(max_alco_group$ncases)
sum(max_alco_group$ncontrols)


# q 5
min_alco_group <- subset(df, alcgp == min(alcgp))
sum(min_alco_group$ncases)/(sum(min_alco_group$ncontrols)+sum(min_alco_group$ncases))

# q 6
sum(df$ncases)
case_df <- subset(df, ncases > 0 & tobgp != "0-9g/day")
sum(case_df$ncases)
sum(case_df$ncases)/sum(df$ncases)

# q 7
sum(df$ncontrols)
control_df <- subset(df, ncontrols > 0 & tobgp != "0-9g/day")
sum(control_df$ncontrols)
sum(control_df$ncontrols)/sum(df$ncontrols)


# q 8
case_alco_df <- subset(df, ncases > 0 & alcgp == max(alcgp))
sum(case_alco_df$ncases)
sum(case_alco_df$ncases)/sum(df$ncases)

# q 9
case_tobaco_df <- subset(df, ncases > 0 & tobgp == max(tobgp))
sum(case_tobaco_df$ncases)
sum(case_tobaco_df$ncases)/sum(df$ncases)

# q 10
case_high <- subset(df, ncases > 0 & tobgp == max(tobgp) & alcgp == max(alcgp))
sum(case_high$ncases)
sum(case_high$ncases)/sum(df$ncases)

# q 11
case_high_or <- subset(df, ncases > 0 & tobgp == max(tobgp) | alcgp == max(alcgp))
sum(case_high_or$ncases)
sum(case_high_or$ncases)/sum(df$ncases)


# q 12
controls_high_alc <- subset(df, ncontrols > 0 & alcgp == max(alcgp))
sum(controls_high_alc$ncontrols)/sum(df$ncontrols)


# q 13
r_alco_cases = sum(case_alco_df$ncases)/sum(df$ncases)
r_alco_controls = sum(controls_high_alc$ncontrols)/sum(df$ncontrols)
r_alco_cases/r_alco_controls


# q 14
controls_high_tobaco <- subset(df, ncontrols > 0 & tobgp == max(tobgp))
sum(controls_high_tobaco$ncontrols)/sum(df$ncontrols)


# q 15
controls_high <- subset(df, ncontrols > 0 & tobgp == max(tobgp) & alcgp == max(alcgp))
sum(controls_high$ncontrols)
sum(controls_high$ncontrols)/sum(df$ncontrols)


# q 16
controls_high_or <- subset(df, ncontrols > 0 & tobgp == max(tobgp) | alcgp == max(alcgp))
sum(controls_high_or$ncontrols)
sum(controls_high_or$ncontrols)/sum(df$ncontrols)


# q 17
r_or_case = sum(case_high_or$ncases)/sum(df$ncases)
r_or_controls = sum(controls_high_or$ncontrols)/sum(df$ncontrols)
r_or_case/r_or_controls
