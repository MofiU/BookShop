require 'rails_helper'

RSpec.describe UserCell, type: :cell do

  context 'cell rendering' do
    context 'rendering show' do
      subject { cell(:user, User.new).call(:show) }

      it { is_expected.to have_selector('h1', text: 'User#show') }
      it { is_expected.to have_selector('p', text: 'Find me in app/cells/user/show.erb') }
    end
  end

end
