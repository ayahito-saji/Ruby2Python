require 'open3'
require 'json'

json_data = [
  {
    "title": "C++によるプログラミングの原則と実践",
    "author": "Bjarne Stroustrup",
    "company": "ASCII"
  },
  {
    "title": "Effective C++",
    "author": "Scott Meyers",
    "company": "丸善出版株式会社"
  },
  {
    "title": "プログラミングコンテスト攻略のためのアルゴリズムとデータ構造",
    "author": "渡部有隆",
    "company": "マイナビ出版"
  }
]

# output as a file
json_file_path = "json.txt"

open(json_file_path, 'w') do |fp|
  JSON.dump(json_data, fp)
end

cout, error, status = Open3.capture3("python3 python.py")

res = JSON.parse(cout)

res.each do |item|
  puts(item)
end
