require "deepl"
require 'clipboard'

DeepL.configure do |config|
  config.auth_key = ENV["DEEPL_FREE_ACESS_KEY"] 
  config.host = "https://api-free.deepl.com"
end

text = ARGV[0]
response = DeepL.translate(text, "EN", "JA")

text_lines = text.lines
response_lines = response.text.lines

result_arry = []

text_lines.zip(response_lines) do |text, response|
  result_arry.push(text.delete("\n"))
  result_arry.push(response.delete("\n") + "\n")
end

result =  result_arry.join("\n")

Clipboard.copy result
puts result