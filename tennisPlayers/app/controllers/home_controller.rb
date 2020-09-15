class HomeController < ApplicationController
    def index
        p "hello from home index"
    end

    def url_testing
        p params
    end

    def post_test
        p params
        title = params['songTitle']
        p [ "title: #{title}"]
    end
end