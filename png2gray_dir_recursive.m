path = 'C:\Users\kinoshita kenta\Desktop\�� �A�n��(��\�Ʀr';   %���w�A�n����Ƨ�
rows = 28; %imresize���e
cols = 28; %imresize����

%imresize�ϥδ��Ȫ���k    %�����A�ݳo https://www.mathworks.com/help/matlab/ref/imresize.html#d117e714068
meth = 'nearest'  %�̪�F����
%meth = 'bilinear' %���u�ʴ���
%meth = 'bicubic'  %���T������

traver_path(path, rows, cols, meth)
