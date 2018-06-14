class CreateTables < ActiveRecord::Migration[5.1]
  def change
    create_table :course_sections do |t|
    end
    create_table :episodes do |t|
    end
    create_table :materials do |t|
    end
  end
end
