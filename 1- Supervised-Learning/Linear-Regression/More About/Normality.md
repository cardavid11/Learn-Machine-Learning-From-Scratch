# Normality

Normality is a critical assumption in Linear Regression and many statistical models. It refers to the condition where the residuals (errors) from the model follow a normal distribution. In simpler terms, it means that the distribution of the residuals should resemble a bell-shaped, symmetrical curve with a central mean value.

**Key Points:**

- **Normal Distribution:** In a normal distribution, data is symmetrically distributed around a central mean (average) value, forming a bell-shaped curve. The majority of observations cluster near the mean, with fewer observations in the tails.

- **Importance in Linear Regression:** Normality is a fundamental assumption because it enables valid hypothesis testing and the calculation of reliable confidence intervals for model coefficients. Violating this assumption can lead to biased parameter estimates and incorrect statistical inferences.

- **Checking Normality:** Normality of residuals can be assessed through various methods:
   - **Histograms:** Plotting a histogram of residuals and visually inspecting its shape for resemblance to a bell curve.
   - **Q-Q Plots (Quantile-Quantile Plots):** Comparing the quantiles of residuals against quantiles of a theoretical normal distribution. A straight line in a Q-Q plot indicates normality.
   - **Statistical Tests:** Formal tests like the Shapiro-Wilk test or Anderson-Darling test can be used to assess normality, but their results may be sensitive to sample size.

- **Transformations:** When residuals do not follow a normal distribution, data transformations (e.g., logarithmic, square root) can be applied to achieve normality.

- **Consequences of Non-Normality:** Violating the normality assumption can lead to inaccurate significance tests for model coefficients, potentially resulting in incorrect conclusions about predictors' significance. Prediction intervals may also become unreliable.

While Linear Regression can tolerate some deviations from normality, especially with large sample sizes, addressing non-normality through data transformations or robust regression techniques can enhance the model's validity.

In summary, normality is a foundational assumption in Linear Regression, ensuring that residuals follow a normal distribution. Upholding this assumption helps maintain the reliability of the model's statistical inferences and predictions.
