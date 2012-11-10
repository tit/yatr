# encoding utf-8

class String
  # API Yandex: http://api.yandex.ru/translate
  
  require "rubygems"
  require "json"
  require "open-uri"

  def translate *langs
    case langs.count
    when 1
      lang = "#{langs[0]}"
    when 2
      lang = "#{langs[0]}-#{langs[1]}"
    else
      return self
    end
    request = URI.escape "http://translate.yandex.net/api/v1/tr.json/translate?text=#{self}&lang=#{lang}"
    begin
      respons = open(request)
    rescue OpenURI::HTTPError
      return self
    end
    # Integer code, String lang, Array text
    json_hash = JSON.parse respons.read
    code = json_hash["code"].to_i
    text = json_hash["text"].to_s
    return text if code == 200
    return self
  end
end