namespace :sample do
  task list: :environment do
    Member.all.each do |m|
      puts m.name
    end

  end

  task init: :environment do
    Member.create! name: "yamada", email: "yamada@sample.com", age: 25, comment: "rakeで追加"
  end
end
