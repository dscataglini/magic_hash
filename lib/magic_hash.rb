require "magic_hash/version"

class MagicHash 
  def self.new()
    Hash.new(&(p = lambda{|hsh, key| hsh[key] = Hash.new(&p)}))
  end
end