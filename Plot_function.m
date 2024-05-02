function hFig=Plot_function(simout)
    hFig=figure('Name','Falling Ball simulation');
    subplot(3,1,1)
    plot(simout.x)
    grid minor
    ylabel('x [m]')
    xlabel('Time [sec]')

    subplot(3,1,2)
    plot(simout.v)
    grid minor
    ylabel('v [m/s]')
    xlabel('Time [sec]')

    subplot(3,1,3)
    plot(simout.a)
    grid minor
    ylabel('a [m/s^2]')
    xlabel('Time [sec]')
end