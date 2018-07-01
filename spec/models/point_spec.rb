require 'rails_helper'

RSpec.describe Point, type: :model do
  example do
    point = Point.new(name: 'foo', x_pos: 1.23, y_pos: 4.56)
    point.save!
    expect(point.reload).to have_attributes(
                       name: 'bar',
                       x_pos: 1.23,
                       y_pos: 4.56
                     )
  end
end
