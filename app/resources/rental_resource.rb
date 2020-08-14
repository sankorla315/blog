class RentalResource < JSONAPI::Resource
    attributes :title, :owner, :city, :category, :bedrooms, :image, :description
end