drawTime = ->
  weeks = new Array('日','月','火','水','木','金','土')
  now = new Date()
  year = now.getFullYear()
  month = now.getMonth() + 1
  day = now.getDate()
  week = weeks[ now.getDay() ]
  hour = now.getHours()
  min = now.getMinutes()
  sec = now.getSeconds()
  
  if month < 10
    month = "0" + month;
  if day < 10
    day = "0" + day;
  if hour < 10
    hour = "0" + hour;
  if min < 10
    min = "0" + min;
  if sec < 10
    sec = "0" + sec;
  
  $('#time').text(year + '/' + month + '/' + day + ' ' + hour + ':' + min)

$ ->
  drawTime()
  setInterval drawTime, 60000 
  