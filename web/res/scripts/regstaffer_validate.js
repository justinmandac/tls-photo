/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
 $(document).ready(function(){
         $('#details').validate({
                rules:{
                        idnum:{
                            required: true,
                            digits:true, 
                            minlength: 8
                        },
                        emailf:{
                            required:true,
                            email:true
                        },
                        pnum:{
                            required: true,
                            digits:true
                        },
                        snum:{
                            digits:true
                        },
                        p2:{
                            required:true,
                            equalto:'#p1'
                        }
                    },
                    submitHandler: function(form){
                           form.submit();
                    }
                });      
                
 });

