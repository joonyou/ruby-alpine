curl -O https://cache.ruby-lang.org/pub/ruby/2.3/ruby-2.3.1.tar.gz
tar xvzf ruby-2.3.1.tar.gz
rm -rf ruby-2.3.1.tar.gz

cd ruby-2.3.1
./configure
make && make install
cd ..
rm -rf ruby-2.3.1
mkdir -p /usr/local/etc
echo "gem: --no-ri --no-rdoc
install: --no-ri --no-rdoc
update: --no-ri --no-rdoc" > /usr/local/etc/gemrc
gem install bundler pry pg --no-ri --no-rdoc
