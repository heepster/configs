#!/usr/bin/env ruby

DIRECTORY = ARGV[0]
SUPPORTED_FILE_TYPES = [
  ".mp4",
  ".opus"
]

STRIP_CHARS_FROM_TITLE = true

Dir.glob(DIRECTORY + "/*").each do |file| 
  ext = File.extname(file)
  filename = File.basename(file, File.extname(file))

  next if ! SUPPORTED_FILE_TYPES.include?(ext)

  parts = filename.split(' - ')

  if parts.length < 2
    puts "Skipping #{filename}"
  end

  album = parts[0]
  title = parts[1]

  if STRIP_CHARS_FROM_TITLE
    title = title.split('-')[0]
  end

  new_filename = "#{title}#{ext}"

  puts "Renaming: '#{filename}'    ====>     #{new_filename}"
  File.rename(file, DIRECTORY + new_filename)
end




