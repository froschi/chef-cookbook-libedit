packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    libedit2
  /
when "precise"
  packages |= %w/
    libedit2
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
