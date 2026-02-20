classdef output_data
    %output_data Таблица в выходными величинами
    %   Detailed explanation goes here

    properties
        data = table( ...
            'Size', [0, 3], ...
            'VariableTypes', {'string', 'string', 'double'}, ...
            VariableNames=["Обозначение", "Описание", "Значение"] ...
            )
    end

    methods
        function obj = output_data()
            %output_data Construct an instance of this class
        end


        function index = next_index(obj)
            s = size(obj.data);
            index = s(1) + 1;
        end


        function disp(obj)
            fig = uifigure("Position", [500 500 800 500]);

            uitable(fig, ...
                "Data", obj.data, ...
                "Position", [10 10 780 480] ...
                );
        end

        
        function obj = t08(obj, value)
            index = obj.next_index();

            obj.data(index, :) = {"T08", "Внутренняя температура", value};
        end
    end
end