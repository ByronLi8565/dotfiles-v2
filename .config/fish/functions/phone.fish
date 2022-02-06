function phone --wraps='adb connect 10.0.0.18' --description 'alias phone=adb connect 10.0.0.18'
  adb connect 10.0.0.18 $argv; 
end
