class AdminUser < User
  it 'it should have a start date equal to 6 days prior' do
  new_audit_log = AuditLog.create(user_id: User.last.id)
  expect(new_audit_log.start_date).to eq(Date.today - 6.days)
end 
end