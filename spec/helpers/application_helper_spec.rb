require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
  describe "#display_karaoke_machine" do
    it "should show link to machine" do
      machine = FactoryGirl.create(:karaoke_machine)
      bar = FactoryGirl.create(:karaoke_place, karaoke_machine: machine)
      expect(helper.display_karaoke_machine(bar)).to eq link_to(machine.name, machine)
    end

    it "should show unknown on missing" do
      bar = FactoryGirl.create(:karaoke_place)
      expect(helper.display_karaoke_machine(bar)).to eq "<em>unknown</em>"
    end
  end
end
