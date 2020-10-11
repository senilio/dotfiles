# Defined in - @ line 1
function xup --wraps='xrdb ~/.Xresources' --description 'alias xup=xrdb ~/.Xresources'
  xrdb ~/.Xresources $argv;
end
