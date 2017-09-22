# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class


class Photo
  attr_accessor :user, :comments

  def initialize
    @comments = []

  end

  def user=(username)
    @user = username
    username.photos << self
  end

  def make_comment(string)
    Comment.new(string)
    comments << string
  end

end

class Comment
  @@all = []
  def initialize(string)
    @string = string
    @@all << string
  end
  def self.all
    @@all
  end
end

class User
  attr_accessor :name, :photos
  def initialize(name)
    @name = name
    @photos = []
  end
end

photo = Photo.new
user = User.new("Sophie")
photo.user = user
photo.user.name
# => "Sophie"
user.photos
# => [<photo 1>]


photo.comments
# => []

photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
photo.comments
# => [<comment1>]


photo.make_comment("cool!")


Comment.all
#=> [<comment1>]
