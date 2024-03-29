%plot(N_t4_a0_noarch, bw_t4_a0_noarch, "-x", N_t4_a1_noarch, bw_t4_a1_noarch, "-x");
semilogx(N_t4_a0_noarch, bw_t4_a0_noarch, "-x", N_t4_a1_noarch, bw_t4_a1_noarch, "-x", N_t4_a0_arch, bw_t4_a0_arch, "-x", N_t4_a1_arch, bw_t4_a1_arch, "-x");
xlabel("# of floats");
ylabel("GBytes/sec");
title("stream\_triad");
L1 = 64*1024/4;
L2 = 4*1024*1024/4;

xline(L1/3);
xline(L2/3);

yline(320);

legend("noarch-align-0","noarch-align-1", "arch-align-0","arch-align-1", "L1=64KB","L2=4MB", "GDDR6-256bit=320GB/s");
%xlim([L2/3*0.8 L3/3*1.3]);
%xlim([L1/3*0.8 L2/3*1.3]);
%xlim([0/3*0.5 L1/3*1.3]);
%xlim([0/3*0.5 L1/3*0.1]);


%%
%
%plot(N_t4_a0_noarch, bw_t4_a0_noarch, "-x", N_t4_a1_noarch, bw_t4_a1_noarch, "-x");
semilogx(N_a3k_a0_noarch, bw_a3k_a0_noarch, "-x", N_a3k_a1_noarch, bw_a3k_a1_noarch, "-x", N_a3k_a0_arch, bw_a3k_a0_arch, "-x", N_a3k_a1_arch, bw_a3k_a1_arch, "-x");
xlabel("# of floats");
ylabel("GBytes/sec");
title("stream\_triad");
L1 = 128*1024/4;
L2 = 4*1024*1024/4;

xline(L1/3);
xline(L2/3);

yline(264);

legend("noarch-align-0","noarch-align-1", "arch-align-0","arch-align-1", "L1=128KB","L2=4MB", "GDDR6-192bit=264GB/s");