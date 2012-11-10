# encoding utf-8

require "yatr"

ru = "привет"
en = "hi"

describe "Translate" do
  it "valide from to" do
    ru.translate("ru", "en").should == en
  end

  it "valide to" do
    ru.translate("en").should == en
  end

  it "invalide from to" do
    ru.translate("foo", "bar").should == ru
  end

  it "invalide to" do
    ru.translate("foo").should == ru
  end  
end
