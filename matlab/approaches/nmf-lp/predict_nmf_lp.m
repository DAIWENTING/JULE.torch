function label_pre = predict_nmf_lp(feat, nClass)
%PREDICT �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
disp('NMF_KL...');	
NMFKLoptions = [];
NMFKLoptions.maxIter = 50;
NMFKLoptions.alpha = 0;
%when alpha = 0, GNMF_KL boils down to the ordinary NMF_KL.
NMFKLoptions.weight = 'NCW';
nFactor = 10;
[~, V] = GNMF_KL(feat', nFactor, [], NMFKLoptions); %'
label_pre = litekmeans(V, nClass, 'Replicates', 10); %'
end

