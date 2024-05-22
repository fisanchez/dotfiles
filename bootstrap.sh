# Thoughtbot dotfile manager
# github.com/thoughtbot/rcm

curl -LO https://thoughtbot.github.io/rcm/dist/rcm-1.3.4.tar.gz &&

# Use sha256sum with GNU coreutils, sha256 on BSD and macOS
sha=$(sha256sum rcm-1.3.4.tar.gz | cut -f1 -d' ') &&
[ "$sha" = "9b11ae37449cf4d234ec6d1348479bfed3253daba11f7e9e774059865b66c24a" ] &&

tar -xvf rcm-1.3.4.tar.gz &&
cd rcm-1.3.4 &&

./configure &&
make &&
sudo make install

