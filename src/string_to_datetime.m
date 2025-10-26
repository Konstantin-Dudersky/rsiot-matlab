function str = string_to_datetime(in_str, timezone)

arguments (Input)
    in_str % Строка с меткой времени
    timezone = '+03:00' 
end

arguments (Output)
    str datetime
end

str = datetime( ...
    in_str, ...
    InputFormat= 'uuuu-MM-dd''T''HH:mm:ss.SSSSSSSSSXXX', ...
    Format = 'uuuu-MM-dd''T''HH:mm:ss.SSSSSSSSSXXX', ...
    TimeZone = timezone ...
    );

end