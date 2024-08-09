# sync_epics_spec.rb version 0.12.4

require "rspec"
require_relative "./sync_epics.rb"

require 'octokit'
require 'json'

describe SyncEpics do
  describe "#load_backlog" do
    it "should load a mock into memory from a file" do
      backlog = Backlog.new("./mocks/backlogs/interchaintest.json")
      expect(backlog).to be_a(Backlog)
      expect(backlog.items.count).to eq(58)
    end

    it "should list all the stories" do
      backlog = Backlog.new("./mocks/backlogs/interchaintest.json")
      expect(backlog.all.count).to eq(58)
      expect(backlog.all.first.title).to include("Interchaintest test suite should test the upgrade/update clients flow for unfreezing IBC light clients.")
      expect(backlog.all.first.status).to include("📋 Backlog")
    end

    # it "should list all the epics" do
    #   backlog = Backlog.new("./mocks/backlogs/interchaintest.json")
    #   puts Backlog.inspect()
    #   firstStory = backlog.all.first
    #   puts "************* Debug: firstStory.story_type_field = #{firstStory.inspect}"

    #   expect(firstStory.story_type_field).to include("Epic")
      # expect(backlog.epics.count).to eq(2)
      # expect(backlog.epics.find_by_number(882)).to include("EPIC: Template test should have explanations")
      # expect(backlog.epics.find_by_number(882).status).to include("☃️ Icebox")
    # end

    it "should list all the statuses" do
      backlog = Backlog.new("./mocks/backlogs/interchaintest.json")
      expect(backlog.statuses).to eq(2)
      expect(backlog.statuses).to contain_exactly("📋 Backlog", "👀 Waiting / In review")
    end

  end
end
