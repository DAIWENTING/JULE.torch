function label_pre = predict_ac_zell(feat, nClass)
%PREDICT_GDL �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
% a = 100 for USPS
% z = 0.01;
K = 20;
a = 0.95;
z = 0.01;
distance_matrix = pdist2(feat, feat);
distance_matrix = distance_matrix.^2;
% Zeta
label_pre = gacCluster(distance_matrix, nClass, 'zeta', K, a, z);
end

