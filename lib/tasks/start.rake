# frozen_string_literal: true

task start: :environment do
  exec 'RAILS_ENV=development WEBPACK_DEV_SERVER=true PORT=3000 foreman start -f ./Procfile.development'
end
