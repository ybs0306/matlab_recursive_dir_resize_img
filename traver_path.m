%��ı�o�o�� name >= 4 �u���ܴ���, �i�O�ڤ]�S�ɶ��g�Ӧn�I��, �Ȯɳo��

function [] = traver_path(path, rows, cols, meth)
    imgDataPath = path;
    imgDataDir = dir(imgDataPath);
    %�C�X�ӥؿ��Ҧ��ɮ�
    for i = 1:length(imgDataDir)
        disp([imgDataDir(i).folder '\' imgDataDir(i).name])
        
        %��e��W�h��Ƨ�pass
        if(isequal(imgDataDir(i).name,'.') || isequal(imgDataDir(i).name,'..'))
               continue;
        end

        %�p�G�O��Ƨ��h���j
        if(imgDataDir(i).isdir)
            traver_path([imgDataDir(i).folder '\' imgDataDir(i).name], rows, cols, meth);
            continue;
        end
        
        %�کӻ{�o�̬ݰ_�ӶW����, ���P�_�ɦW���W�L4�Ӧr, ���H��бЧګ������ɦW�X�Ӷ�QQ, ���M�n�O���ɦW�O.XX�N���F
        if(length(imgDataDir(i).name) >= 4)
            %�P�_���ɦW
            if(imgDataDir(i).name(end-3: end) == '.png')
                img_RGB = imread ([imgDataDir(i).folder '\' imgDataDir(i).name]);   %Ū��
                img_gray = rgb2gray(img_RGB);                                       %��Ƕ�
                img_re = imresize(img_gray, [rows cols], meth);                     %���s�ˤj�p
                imwrite(img_re, [imgDataDir(i).folder '\' imgDataDir(i).name]);     %�л\���ɮ�
            end
            
        end
        
    end
end
