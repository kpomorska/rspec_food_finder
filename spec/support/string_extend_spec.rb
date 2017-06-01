describe 'String' do

  describe "#titleize" do

    it "capitalizes each word in a string" do
      expect('programming language'.titleize).to eq('Programming Language')
    end
    
    it "works with single-word strings" do
      expect('programming'.titleize).to eq('Programming')
    end
    
    it "capitalizes all uppercase strings" do
      expect('pROGRAmming langUAGe'.titleize).to eq('Programming Language')
    end
    
    it "capitalizes mixed-case strings" do
      expect("ALL UPPERCASE WORDS".titleize).to eq("All Uppercase Words")
    end
    
  end
  
  describe '#blank?' do

    it "returns true if string is empty" do
      expect(''.blank?).to be true
    end

    it "returns true if string contains only spaces" do
      expect('   '.blank?).to be true
    end

    it "returns true if string contains only tabs" do
    # Get a tab using a double-quoted string with \t
    # example: "\t\t\t"
      expect("\t\t".blank?).to be true
    end

    it "returns true if string contains only spaces and tabs" do
      expect("\t\t  ".blank?).to be true
    end
    
    it "returns false if string contains a letter" do
      expect("asdas".blank?).to be false
    end

    it "returns false if string contains a number" do
      expect("12312".blank?).to be false
    end
    
  end
  
end
