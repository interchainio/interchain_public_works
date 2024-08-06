require "rspec"
require_relative "./sync_epics.rb"

require 'octokit'
require 'json'

describe SyncEpics do
  describe "#load_backlog" do 
  it "should load a mock into memory from a file" do
    backlog = Backlog.new("./mocks/backlogs/interchaintest.json")
    expect(backlog).to be_a(Backlog)
    expect(backlog.items).to eq(58)
  end
end