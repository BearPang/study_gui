%例1   在图形窗口中建立三个按钮对象，当单击按钮时分别绘制正弦曲线、显示或隐藏坐标轴的网格、清除坐标轴的图形。
ha= axes('Units','pixels','Position',[40,40,360,360]);   
btgrid=uicontrol('Style','pushbutton',...
     'String','网格', 'Position', [450,120,48,20],...
    'Callback','grid' );
btncla = uicontrol('Style', 'pushbutton', ...
    'String', '清除','Position', [450,80,48,20],...
    'Callback','cla' );    
btnplot = uicontrol('Style', 'pushbutton', ...
     'String','绘图','Position', [450,160,48,20]); 
%设置“绘图”按钮的Callback属性值是plot_sin函数句柄。
btnplot.Callback=@plot_sin;





% %例2  在例1的界面中添加"图形选项”菜单项，其中包括一个二级菜单项“线型”，其下又有3个子菜单项，分别为“实线”、“虚线”、“双划线”。
hopt=uimenu(gcf,'Label','图形选项','Accelerator','L');
hLStyle=uimenu(hopt,'Label','线型','Tag','LStyle', 'Enable','off');
hL_Solid=uimenu(hLStyle,'Label','实线',...
    'Tag','Solid','Callback', @MLine_Type);
hL_Dotted=uimenu(hLStyle,'Label','虚线',...
    'Tag','Dotted','Callback', @MLine_Type);
hL_Dashed=uimenu(hLStyle,'Label','双划线',...
    'Tag','Dashed','Callback', @MLine_Type);
% 
% % 新建回调函数文件
% MLine_Type.m
% function MLine_Type(source,callbackdata)
%     hline=findobj('Type','line');
%     if strcmp(source.Tag,'Solid' )==1
%         hline.LineStyle='-';
%     elseif strcmp(source.Tag,'Dotted' )==1
%         hline.LineStyle=':';  
%     elseif strcmp(source.Tag,'Dashed' )==1
%         hline.LineStyle='--';   
%     end
% end
% 
% % 修改回调函数文件
% plot_sin.m
% function plot_sin(source, callbackdata)
%     t=-pi:pi/20:pi;
%     plot(t,sin(t));
%     h1=findobj('Tag','LStyle');
%     h1.Enable='On';    %使得 “线型”菜单项可用
% end