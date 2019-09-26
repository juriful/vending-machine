workflow "テスト" {
  on = "push"
  resolves = ["new-action"]
}

action "nodejs.yml" {
  uses = "owner/repo/nodejs.yml"
}

action "new-action" {
  uses = "owner/repo/path@ref"
}
