function plot_sin(~, ~)
    t=-pi:pi/20:pi;
    plot(t,sin(t));
    h1=findobj('Tag','LStyle');
% MATLAB 的 findobj 函数可以用于快速遍历对象从属关系表并获取具有特定属性值的对象句柄的方法。
% 如果用户没有指定起始对象，那么 findobj 函数从根对象开始查找。
% 该函数的调用格式为：h = findobj，返回根对象及其所有的从属句柄，返回值为一个列向量。
% h = findobj('PropertyName',PropertyValue,...)，返回满足 'PropertyName' 属性的值为 PropertyValue 的所有句柄，可以同时设置多个条件。


%所以程序中，这句话的作用是返回具有"Tag"属性，并且"Tag"属性值是'LStyle'的句柄，也就是返回study_gui.m中"线性"菜单的句柄
%在study_gui.m中，原语句为：hLStyle=uimenu(hopt,'Label','线型','Tag','LStyle', 'Enable','off');
%命名为h1，是因为h代表的是句柄handle的英文
    h1.Enable='On';    %更改"线型"菜单项的Enable为可用
end