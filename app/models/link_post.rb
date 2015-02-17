class LinkPost < Post
  validates :url, presence: true
end
