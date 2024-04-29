#!/bin/csh -f

if ( `pwd` != "/home/grads/h/hbritton/csce689LabsBritton/lab-4-habrit/zebu" ) then
  echo "Warning: Working directory is changed."
  echo "Executing the postelab script in the same working directory is recommended."
  echo "    Previous path: /home/grads/h/hbritton/csce689LabsBritton/lab-4-habrit/zebu"
  echo "    Current path: `pwd`"
  echo ""
endif

cd /home/grads/h/hbritton/csce689LabsBritton/lab-4-habrit/zebu
/bin/sh -f /home/grads/h/hbritton/csce689LabsBritton/lab-4-habrit/zebu/zcui.work/vcs_splitter/simv.daidir/.elabcomCmd
