require 'spec_helper'

describe HelloWorldProject do

  describe 'say hello' do

    context 'hello world project' do
      
      it 'says hello in english' do
        expect(HelloWorldProject::Base.say_hello('english')).to eq('hello world')
      end

      it 'says hello in french' do
        expect(HelloWorldProject::Base.say_hello('francais')).to eq('salut tout le monde')
      end

      it 'says a default hello' do
      	expect(HelloWorldProject::Base.say_hello).to eq('hello world')
      	expect(HelloWorldProject::Base.say_hello('not a language')).to eq('hello world')
      end

    end
  end
end