require "./lib/script"

describe "#ceasar_cipher" do
  it "returns empty string" do
    expect(ceasar_cipher('', 2)).to eql('')
  end

  it "returns empty string" do
    expect(ceasar_cipher('', 0)).to eql('')
  end

  it "returns the same string" do
    expect(ceasar_cipher('String!', 0)).to eql('String!')
  end

  it "returns shifted lowcase string" do
    expect(ceasar_cipher('what a string', 5)).to eql('bmfy f xywnsl')
  end

  it "returns shifted upcase string" do
    expect(ceasar_cipher('WHAT A STRING', 5)).to eql('BMFY F XYWNSL')
  end

  it "returns shifted mixedcase string" do
    expect(ceasar_cipher('What A string!', 5)).to eql('Bmfy F xywnsl!')
  end
end