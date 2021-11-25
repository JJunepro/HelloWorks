document.addEventListener('DOMContentLoaded', function(){
	var calendar = $('#calendar').fullCalendar({
	 /** ******************
	   *  OPTIONS
	   * *******************/
	  locale  : 'ko',    
	  timezone : "local", 
	  nextDayThreshold : "09:00:00",
	  allDaySlot  : true,
	  displayEventTime  : true,
	  displayEventEnd  : true,
	  firstDay : 0, //월요일이 먼저 오게 하려면 1
	  weekNumbers : false,
	  selectable : true,
	  weekNumberCalculation : "ISO",
	  eventLimit: true,
	  views : { month : { eventLimit : 12 } // 한 날짜에 최대 이벤트 12개, 나머지는 + 처리됨
		  },
	  eventLimitClick : 'week', //popover
	  navLinks : true,
	  timeFormat : 'HH:mm',
	  defaultTimedEventDuration : '01:00:00',
	  editable : true,
	  minTime  : '00:00:00',
	  maxTime : '24:00:00',
	  slotLabelFormat : 'HH:mm',
	  weekends : true,
	  nowIndicator : true,
	  dayPopoverFormat : 'MM/DD dddd',
	  longPressDelay : 0,
	  eventLongPressDelay : 0,
	  selectLongPressDelay : 0,  
	  header : {
		  left   : 'today, prevYear, nextYear, viewWeekends',
		  center : 'prev, title, next',
		  right  : 'month, agendaWeek, agendaDay, listWeek'
		  },
	  views: {
		  month : {columnFormat : 'dddd'},
		  agendaWeek : {
			  columnFormat : 'M/D ddd',
			  titleFormat  : 'YYYY년 M월 D일',
			  eventLimit   : false 
			  },
		agendaDay : {
			columnFormat : 'dddd', eventLimit   : false
			},
			listWeek : { columnFormat : '' }
			},
	events: [
	
	  {
	    title: 'default',
	    start: "2021-11-11",
	    end: '2021-11-11'
	  }
	]
	});
	});