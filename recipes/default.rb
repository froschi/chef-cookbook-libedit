include_recipe "libbsd"

packages = Array.new

case node[:lsb][:codename]
when "lucid"
  include_recipe "libncurses"

  packages |= %w/
    libedit2
  /
when "precise"
  include_recipe "libtinfo"

  packages |= %w/
    libedit2
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
