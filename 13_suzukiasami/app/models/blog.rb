class Blog < ActiveRecord::Base
    validates :title,
    presence: true, length: { maximum: 50 }
  validates :body,
    presence: true, length: { maximum: 1000 }
  validates :category,
    presence: true, length: { maximum: 50 }
end
def self.search(search) #self.でクラスメソッドとしている
    if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      Blogs.where(['name LIKE ?', "%#{search}%"])
    else
      Blogs.all #全て表示。
    end
  end

