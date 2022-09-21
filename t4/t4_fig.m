plot(N_snowy_a0, bw_snowy_a0, "-x", N_snowy_a1, bw_snowy_a1, "-x");
%semilogy(N_O2, bw_O2, "-x", N_O3, bw_O3, "-x");
xlabel("# of floats");
ylabel("GBytes/sec");
title("stream\_triad");
L1 = 32*1024/4;
L2 = 256*1024/4;
L3 = 20480*1024/4;
xline(L1/3);
xline(L2/3);
xline(L3/3);
yline(42.656);
yline(42.656/4);
legend("align-0","align-1","L1=32KB","L2=256KB","L3=20480KB", "DDR3-4ch=42.656GB/s", "DDR3-1ch=10.664GB/s");
%xlim([L2/3*0.8 L3/3*1.3]);
%xlim([L1/3*0.8 L2/3*1.3]);
%xlim([0/3*0.5 L1/3*1.3]);
xlim([0/3*0.5 L1/3*0.1]);


%%
%
plot(N_p7760_a0, bw_p7760_a0, "-x", N_p7760_a1, bw_p7760_a1, "-x");
%semilogy(N_O2, bw_O2, "-x", N_O3, bw_O3, "-x");
xlabel("# of floats");
ylabel("GBytes/sec");
title("stream\_triad");
L1 = 48*1024/4;
L2 = 1.25*1024*1024/4;
L3 = 18 *1024*1024/4;
xline(L1/3);
xline(L2/3);
xline(L3/3);
yline(46.928);
yline(23.464);
legend("align-0","align-1","L1d=48KB","L2=1.25MB","L3=18MB", "DDR4-2ch=46.928GB/s", "DDR4-1ch=23.464GB/s");
%xlim([L2/3*0.8 L3/3*1.3]);
%xlim([L1/3*0.8 L2/3*1.3]);
%xlim([0/3*0.5 L1/3*1.3]);
xlim([0/3*0.5 L1/3*0.1]);