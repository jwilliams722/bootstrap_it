class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy

  validates :title,
            presence: true,
            length: { minimum: 5 }

  def self.seed_data!
    Post.delete_all
    25.times do
      Post.create(
        :title => Faker::Lorem.sentence(rand(2..10)).chomp('.'),
        :text  => Faker::Lorem.paragraphs(rand(2..8)).join('\n')
      )
    end
  end
end