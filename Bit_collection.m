function [w_data] = Bit_collection(subblock_data,C,K_pai)

w_data = zeros(C,3*K_pai);
for i = 1:C
    for k = 0:K_pai-1
        w_data(i,k+1) = subblock_data(3*i-2,k+1);
        w_data(i,K_pai+2*k+1) = subblock_data(3*i-1,k+1);
        w_data(i,K_pai+2*k+2) = subblock_data(3*i,k+1);
    end
end
