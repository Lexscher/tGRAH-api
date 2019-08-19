class ProjectSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :user_id

  attributes :user do |project|
    project.user.name
  end
end
