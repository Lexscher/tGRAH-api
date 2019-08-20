class ListSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :project_id
  attribute :task do |list|
    list.tasks
  end
end
