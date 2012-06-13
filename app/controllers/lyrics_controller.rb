# encoding: UTF-8
class LyricsController < ApplicationController
  
  def index
    @lyrics = Lyric.search params[:q]
    
    lyrics = []

    musics = {}
    a = ""
    i = 0
    @lyrics.each do |item|
      if i == 3
        musics = item[1]["hits"]
      end
      i += 1
    end
    
    musics.each do |music|
      lyrics << music["_source"]
    end
    
    @lyrics = lyrics

    # render :text => a
  end
  
end