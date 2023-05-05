function MLine_Type(source,~)
    hline=findobj('Type','line');
    %找到是line的类型（Type）的对象的句柄，也就是画出来的线条对象
    % （因为plot函数画出线条后，画出来的线条的类型（Type）就是"line"）
    if strcmp(source.Tag,'Solid' )==1
        hline.LineStyle='-';
    elseif strcmp(source.Tag,'Dotted' )==1
        hline.LineStyle=':';  
    elseif strcmp(source.Tag,'Dashed' )==1
        hline.LineStyle='--';   
    end
end