function label_pre = predict_ncut(feat, nClass)
%PREDICT_NCUT �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
% compute similarity matrix
feat = feat';
[W, ~] = compute_relation(feat);
tic;
[NcutDiscrete, ~, ~] = ncutW(W, nClass);
disp(['The computation took ' num2str(toc) ' seconds']);

label_pre = zeros(1, size(feat, 2));
for j = 1:nClass
    label_pre(NcutDiscrete(:,j) == 1) = j;
end

end

