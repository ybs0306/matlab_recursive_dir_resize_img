%我覺得這個 name >= 4 真的很智障, 可是我也沒時間寫個好點的, 暫時這樣

function [] = traver_path(path, rows, cols, meth)
    imgDataPath = path;
    imgDataDir = dir(imgDataPath);
    %列出該目錄所有檔案
    for i = 1:length(imgDataDir)
        disp([imgDataDir(i).folder '\' imgDataDir(i).name])
        
        %當前跟上層資料夾pass
        if(isequal(imgDataDir(i).name,'.') || isequal(imgDataDir(i).name,'..'))
               continue;
        end

        %如果是資料夾則遞迴
        if(imgDataDir(i).isdir)
            traver_path([imgDataDir(i).folder '\' imgDataDir(i).name], rows, cols, meth);
            continue;
        end
        
        %我承認這裡看起來超智障, 先判斷檔名有超過4個字, 有人能教教我怎麼取副檔名出來嗎QQ, 不然要是副檔名是.XX就死了
        if(length(imgDataDir(i).name) >= 4)
            %判斷副檔名
            if(imgDataDir(i).name(end-3: end) == '.png')
                img_RGB = imread ([imgDataDir(i).folder '\' imgDataDir(i).name]);   %讀檔
                img_gray = rgb2gray(img_RGB);                                       %轉灰階
                img_re = imresize(img_gray, [rows cols], meth);                     %重新弄大小
                imwrite(img_re, [imgDataDir(i).folder '\' imgDataDir(i).name]);     %覆蓋掉檔案
            end
            
        end
        
    end
end
