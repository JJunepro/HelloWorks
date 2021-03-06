<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일정 추가</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- datepicker -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>
	<div class="group" id="addSchedule">
		<div class="group-head">
			<h1 class="zTree-h1">일정 추가</h1>
		</div>
		<div class="group-body">
			<form id="scheduleData">
				<div class="top">
					<input class="subject" id="subject" type="text" name="subject" placeholder="제목을 입력해주세요">
				</div>
				
				<div class="domain">
					<h3 class="zTree-h3">시작</h3>
				</div>
				<div class="domain">
					<input class="date" id="startDate" type="text" name="startDate">
				</div>
				
				<div class="domain">
					<h3 class="zTree-h3">종료</h3>
				</div>
				<div class="domain">
					<input class="date" id="endDate" type="text" name="endDate">
				</div>
				
				<div class="domain">
					<h3 class="zTree-h3">메모</h3>
				</div>
				<div class="domain">
					<textarea class="memo" id="memo" type="memo" name="scheduleMemo" rows="5" cols="20"
						placeholder="메모를 입력해주세요"></textarea>
				</div>
			</form>
				<button class="sendData" type="button" onclick="click_ok()">확인</button>
		</div>
	</div>
	<script type="text/javascript">
	
	$(function () {
		$.datepicker.setDefaults({
            dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
            dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
            monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
            monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
            yearSuffix: '년',
            dateFormat: 'yy-mm-dd',
            showMonthAfterYear:true,
            constrainInput: true    
        });
		
		$('#startDate').datepicker();
		$('#endDate').datepicker();
		
		$('#startDate').datepicker('setDate', 'today');
		$('#endDate').datepicker('setDate', 'today');
	});
	
	$.fn.serializeObject = function () {
		var o = {};
		var a = this.serializeArray();
		$.each(a, function () {
			var name = $.trim(this.name),
			value = $.trim(this.value);
			
			if(o[name]) {
				if (!o[name].push) {
					o[name] = [o[name]];
				} 
				o[name].push(value || '');
			}else {
				o[name] = value || '';
			}
		});
		return o;
	};
	
	function click_ok() {
		var scheduleData = JSON.stringify($('form#scheduleData').serializeObject());
		
		$.ajax({
			data: scheduleData,
			url: 'addSchedule',
			type: 'POST',
			dataType: 'json',
			success: function (data) {
				opener.parent.location.reload();
				window.close();
			}
		}); //ajax
	};
	
	</script>
	<script src="resources/schedule/js/addSchedule.js"></script>
</body>
</html>