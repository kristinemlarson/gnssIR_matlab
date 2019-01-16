function  median_RH( plt_type, avg_maxRH, plot2screen )
% function median_RH( plt_type, avg_maxRH, plot2screen )
% called by main code from the GNSS-IR tutorial code sample_gnss_ir.m 
% it adds a vertical line where
% the median reflector height (H_R) is.
% Author: Kristine M. Larson, 2018 March 5

% only for plots with all azimuths together
if plt_type == 0 
 
  mm = median(avg_maxRH);
  cmm=sprintf('%4.2f',mm);  
  tx = ['Median H_R: ' cmm '(m)']; disp(tx)
  if plot2screen
    yy = get(gca,'Ylim');
    text(mm+0.25, yy(1)+0.8*diff(yy), tx,'Color','b')
    plot( [mm mm], yy, 'b-','linewidth',2)
  end
end
end

