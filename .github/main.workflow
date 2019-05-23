workflow "Deploy dist to gh-pages on push" {
  on = "push"
  resolves = ["GitHub Pages Deploy"]
}

action "GitHub Pages Deploy" {
  uses = "maxheld83/ghpages@v0.2.0"
  env = {
    BUILD_DIR = "dist/"
  }
  secrets = ["GH_PAT"]
}
