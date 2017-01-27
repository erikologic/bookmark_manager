describe User do
  # subject(:user){described_class.new(email: 'test@examp.le', password: 'secret')}

  context 'defaults' do
    it 'has a password_confirmation argument to validate password' do
      user_count = described_class.count
      obj_wrong = described_class.new(
        email: 'test@examp.le',
        password: 'secret',
        password_confirmation: 'maybenotsecret')
      obj_wrong.save
      expect(described_class.count).to eq(user_count)

      obj_wrong = described_class.new(
        email: 'test@examp.le',
        password: 'secret',
        password_confirmation: 'secret')
      obj_wrong.save
      expect(described_class.count).to eq(user_count + 1)
    end
  end
end
