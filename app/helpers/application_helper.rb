module ApplicationHelper
  def format_time(time)
    begin
      unless time.blank?
        time.getlocal.strftime("%Y-%m-%d %H:%M:%S")
      end
    rescue Exception
      Time.parse(time).getlocal.strftime("%Y-%m-%d %H:%M:%S")
    end
  end

  def parse_date(date_str, is_end_time=false)
    if is_end_time
      Time.strptime(date_str + " 23:59:59", "%m/%d/%Y %H:%M:%S")
    else
      Time.strptime(date_str, "%m/%d/%Y")
    end
  end

  def parse_datetime(datetime_str)
    Time.strptime(datetime_str, "%m/%d/%Y %H:%M:%S")
  end
end
