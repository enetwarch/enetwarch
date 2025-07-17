#!/bin/bash
set -euo pipefail

function main() {
  readonly api="https://github-readme-stats.vercel.app"
  readonly username="enetwarch"
  
  directory="$(git rev-parse --show-toplevel)/assets"
  readonly directory

  readonly stats="${directory}/stats.svg"
  readonly langs="${directory}/langs.svg"

  readonly -a all_options=(
    "theme=transparent" # light and dark mode adaptability.
    "hide_border=true" # meshes with the transparent background.
    "layout=compact" # design option to make the cards condensed.
    "include_all_commits=true" # show all information in the cards.
    "count_private=true" # attempts to count in private repos.
  )

  readonly -a stats_options=(
    "line_height=24" # makes the height similar to langs card.
  )

  readonly -a langs_options=(
    "langs_count=8" # show multiple top used languages.
    "hide=markdown" # hides minor languages from the equation.
  )

  stats_params=$(printf "&%s" "${all_options[@]}" "${stats_options[@]}")
  readonly stats_params

  langs_params=$(printf "&%s" "${all_options[@]}" "${langs_options[@]}")
  readonly langs_params

  mkdir -p "${directory}"
  curl -o "${stats}" "${api}/api?username=${username}${stats_params}"
  curl -o "${langs}" "${api}/api/top-langs?username=${username}${langs_params}"
}

main "$@"
