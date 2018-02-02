require 'clockwork'
include Clockwork

weekdays = ['mon', 'tue','wed','thu','fri']

weekdays.each do |weekday|
  start_time = weekday + " 09:20"
  end_time   = weekday + " 18:31"

  every(1.day, weekday+"出勤", at:[ start_time ]) do
    `./jobcan.sh -c クライアント番号5桁 -m hoge@basicinc.jp -p password -t start`
  end

  every(1.day, weekday+"退勤", at:[ end_time ]) do
    `./jobcan.sh -c クライアント番号5桁 -m hoge@basicinc.jp -p password -t start`
  end
end
