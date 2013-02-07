maintainer       "Jan Andersson"
maintainer_email "jan.andersson@gmail.com"
license          "All rights reserved"
description      "Dotfiles for various uses"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.0"

%w( vim ).each do |cookbook|
  depends cookbook
end
