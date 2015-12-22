require 'spec_helper'

describe OmniAuth::Hattrick::XmlParser do
   subject do
     OmniAuth::Hattrick::XmlParser.new(xml)
   end
   
   describe "#parse" do

    it "has the correct user id" do
      expect(subject.parse[:user_id]).to eq("8981311")
    end

    it "has the username" do
      expect(subject.parse[:username]).to eq("Mod-jd")
    end

   end

   def xml
     File.read(File.expand_path('../../support/fixtures/manager_compendium.xml', __FILE__))
   end
end
