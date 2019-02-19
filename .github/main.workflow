workflow "New workflow" {
  on = "push"
  resolves = ["GitHub Pages Deploy"]
}

action "GitHub Pages Deploy" {
  uses = "maxheld83/ghpages@v0.2.0"
  secrets = ["GITHUB_TOKEN"]
}
