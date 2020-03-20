class CatSerializer < ActiveModel::Serializer
  attributes :id, :name, :owner

  def owner
    { owner_id: object.person.id, owner_name: object.person.name }
  end
end
