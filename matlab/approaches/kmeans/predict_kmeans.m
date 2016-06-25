function label_pre = predict_kmeans(feat, nClass)
%PREDICT_KMEANS �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
num = size(feat, 1);
iter = max(100, num / 100);
% opts = statset('MaxIter', iter, 'UseParallel', true);
% label_pre = kmeans(feat, nClass, 'Options', opts);
label_pre = litekmeans(feat, nClass,'MaxIter', iter, 'Replicates', 10);
end

