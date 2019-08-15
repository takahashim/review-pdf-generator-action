require 'fileutils'
require 'yaml'
require 'date'

config_path = "config.yml"

if ARGV[0]
  config_path = File.join(ARGV[0], "config.yml")
end

conf = YAML.safe_load(File.read(config_path), [Date])
pdf_file = conf["bookname"]+".pdf"
if File.exist?(pdf_file)
  FileUtils.mkdir_p("build")
  FileUtils.cp(pdf_file, "build/output.pdf")
end

