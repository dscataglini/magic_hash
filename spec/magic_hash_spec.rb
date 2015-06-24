require 'magic_hash'

describe Hash do
  it "should raise when not initializing a key" do
    expect { Hash.new[:foo][:bar] = :baz }.to raise_error(NoMethodError)
  end
end

describe MagicHash do
  it "shouldn't raise when not initializing a key" do
    expect { MagicHash.new[:foo][:bar] = :baz }.not_to raise_error
  end
end