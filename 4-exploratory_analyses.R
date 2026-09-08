#============================================================
# Exploratory test(E1)
#============================================================


## Prereg I4: Exploratory research questions
#---------------------------------------------------------------

# E1: The new (more modern) awe inducing video leads to higher awe ratings compared to the old awe inducing video.
t_E1 <- t.test(
  dat$awe_scale[dat$condition == "exp_new"],
  dat$awe_scale[dat$condition == "exp_old"],
  alternative = "greater",
  var.equal = TRUE
)

t_E1
effectsize(t_E1)
