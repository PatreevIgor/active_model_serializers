class PersonSerializer < ActiveModel::Serializer
  attributes :id, :cats

  def cats
    object.cats.map { |cat| { name: cat.name, age: cat.age, favoriteFood: cat.favorite_food } }
  end
end
