#!/usr/bin/env ruby

DIRECTORY = ARGV[0]
ALBUM = ARGV[1]

if !DIRECTORY || !ALBUM
  raise "Need to specify two arguments: directory and album name"
end

SUPPORTED_FILE_TYPES = [
  ".mp4",
  ".opus"
]

Dir.glob(DIRECTORY + "/*").each_with_index do |file, index| 
  ext = File.extname(file)
  next if ! SUPPORTED_FILE_TYPES.include?(ext)

  title = File.basename(file, File.extname(file))

  index = index + 1
  output = `id3 -t "#{title}" -A "#{ALBUM}" -T #{index}  "#{file}"`
  puts output
end




