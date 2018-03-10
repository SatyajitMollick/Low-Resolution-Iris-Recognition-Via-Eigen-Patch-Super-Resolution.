function [F]=FeatureStatistical(im)
    
    im=double(im);
    M=mean(mean(im));
    S=std(std(im));
    F=[M S];
end