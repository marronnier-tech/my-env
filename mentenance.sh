cd brew
rm Brewfile
brew bundle dump
echo "complete!"
echo "The newest Brewfile is here."
echo "=============================================================="
cat Brewfile
cd ../
