/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
 $(document).ready(function(){
                $('#issue').DatePicker({
                        format:'m/Y',
                        date: $('#issue').val(),
                        current: $('#issue').val(),
                        starts: 1,
                        position: 'right',
                      
                onBeforeShow: function(){
            		$('#issue').DatePickerSetDate($('#issue').val(), true);
                },
                onChange: function(formated, dates){
        		$('#issue').val(formated);
                       // $('#startDate').DatePickerHide();
            	}
                });                   
                $('#deadline').DatePicker({
                        format:'m/d/Y',
                        date: $('#deadline').val(),
                        current: $('#deadline').val(),
                        starts: 1,
                        position: 'right',
                      
                onBeforeShow: function(){
            		$('#deadline').DatePickerSetDate($('#deadline').val(), true);
                },
                onChange: function(formated, dates){
        		$('#deadline').val(formated);
                       // $('#startDate').DatePickerHide();
            	}
                });
                
                $('#details').validate({
                    rules:{
                         deadline:{
                               required: true,
                               date: true
                         },
                         isse:{
                             required: true
                         }
                    } 
                });
            });

