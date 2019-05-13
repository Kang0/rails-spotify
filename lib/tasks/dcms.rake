namespace :db do
    desc 'Create, Migrate, Seed DB, Start rails server'
    task cms: :environment do 
        puts 'creating db...'
        Rake::Task['db:create'].invoke

        puts 'running migrations...'
        Rake::Task['db:migrate'].invoke

        puts 'seeding db...'
        Rake::Task['db:seed'].invoke

        puts 'starting rails server...'
        exec('rails s')
    end
end