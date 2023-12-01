h = figure;
axis tight manual % this ensures that getframe() returns a consistent size
filename = 'testAnimated.gif';
for n = 1:0.5:5
    % Draw plot for y = x.^n
    x = 0:0.01:1;
    y = x.^n;
    plot(x,y) 
    drawnow 
      % Capture the plot as an image 
      frame = getframe(h); 
      im = frame2im(frame); 
      [imind,cm] = rgb2ind(im,256); 
      % Write to the GIF File 
      if n == 1 
          imwrite(imind,cm,filename,'gif', 'Loopcount',inf); 
      else 
          imwrite(imind,cm,filename,'gif','WriteMode','append'); 
      end 
end
  


%%

plot(x,y,z)
hold on
for i = 1:length(x)
    h = plot(x(i),y(i),z(i),'^r');            % draw something on the trajectory
    leg= legend('sin(t) marker', 'cos(t) marker', 'sin(t)', 'cos(t)')
    pause(0.2)                               % wait a minute
    delete(h)                                 % delete it
end
hold off