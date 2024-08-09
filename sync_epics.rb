class Backlog
  attr_reader :items, :epics, :statuses

  def initialize(file_path)
    require 'ostruct'
    require 'json'

    file = File.read(file_path)
    data = JSON.parse(file, object_class: OpenStruct)

    # Initialize items, epics, and statuses if not present
    data.items ||= []
    data.epics ||= []
    data.statuses ||= []

    @items = data.items.map { |item| OpenStruct.new(item.to_h) }
    @statuses = (@items.map(&:status).compact.uniq - ["☃️ Icebox", "🥳 Done"]).uniq
    @epics = @items.select { |item| item.story_type_field&.casecmp('epic') == 0 }
  end

  def all
    @items
  end

  def count_items
    @items.count
  end

  def count_statuses
    @statuses.count
  end

  def count_epics
    @epics.count
  end

  def unique_statuses
    @statuses
  end

  def filtered_statuses
    @statuses - ["☃️ Icebox", "🥳 Done"]
  end
end

class BacklogItem
  attr_reader :number, :title, :status, :story_type_field

  def initialize(number, title, status, story_type_field)
    @number = number
    @title = title
    @status = status
    @story_type_field = story_type_field
  end
end

class SyncEpics
  def load_backlog(file_path)
    Backlog.new(file_path)
  end
end

class Array
  def find_by_number(number)
    find { |item| item.number == number }
  end
end
