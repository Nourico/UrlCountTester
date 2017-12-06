class CreateUrlsTable < ActiveRecord::Migration
    def self.up
      create_table :urls, :force => true do |t|
        t.string :address
        t.date :visit_date
      end
    end

    def self.down
      drop_table :urls
    end
end
