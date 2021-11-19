$(document).ready(function() {
  setCalendar();
});

function setCalendar(){

  var calendarEl = document.getElementById('calendar');

  var calendar = new FullCalendar.Calendar(calendarEl, {
    plugins: [ 'dayGrid', 'timeGrid', 'list', 'interaction' ],
    header: {
      left   : 'today, prevYear, nextYear, viewWeekends',
      center : 'prev, title, next',
      right  : 'month, agendaWeek, agendaDay, listWeek'
    },
    locale: 'ko',
    timezone : "local", 
    navLinks: true, // can click day/week names to navigate views
    nextDayThreshold : "09:00:00",
    editable: true,
    allDaySlot: true,
    displayEventTime: true,
    displayEventEnd : true,
    firstDay : 1,
    weekNumbers : false,
    eventLimit: true, // allow "more" link when too many events
    initialView: 'dayGridMonth',
    selectable: true,
    weekNumberCalculation : "ISO",
    minTime: '10:00:00',
    maxTime: '24:00:00',
    contentHeight: 'auto',
    timeFormat  : 'HH:mm',
    defaultTimedEventDuration : '01:00:00',
    editable : true,
    slotLabelFormat : 'HH:mm',
    weekends: true,
    nowIndicator : true,
    dayPopoverFormat : 'MM/DD dddd',
    longPressDelay            : 0,
    eventLongPressDelay       : 0,
    selectLongPressDelay      : 0,
    views : {  month : { eventLimit : 12 } },// 한 날짜에 최대 이벤트 12개, 나머지는 + 처리됨
    views: {
    month : { columnFormat : 'dddd'},
    agendaWeek : {
      columnFormat : 'M/D ddd',
      titleFormat : 'YYYY년 M월 D일',
      eventLimit : false
      },
    agendaDay : {
      columnFormat : 'dddd',
      eventLimit : false
      },
    listWeek : {columnFormat : ''}
    },
    eventSources: [{
      events: function(info, successCallback, failureCallback) {
        $.getJSON( "selectEventList.json", function( data ) {						
          successCallback(data);
        });
      }
    }]
  });
      
  calendar.render();

}

var calendar = $('#calendar').fullCalendar({
  locale: 'ko',
  timezone: "local",
  nextDayThreshold: "09:00:00",
  allDaySlot: true,
  displayEventTime: true,
  displayEventEnd: true,
  firstDay: 1, //월요일이 먼저 오게 하려면 1
  weekNumbers: false,
  selectable: true,
  weekNumberCalculation: "ISO",
  eventLimit: true,
  views: {
    month: {
      eventLimit: 12
    } // 한 날짜에 최대 이벤트 12개, 나머지는 + 처리됨
  },
  eventLimitClick: 'week', //popover
  navLinks: true,
  defaultDate: moment('2021-11'), //실제 사용시 현재 날짜로 수정
  timeFormat: 'HH:mm',
  defaultTimedEventDuration: '01:00:00',
  editable: true,
  minTime: '00:00:00',
  maxTime: '24:00:00',
  slotLabelFormat: 'HH:mm',
  weekends: true,
  nowIndicator: true,
  dayPopoverFormat: 'MM/DD dddd',
  longPressDelay: 0,
  eventLongPressDelay: 0,
  selectLongPressDelay: 0,
  header: {
    left: 'today, prevYear, nextYear, viewWeekends',
    center: 'prev, title, next',
    right: 'month, agendaWeek, agendaDay, listWeek'
  },
  views: {
    month: {
      columnFormat: 'dddd'
    },
    agendaWeek: {
      columnFormat: 'M/D ddd',
      titleFormat: 'YYYY년 M월 D일',
      eventLimit: false
    },
    agendaDay: {
      columnFormat: 'dddd',
      eventLimit: false
    },
    listWeek: {
      columnFormat: ''
    }
  },
  eventSources: [{
    events: function(info, successCallback, failureCallback) {
      $.getJSON( "selectEventList.json", function( data ) {	 //TODO					
        successCallback(data);
      });
    }
  }]


  
})