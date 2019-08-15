require 'fileutils'
require 'yaml'
require 'date'

OUTPUT_PATH = "build/output.pdf"

config_dir = ""

if ARGV[0]
  config_dir = ARGV[0]
end

config_path = File.join(config_dir, "config.yml")

conf = YAML.safe_load(File.read(config_path), [Date])
pdf_file = conf["bookname"]+".pdf"
puts "find PDF #{pdf_file}."

if File.exist?(pdf_file)
  FileUtils.mkdir_p(File.dirname(OUTPUT_PATH))
  FileUtils.cp(File.join(config_dir, pdf_file), OUTPUT_PATH)
end

