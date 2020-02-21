library(AmesHousing)
library(tidymodels)

ames <- AmesHousing::make_ames()

lm_ames <- lm(Sale_Price ~ Gr_Liv_Area, data = ames)

broom::tidy(lm_ames)

# tidymodels
# parsnip

library(parsnip)

# pick a model, linear regression in this case
# pick an engine, lm in this case
# pick a mode

lm_spec <- parsnip::linear_reg() %>%
  parsnip::set_engine("lm")

lm_fit <- parsnip::fit(lm_spec, 
             Sale_Price ~ Gr_Liv_Area, 
             data = ames)

broom::tidy(lm_fit)

