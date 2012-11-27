/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
 $(document).ready(function(){
               //startDate
                $('#startDate').DatePicker({
                        format:'m/d/Y',
                        date: $('#startDate').val(),
                        current: $('#startDate').val(),
                        starts: 1,
                        position: 'right',
                onBeforeShow: function(){
            		$('#startDate').DatePickerSetDate($('#startDate').val(), true);
                },
                onChange: function(formated, dates){
        		$('#startDate').val(formated);
                       // $('#startDate').DatePickerHide();
            	}
                });
                //end date
                $('#endDate').DatePicker({
                        format:'m/d/Y',
                        date: $('#endDate').val(),
                        current: $('#endDate').val(),
                        starts: 1,
                        position: 'right',
                onBeforeShow: function(){
            		$('#endDate').DatePickerSetDate($('#endDate').val(), true);
                },
                onChange: function(formated, dates){
        		$('#endDate').val(formated);
                       // $('#endDate').DatePickerHide();
            	}
                });  
                //startTime
                $("#startTime").timePicker();
                //endTime
                $("#endTime").timePicker();
                //form validation
                $('#details').validate({
                    rules:{
                         sdate:{
                               required: true,
                               date: true
                         },
                         edate:{
                               required: true,
                               date: true                             
                         }

                    } 
                });
               
                
});

