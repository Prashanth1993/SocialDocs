require 'RMagick'
pdf = Magick::ImageList.new("/home/prashanth/doc.pdf")
pdf.write "doc-0.jpg"
