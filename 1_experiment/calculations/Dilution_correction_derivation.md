# Derivation of the dilution correction factor, $K_d$

This note derives, from first principles, the dilution correction factor $K_d$ used throughout [`food_calculator.qmd`](food_calculator.qmd) to size the algal feed volumes. It expands on the short derivation given in that file's [Dilution correction](food_calculator.qmd#L287) section, showing every algebraic step.

## 1. The problem

Feeding a Daphnia jar means adding a volume of algal culture, $V_{\mathrm{feed},d}$, to a jar that already holds $V_{\mathrm{jar}}$ of liquid. That addition does two things at once:

1. it delivers carbon to the jar, and
2. it increases the jar's total liquid volume from $V_{\mathrm{jar}}$ to $V_{\mathrm{jar}} + V_{\mathrm{feed},d}$.

Because of (2), the carbon concentration actually achieved in the jar is

$$
\text{achieved concentration} = \frac{\text{carbon delivered}}{V_{\mathrm{jar}} + V_{\mathrm{feed},d}},
$$

not $\text{carbon delivered} / V_{\mathrm{jar}}$. A calculation that ignores this self-dilution will under-shoot the target concentration. $K_d$ is the factor that inflates the naive feed volume so the *achieved* concentration, after dilution, still hits the target.

## 2. The target and the naive volume

The target is a total carbon concentration of $N_{\mathrm{days}} F_{\mathrm{feed}} E_{\mathrm{food}}$ per litre of jar (feeding rate, times the number of days the food must last, times the extra-food margin).

For diet $d$, the *naive* feed volume, $V_{\mathrm{feed},d}^{\,\mathrm{naive}}$, is the volume that would deliver exactly this target if it were measured against $V_{\mathrm{jar}}$ alone (i.e. if dilution were ignored). Since alga $a$ supplies a proportion $P_{\mathrm{alga},d,a}$ of diet $d$'s carbon and has carbon density $D_a$, the volume of alga $a$ needed per litre of jar is $P_{\mathrm{alga},d,a} N_{\mathrm{days}} F_{\mathrm{feed}} E_{\mathrm{food}} / D_a$. Summing over all algae in the diet gives the naive volume as a fraction of $V_{\mathrm{jar}}$:

$$
x_d = N_{\mathrm{days}} F_{\mathrm{feed}} E_{\mathrm{food}} \sum_{a=1}^{N_{\mathrm{algae}}} \frac{P_{\mathrm{alga},d,a}}{D_a}, \qquad V_{\mathrm{feed},d}^{\,\mathrm{naive}} = x_d \, V_{\mathrm{jar}}.
$$

By construction, adding $V_{\mathrm{feed},d}^{\,\mathrm{naive}}$ of diet $d$ delivers exactly the target amount of carbon, $N_{\mathrm{days}} F_{\mathrm{feed}} E_{\mathrm{food}} \, V_{\mathrm{jar}}$, *if dilution is ignored*.

## 3. Carbon delivered by an arbitrary volume of the mix

Diet $d$ always has the same composition (the proportions $P_{\mathrm{alga},d,a}$ and densities $D_a$ don't change with how much you add), so the carbon delivered per unit volume of the mix, $C_{\mathrm{mix},d}$, is a fixed property of the diet. It can be read off the naive calculation above, since both the carbon delivered and the volume added scale together:

$$
C_{\mathrm{mix},d} = \frac{\text{carbon delivered by } V_{\mathrm{feed},d}^{\,\mathrm{naive}}}{V_{\mathrm{feed},d}^{\,\mathrm{naive}}} = \frac{N_{\mathrm{days}} F_{\mathrm{feed}} E_{\mathrm{food}} \, V_{\mathrm{jar}}}{x_d \, V_{\mathrm{jar}}} = \frac{N_{\mathrm{days}} F_{\mathrm{feed}} E_{\mathrm{food}}}{x_d}.
$$

So the carbon delivered by any actual volume $V_{\mathrm{feed},d}$ of diet $d$ is $C_{\mathrm{mix},d} \, V_{\mathrm{feed},d}$.

## 4. Solving the mass balance

The actual feed volume must satisfy the achieved-concentration equation from Section 1, with the target on the right-hand side:

$$
\frac{C_{\mathrm{mix},d} \, V_{\mathrm{feed},d}}{V_{\mathrm{jar}} + V_{\mathrm{feed},d}} = N_{\mathrm{days}} F_{\mathrm{feed}} E_{\mathrm{food}}.
$$

Substituting $C_{\mathrm{mix},d} = N_{\mathrm{days}} F_{\mathrm{feed}} E_{\mathrm{food}} / x_d$ from Section 3 and cancelling the common factor $N_{\mathrm{days}} F_{\mathrm{feed}} E_{\mathrm{food}}$ from both sides:

$$
\frac{V_{\mathrm{feed},d}}{x_d \left(V_{\mathrm{jar}} + V_{\mathrm{feed},d}\right)} = 1
\quad\Longrightarrow\quad
V_{\mathrm{feed},d} = x_d \, V_{\mathrm{jar}} + x_d \, V_{\mathrm{feed},d}.
$$

Collecting the $V_{\mathrm{feed},d}$ terms on one side:

$$
V_{\mathrm{feed},d} \left(1 - x_d\right) = x_d \, V_{\mathrm{jar}}
\quad\Longrightarrow\quad
V_{\mathrm{feed},d} = \frac{x_d}{1 - x_d} \, V_{\mathrm{jar}}.
$$

## 5. The correction factor

Writing the result as the naive volume times a correction factor, $V_{\mathrm{feed},d} = x_d \, K_d \, V_{\mathrm{jar}} = V_{\mathrm{feed},d}^{\,\mathrm{naive}} K_d$, gives:

$$
K_d = \frac{1}{1 - x_d} = \frac{1}{1 - N_{\mathrm{days}} F_{\mathrm{feed}} E_{\mathrm{food}} \displaystyle\sum_{a=1}^{N_{\mathrm{algae}}} \frac{P_{\mathrm{alga},d,a}}{D_a}}.
$$

This is the factor defined in [`food_calculator.qmd`](food_calculator.qmd#L292-L297), and it is the same $K_d$ that scales $V_{\mathrm{alga}}$, $V_{\mathrm{mix},d}$ and $V_{\mathrm{feed},d}$ throughout the file.

## 6. Interpretation

- **No dilution effect ($x_d = 0$):** $K_d = 1$, i.e. no correction is needed. This happens only in the limit where the feed volume is negligible compared with $V_{\mathrm{jar}}$.
- **Increasing dilution ($0 < x_d < 1$):** $K_d > 1$, so the naive volume is always scaled *up*. This matches the physical picture: since the feed itself dilutes the jar, you always need to add more than the naive calculation suggests, never less.
- **Limiting case ($x_d \to 1$):** $K_d \to \infty$. At $x_d = 1$, the naive feed volume already equals $V_{\mathrm{jar}}$, meaning the diet is being diluted as fast as carbon is added to it; no finite volume can reach the target concentration, and the calculator's premise (that the target is reachable by adding culture to the jar) breaks down.
- **$x_d > 1$:** $K_d$ becomes negative, which is not physically meaningful and signals that the requested feeding regime cannot be met by this diet composition at all.

This is why the parameter table in `food_calculator.qmd` lists $K_d \in [\text{≥}1)$: since $x_d \geq 0$ always, $K_d$ can only ever inflate the naive volume, never shrink it.

## 7. Correspondence to the R code

In the Shiny app's server logic ([`food_calculator.qmd`](food_calculator.qmd#L170-L171)), $x_d$ and $K_d$ are computed as:

```r
target_conc <- Daphnia_algae_C_ad_libitum_mg_per_L_per_day * N_days_per_feeding_event * E_food
dilution_correction <- 1 / (1 - target_conc * alga_per_carbon)
```

where `target_conc` is $N_{\mathrm{days}} F_{\mathrm{feed}} E_{\mathrm{food}}$ and `alga_per_carbon` is $\sum_a P_{\mathrm{alga},d,a} / D_a$, so `target_conc * alga_per_carbon` is $x_d$ and `dilution_correction` is $K_d$. This vector is then multiplied into every volume calculation that follows — `V_alga`, `V_mix` and `V_feed_per_jar` — so each one already accounts for self-dilution.
