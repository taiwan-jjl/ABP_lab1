plot(N_O2, bw_O2, "-x", N_O3, bw_O3, "-x");
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
legend("O2","O3","L1=32KB","L2=256KB","L3=20480KB");
xlim([L2/3*0.5 L3/3*1.5]);


%%
%
plot(N_O2, bw_O3 ./ bw_O2, "-x");
xlabel("# of floats");
ylabel("O3/O2 ratio");
title("stream\_triad");
L1 = 32*1024/4;
L2 = 256*1024/4;
L3 = 20480*1024/4;
xline(L1/3);
xline(L2/3);
xline(L3/3);
legend("O3/O2","L1=32KB","L2=256KB","L3=20480KB");
xlim([0 L1/3*0.1]);
ylim([0 10]);