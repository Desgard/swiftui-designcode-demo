
desc "Record the learn part"
task :release do
    puts "Please input the title of the part:"
    title = gets()
    
    # git 记录
    `git add .`
    `git commit -s -m "finish the #{title}"`

    puts "Please input the url of the video:"
    link = gets()

    puts "Please input the number: "
    number = gets()

    `git tag -a '#{number}-#{title.downcase.tr(' ', '-').strip}' -m '#{link}'`
    `git push origin master --tags`
    
    puts "🍺 Done!"
end

task default: [:release]