# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_02_01_213910) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ubs", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "city"
    t.string "phone"
    t.float "latitude"
    t.float "longitude"
    t.integer "size"
    t.integer "adaptation_for_seniors"
    t.integer "medical_equipment"
    t.integer "medicine"
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }
  end

end
