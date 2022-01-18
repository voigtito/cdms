class DeviseMailerPreview < ActionMailer::Preview
    # Preview all emails at http://localhost:3000/rails/mailers
    def reset_password_instructions
      admin = Admin.new name: 'Admin', email: 'admin@admin.com'
      Devise::Mailer.reset_password_instructions(admin, 'faketoken')
    end
  end