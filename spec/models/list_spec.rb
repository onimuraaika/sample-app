# frozen_string_literal: true

require 'rails_helper'

describe 'モデルのテスト' do
  it "投稿内容が正しい場合は保存される" do
    expect(FactoryBot.build(:list)).to be_valid
  end
end