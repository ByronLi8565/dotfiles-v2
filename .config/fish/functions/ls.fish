function ls --wraps='lsd -Ah' --description 'alias ls=lsd -Ah'
  lsd -Ah $argv; 
end
