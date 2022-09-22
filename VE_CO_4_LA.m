syms t pi;
l1 = 50; l2=50;
for t=0:0.05:2*pi
    % ve tu toa do 20 20
    x = 20 + 10*cos(t)*(sin(2*t)+sin(6*t)/4); 
    y = 20 + 10*sin(t)*(sin(2*t)+sin(6*t)/4);
        
    c2=(x^2+y^2-l1^2-l2^2)/(2*l1*l2);
    s2=sqrt(abs(1-c2^2));
    t2= atan(s2,c2);   
    
    c1=x*(l1+l2*c2)+l2*s2*y;
    s1=y*(l1+l2*c2)-l2*s2*x;
    t1= atan2(s1,c1);  
    
    px = l1*cos(t1) + l2* cos (t1+t2);
    py = l1*sin(t1) + l2* sin (t1+t2);
    
    plot(px,py,'r.');
    xlabel('x(cm)');ylabel('y(cm)');  pause(0.01);
    axis([10 30 10 30]);
    hold on
    
end
           