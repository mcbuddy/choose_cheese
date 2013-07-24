require "paperclip"
Paperclip.options[:command_path] = "/ImageMagick"

Paperclip::Attachment.default_options[:url] = ':s3_domain_url'
Paperclip::Attachment.default_options[:path] = '/:class/:attachment/:id_partition/:style/:filename'