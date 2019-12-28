# frozen_string_literal: true

namespace :import do
  desc 'To import data from csv file: to execute:
  `bundle exec rake import:data`'
  task data: :environment do
    puts 'Cleared table before copy'
    Rails.logger.info 'Cleared table before copy'

    Ubs.connection.truncate(Ubs.table_name)

    ActiveRecord::Base.transaction do
      puts 'Starting copy to database from ubs.csv'
      Rails.logger.info 'Starting copy to database from ubs.csv'

      Ubs.copy_from 'tmp/ubs_filtered.csv', map: {
        'vlr_latitude' => 'latitude',
        'vlr_longitude' => 'longitude',
        'nom_estab' => 'name',
        'dsc_endereco' => 'address',
        'dsc_cidade' => 'city',
        'dsc_telefone' => 'phone',
        'dsc_estrut_fisic_ambiencia' => 'size',
        'dsc_adap_defic_fisic_idosos' => 'adaptation_for_seniors',
        'dsc_equipamentos' => 'medical_equipment',
        'dsc_medicamentos' => 'medicine'
      }

      puts 'Finished copy! \o/'
      Rails.logger.info 'Finished copy! \o/'
    end
  end
end
