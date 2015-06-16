require 'spec_helper'

describe HelloWorldProject do

  describe 'say hello' do

    context 'hello world project says hello' do
      
      it 'says hello in english' do
        expect(HelloWorldProject::Base.say_hello('english')).to eq('hello world')
      end

      it 'says hello in french' do
        expect(HelloWorldProject::Base.say_hello('francais')).to eq('salut tout le monde')
      end
    end
  end
end