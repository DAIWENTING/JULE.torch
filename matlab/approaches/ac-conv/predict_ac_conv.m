function label_pre = predict_ac_conv(feat, nClass)
%PREDICT_AC_CONV �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
Z = linkage(feat, 'average');
label_pre = cluster(Z, 'maxClust', nClass);
end

