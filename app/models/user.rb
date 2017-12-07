# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  token                  :string
#  provider               :string
#  uid                    :string
#  name                   :string
#  first_name             :string
#  last_name              :string
#  image                  :string
#  expires_at             :string
#  expires                :string
#  gender                 :string
#  locale                 :string
#  hd                     :string
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  devise :omniauthable, omniauth_providers: [:google_oauth2]


  def self.from_omniauth(access_token)
      data = access_token.info
      credentials = access_token.credentials
      raw_info = access_token.extra.raw_info
      user = User.where(email: data['email']).first

      # Uncomment the section below if you want users to be created if they don't exist
      unless user
        user = User.create(name: data['name'],
           email: data['email'],
           password: Devise.friendly_token[0,20],
           first_name: data['first_name'],
           last_name: data['last_name'],
           image: data['image'],
           token: credentials['token'],
           expires_at: credentials['expires_at'],
           expires: credentials['expires'],
           gender: raw_info['gender'],
           locale: raw_info['locale'],
           hd: raw_info['hd'],
           uid: access_token['uid']

        )
      end
      user
  end
end
