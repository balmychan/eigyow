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
  console.log(year + '/' + month + '/' + day + ' ' + hour + ':' + min)
  
  $('#time').text(year + '/' + month + '/' + day + ' ' + hour + ':' + min)

$ ->
  drawTime()
  setInterval drawTime, 60000 
  