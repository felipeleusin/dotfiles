ln -sf ~/dotfiles/spin/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/spin/.zshrc ~/.zshrc

# Only run nested steps in Spin workspaces.
if [[ "$SPIN" = 1 ]]
then
  # Only run nested steps in Spin + shopify/shopify workspaces.
  if [[ "$SPIN_REPO_SOURCE_PATH" = "/src/github.com/shopify/shopify" ]]
  then
    cartridge insert felipeleusin/returns-team-bootstrap
    . /cartridges/email-team-bootstrap/setup.sh
  fi
fi