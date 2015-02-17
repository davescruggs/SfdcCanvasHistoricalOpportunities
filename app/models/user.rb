class User < ActiveRecord::Base
  attr_accessible :name, :nickname, :provider, :uid
end
