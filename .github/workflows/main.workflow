workflow "テスト" {
  on = "push"
  resolves = ["new-action"]
}

action "nodejs.yml" {
  uses = "./nodejs.yml"
}
