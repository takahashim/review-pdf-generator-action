require 'fileutils'
require 'yaml'
require 'date'

OUTPUT_PATH = "build/output.pdf"

config_dir = "."

if ARGV[0]
  config_dir = ARGV[0]
end

config_path = File.join(config_dir, "config.yml")

conf = YAML.safe_load(File.read(config_path), [Date])
pdf_path = File.join(config_dir, conf["bookname"]+".pdf")
puts "generate PDF #{pdf_path}."

if File.exist?(pdf_path)
  FileUtils.mkdir_p(File.dirname(OUTPUT_PATH))
  FileUtils.cp(pdf_path, OUTPUT_PATH)
end

