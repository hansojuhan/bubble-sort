require 'spec_helper'
require_relative '../code/caesar.rb'

RSpec.describe 'Caesar Cipher' do

  describe 'It ciphers' do

    it 'returns the same string with key 0' do
      key = 0
      string = "Abcdefgh!"
      expect(caesar(string, key)).to eq(string)
    end

    it 'returns the same string if no key is given' do
      string = "Abcdefgh!"
      expect(caesar(string)).to eq(string)
    end

    it 'ciphers string if key is given' do
      key = 5
      string = "Abcdefgh!"
      expect(caesar(string, key)).to eq("Fghijklm!")
    end

    it 'ciphers string if string includes symbols and numbers' do
      key = 5
      string = "A1b2c3d# # #efgh!"
      expect(caesar(string, key)).to eq("F1g2h3i# # #jklm!")
    end

    it 'ciphers string with caps' do
      key = 1
      string = "ABCDEFGH!"
      expect(caesar(string, key)).to eq("BCDEFGHI!")
    end

    it 'ciphers string if negative key is given' do
      key = -5
      string = "Abcdefgh!"
      expect(caesar(string, key)).to eq("Vwxyzabc!")
    end

    it 'ciphers tring if a very big key is given' do
      key = 1000000
      string = "Abcdefgh!"
      expect(caesar(string, key)).to eq("Opqrstuv!")
    end

    it 'ciphers a very long string' do
      key = 1000000
      string = "Abcdefgh!Abcdefgh!Abcdefgh!Abcdefgh!Abcdefgh!Abcdefgh!"
      expect(caesar(string, key)).to eq("Opqrstuv!Opqrstuv!Opqrstuv!Opqrstuv!Opqrstuv!Opqrstuv!")
    end
  end
end
