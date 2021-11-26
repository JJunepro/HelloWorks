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
			
  /* ****************
   *  일정 받아옴 
   * ************** */
events: function (start, end, timezone, callback) {
    $.ajax({
      type: "get",
      url: "getEvent",
      dataType: "json",
      data: {
        // 화면이 바뀌면 Date 객체인 start, end 가 들어옴
        //startDate : moment(start).format('YYYY-MM-DD'),
        //endDate   : moment(end).format('YYYY-MM-DD')
      },
      success: function (response) {
        var fixedDate = response.map(function (array) {
          if (array.allDay && array.start !== array.end) {
            array.end = moment(array.end).add(1, 'days'); // 이틀 이상 AllDay 일정인 경우 달력에 표기시 하루를 더해야 정상출력
          }
          return array;
        });
        callback(fixedDate);
	      }
	    });
	 }
			
	});
	
	
	