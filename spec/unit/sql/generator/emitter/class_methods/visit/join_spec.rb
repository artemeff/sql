# encoding: utf-8

require 'spec_helper'

describe SQL::Generator::Emitter, '.visit' do
  include_context 'emitter'

  shared_examples 'assert valid sql' do
    before do
      SQL::Generator::Emitter.visit(node, stream)
    end

    it 'emitts valid sql' do
      expect(stream.output).to eql(sql)
    end
  end

  context 'natural join' do
    let(:node) do
      s(:natural_join, s(:select, s(:fields, s(:id, 'foo')), s(:id, 't1')), s(:select, s(:fields, s(:id, 'foo')), s(:id, 't2')))
    end

    let(:sql) do
      %Q[SELECT "foo" FROM "t1" NATURAL JOIN SELECT "foo" FROM "t2"]
    end

    include_examples('assert valid sql')
  end
end
