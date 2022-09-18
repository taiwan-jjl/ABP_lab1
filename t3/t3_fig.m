plot(N_O2, bw_O2, "-x", N_O3, bw_O3, "-x");
%semilogy(N_O2, bw_O2, "-x", N_O3, bw_O3, "-x");
xlabel("# of floats");
ylabel("GBytes/sec");
title("stream\_triad");
L1 = 288*1024/4;
L2 = 7.5*1024*1024/4;
L3 = 18 *1024*1024/4;
xline(L1/3);
xline(L2/3);
xline(L3/3);
yline(46.928);
yline(23.464);
legend("O2","O3","L1d=288KB","L2=7.5MB","L3=18MB", "DDR4-2ch=46.928GB/s", "DDR4-1ch=23.464GB/s");
%xlim([L2/3*0.8 L3/3*1.3]);
%xlim([L1/3*0.8 L2/3*1.3]);
%xlim([0/3*0.5 L1/3*1.3]);
%xlim([0/3*0.5 L1/3*0.01]);


%%
%
plot(N_O2, bw_O3 ./ bw_O2, "-x");
xlabel("# of floats");
ylabel("O3/O2 ratio");
title("stream\_triad");
L1 = 288*1024/4;
L2 = 7.5*1024*1024/4;
L3 = 18 *1024*1024/4;
xline(L1/3);
xline(L2/3);
xline(L3/3);
legend("O3/O2","L1d=288KB","L2=7.5MB","L3=18MB");
ylim([0 20]);
%xlim([L2/3*0.8 L3/3*1.3]);
%xlim([L1/3*0.8 L2/3*1.3]);
%xlim([0/3*0.5 L1/3*1.3]);
xlim([0/3*0.5 L1/3*0.1]);