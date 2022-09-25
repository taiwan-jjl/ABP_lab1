%plot(N_t4_a0_noarch, bw_t4_a0_noarch, "-x", N_t4_a1_noarch, bw_t4_a1_noarch, "-x");
semilogx(N_t4_a1_arch_b1, bw_t4_a1_arch_b1, "-x", N_t4_a1_arch_b16, bw_t4_a1_arch_b16, "-x",...
         N_t4_a1_arch_b32, bw_t4_a1_arch_b32, "-x", N_t4_a1_arch_b64, bw_t4_a1_arch_b64, "-x",...
         N_t4_a1_arch_b128, bw_t4_a1_arch_b128, "-x", N_t4_a1_arch_b256, bw_t4_a1_arch_b256, "-x",...
         N_t4_a1_arch_b512, bw_t4_a1_arch_b512, "-x", N_t4_a1_arch_b1024, bw_t4_a1_arch_b1024, "-x");
xlabel("# of floats");
ylabel("GBytes/sec");
title("stream\_triad");
L1 = 64*1024/4;
L2 = 4*1024*1024/4;

xline(L1/3);
xline(L2/3);

yline(320);

legend("block-1,max=11.5","block-16,max=175.8", "block-32,max=323.5","block-64,max=603.5", "block-128,max=795.9", "block-256,max=788.4", "block-512,max=726.6", "block-1024,max=650.7", "L1=64KB","L2=4MB", "GDDR6-256bit=320GB/s");
%xlim([L2/3*0.8 L3/3*1.3]);
%xlim([L1/3*0.8 L2/3*1.3]);
%xlim([0/3*0.5 L1/3*1.3]);
%xlim([0/3*0.5 L1/3*0.1]);


%%
%
%plot(N_a3k_a0_noarch, bw_a3k_a0_noarch, "-x", N_a3k_a1_noarch, bw_a3k_a1_noarch, "-x");
semilogx(N_a3k_a1_arch_b1, bw_a3k_a1_arch_b1, "-x", N_a3k_a1_arch_b16, bw_a3k_a1_arch_b16, "-x",...
         N_a3k_a1_arch_b32, bw_a3k_a1_arch_b32, "-x", N_a3k_a1_arch_b64, bw_a3k_a1_arch_b64, "-x",...
         N_a3k_a1_arch_b128, bw_a3k_a1_arch_b128, "-x", N_a3k_a1_arch_b256, bw_a3k_a1_arch_b256, "-x",...
         N_a3k_a1_arch_b512, bw_a3k_a1_arch_b512, "-x", N_a3k_a1_arch_b1024, bw_a3k_a1_arch_b1024, "-x");
xlabel("# of floats");
ylabel("GBytes/sec");
title("stream\_triad");
L1 = 128*1024/4;
L2 = 4*1024*1024/4;

xline(L1/3);
xline(L2/3);

yline(264);

legend("block-1,max=9.8","block-16,max=149.4", "block-32,max=281.0","block-64,max=501.0", "block-128,max=750.8", "block-256,max=785.7", "block-512,max=721.3", "block-1024,max=547.7", "L1=128KB","L2=4MB", "GDDR6-192bit=264GB/s");
%xlim([L2/3*0.8 L3/3*1.3]);
%xlim([L1/3*0.8 L2/3*1.3]);
%xlim([0/3*0.5 L1/3*1.3]);
%xlim([0/3*0.5 L1/3*0.1]);