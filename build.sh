#!/usr/bin/env bash
set -euo pipefail

echo "Starting reproducible build..."
if [ -f renv.lock ]; then
  echo "Restoring R packages from renv.lock..."
  R -e "if (!requireNamespace('renv', quietly=TRUE)) install.packages('renv', repos='https://cloud.r-project.org'); renv::restore()"
else
  echo "No renv.lock found — skipping package restore."
fi

echo "Rendering Quarto master document..."
quarto render 1_experiment/1_master.qmd

echo "Build complete. Outputs are under 1_experiment/Rendered_files or the Quarto default output location."
