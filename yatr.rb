# encoding utf-8

class String
  # API Yandex: http://api.yandex.ru/translate/doc/dg/concepts/api-overview.xml
  
  # require section
  require "rubygems"
  require "json"
  require "open-uri"

  # public methods
  def to_ru
    return self.translate "ru"
  end

  def to_en
    return self.translate "en"
  end

  def to_pl
    return self.translate "pl"
  end

  def to_uk
    return self.translate "uk"
  end

  def to_de
    return self.translate "de"
  end

  def to_tr
    return self.translate "tr"
  end

  # protected methods
  protected
  def translate to_lang
    result = JSON.parse open(URI.escape"http://translate.yandex.net/api/v1/tr.json/translate?lang=#{to_lang}&text=#{self}").read
    code = result["code"].to_i
    # lang = result["lang"]
    text = result["text"].to_s
    return text if code == 200
    return self
  end
end