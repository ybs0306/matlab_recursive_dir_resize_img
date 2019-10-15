path = 'C:\Users\kinoshita kenta\Desktop\來 你要的(遞\數字';   %指定你要的資料夾
rows = 28; %imresize的寬
cols = 28; %imresize的高

%imresize使用插值的方法    %不懂再看這 https://www.mathworks.com/help/matlab/ref/imresize.html#d117e714068
meth = 'nearest'  %最近鄰插值
%meth = 'bilinear' %雙線性插值
%meth = 'bicubic'  %雙三次插值

traver_path(path, rows, cols, meth)
