# frozen_string_literal: true

require 'test_helper'

describe Martinet::Rails::Serializer do
  subject { Martinet::Rails::Serializer }

  before do
    @richard = User.create!(name: 'Richard Roe')
    @john = User.create!(name: 'John Doe')
    @mark = User.create!(name: 'Mark Moe')
    @unborn = User.new(name: 'Unborn Baby')
    @not_an_active_record = Hash[id: 666, name: 'I am a hash']
  end

  describe 'serialize' do
    it 'serializes model to hash' do
      result = subject.serialize(record: @john)

      result.must_be_instance_of Hash
      result[:klass].must_equal 'User'
      result[:record_id].must_equal @john.id
    end

    it 'passes through original object if record not persisted' do
      result = subject.serialize(record: @unborn)

      result.must_equal @unborn
    end

    it 'passes through non ActiveRecord objects' do
      result = subject.serialize(record: @not_an_active_record)

      result.must_equal @not_an_active_record
    end
  end

  describe '#deserialize' do
    it 'deserializes model from hash' do
      result = subject.deserialize(object_hash: { klass: 'User', record_id: @john.id })

      result.must_equal @john
    end

    it 'returns original object if record not found' do
      object_hash = { klass: 'User', record_id: @mark.id }
      @mark.destroy!

      result = subject.deserialize(object_hash: object_hash)

      result.must_equal object_hash
    end

    it 'passes through non ActiveRecord objects' do
      result = subject.deserialize(object_hash: @not_an_active_record)

      result.must_equal @not_an_active_record
    end

    it 'passes through objects without klass and id' do
      result = subject.deserialize(object_hash: 'I am a string')

      result.must_equal 'I am a string'
    end
  end
end
