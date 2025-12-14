class User < ApplicationRecord
	has_secure_password

	enum role: {admin: 'admin', user: 'user', agent: 'agent'}
	enum status: {active: 'active', blocked: 'blocked'}

	validates :email, presence: true, uniqueness: true
end
