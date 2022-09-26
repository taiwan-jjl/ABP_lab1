%plot(N_t4_a0_noarch, bw_t4_a0_noarch, "-x", N_t4_a1_noarch, bw_t4_a1_noarch, "-x");
semilogx(N_t4_dp, bw_t4_dp, "red-x", N_t4_sp, bw_t4_sp, "green-x");
yyaxis right;
semilogx(N_t4_dp, MUPD_t4_dp, "blue-x", N_t4_sp, MUPD_t4_sp, "black-x");
yyaxis left;
xlabel("# of floats");
ylabel("GBytes/sec");
title("stream\_triad");
yyaxis right;
ylabel("MUPD/sec");
L1 = 64*1024/4;
L2 = 4*1024*1024/4;

xline(L1/3);
xline(L2/3);

yline(320);

legend("block-512,bw-DP","block-512,bw-SP", "block-512,MUPD-DP","block-512,MUPD-SP", "L1=64KB","L2=4MB", "GDDR6-256bit=320GB/s");
%xlim([L2/3*0.8 L3/3*1.3]);
%xlim([L1/3*0.8 L2/3*1.3]);
%xlim([0/3*0.5 L1/3*1.3]);
%xlim([0/3*0.5 L1/3*0.1]);


%%
%
%plot(N_a3k_a0_noarch, bw_a3k_a0_noarch, "-x", N_a3k_a1_noarch, bw_a3k_a1_noarch, "-x");
semilogx(N_a3k_dp, bw_a3k_dp, "red-x", N_a3k_sp, bw_a3k_sp, "green-x");
yyaxis right;
semilogx(N_a3k_dp, MUPD_a3k_dp, "blue-x", N_a3k_sp, MUPD_a3k_sp, "black-x");
yyaxis left;
xlabel("# of floats");
ylabel("GBytes/sec");
title("stream\_triad");
yyaxis right;
ylabel("MUPD/sec");
L1 = 128*1024/4;
L2 = 4*1024*1024/4;

xline(L1/3);
xline(L2/3);

yline(264);

legend("block-512,bw-DP","block-512,bw-SP", "block-512,MUPD-DP","block-512,MUPD-SP", "L1=128KB","L2=4MB", "GDDR6-192bit=264GB/s");
%xlim([L2/3*0.8 L3/3*1.3]);
%xlim([L1/3*0.8 L2/3*1.3]);
%xlim([0/3*0.5 L1/3*1.3]);
%xlim([0/3*0.5 L1/3*0.1]);