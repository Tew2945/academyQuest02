require 'rails_helper'

RSpec.describe Todo, type: :model do
  context 'when creating a new todo' do
    it 'validates presence of name' do
      todo = Todo.new(name: nil)
      expect(todo).not_to be_valid
      expect(todo.errors[:name]).to include("can't be blank")
    end

    it 'is valid with a name' do
      todo = Todo.new(name: "Test Todo")
      expect(todo).to be_valid
    end
  end
end
