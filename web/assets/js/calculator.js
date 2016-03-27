$(function(){

	var calculator = {
		defaults : {
			entered1 : "#calc-value1" ,
			entered2 : "#calc-value2" ,
                        divisor_symbol: ".icon-divide",
                        buttons: {
                            numbers: ".teclado button" ,
                            backspace: "#btn-backspace" ,
                            divisor: "#btn-divisor" ,
                            decimal: "#btn-decimal" ,
                            clean: "#btn-clean" ,
                            execute: "#btn-calculate"
                        },
                        screen: "#calc-screen",
                        warnings: "div.visor ul.warnings",
                        category_info: "div.visor div.tipo-fracao",
		} ,
		init : function( options ) {
                        this._initialize( options ) ;
			this.clean();
                        this.numbers();
                        this.backspace();
                        this.divisor();
                        this.key_events();
		} ,
                _initialize: function( options ) {
                    this.settings = $.extend( {}, this.defaults, options ) ;
                    this.$screen = $(this.settings.screen);
                    this.$entered1 = $(this.settings.entered1);
                    this.$entered2 = $(this.settings.entered2);
                    this.$warnings = $(this.settings.warnings);
                    this.$category_info = $(this.settings.category_info);
                } ,
                numbers: function() {
                    var settings = this.settings ;
                    var calc = this ;
                    $(settings.buttons.numbers).click(function(){
                        var typed_value = $(this).text();
                        
                        var compare_value = calc.$entered2.val().length > 0 ? calc.$entered2.val() : calc.$entered1.val();
                        if ( typed_value === "," ) {
                            if( compare_value.length === 0 || compare_value.indexOf( "," ) !== -1 ) {
                                return ;
                            }
                            
                            calc.$screen.append(typed_value);
                        }
                                                
                        calc._fillField_value(typed_value);
                        if ( $.isNumeric(typed_value) ) {
                            calc.$screen.text(calc.$entered1.val());
                            if ( calc.$entered2.val().length > 0 ){
                               $(settings.buttons.divisor).trigger("click");
                               calc.$screen.append(calc.$entered2.val());
                            }
                            
                            return ;
                        }
                    });
                } ,
                _fillField_value:function(typed_value){
                    if ( ! $.isNumeric(typed_value) && typed_value !== "," ) {
                        return ;
                    }
                    
                    if ( $.isNumeric( this.$entered2.val() ) || this.$screen.find(this.settings.divisor_symbol).length > 0 ){
                        if ( typed_value === "," && this.$entered2.val().indexOf( "," ) !== -1 ){
                            typed_value = '';
                        }
                        
                        this.$entered2.val(this.$entered2.val() + '' + typed_value);
                        return ;
                    }
                    
                    if ( typed_value === "," && this.$entered1.val().indexOf( "," ) !== -1 ){
                        typed_value = '';
                    }
                    
                    this.$entered1.val(this.$entered1.val() + '' + typed_value);
                } ,
                backspace: function() {
                   var settings = this.settings ;
                   var calc = this ;
                   
                   $(settings.buttons.backspace).click(function(){
                       calc._clean_info();
                       var has_divisor_symbol = calc.$screen.find(calc.settings.divisor_symbol).length > 0 ;
                                                                     
                       if ( has_divisor_symbol && calc.$entered2.val().length === 0 ) {
                           calc.$screen.find(calc.settings.divisor_symbol).remove();
                           return ;
                       }
                       
                       var $entered = calc.$entered2.val().length > 0 ? calc.$entered2 : calc.$entered1; 
                       var new_entered_value = $entered.val().substr(0,($entered.val().length - 1));
                       $entered.val(new_entered_value);
                       
                       var screen_content = calc.$screen.html(); 
                       var new_content = screen_content.substr(0,(screen_content.length - 1));
                       calc.$screen.html(new_content);
                   });
                } ,
                divisor: function() {
                   var settings = this.settings ;
                   var calc = this ;
                   $(settings.buttons.divisor).click(function(){
                       if ( calc.$screen.text().length === 0 || calc.$screen.find(settings.divisor_symbol).length > 0 ) {
                           return ;
                       }
                       
                       calc._clean_info();
                       calc.$screen.append('<span class="'+settings.divisor_symbol.replace(".","")+'"></span>');
                   } ) ;
                } ,
		clean: function() {
                        var calc = this ;
			$(calc.settings.buttons.clean).on( "click" , function (e) {
                            e.preventDefault() ;
                            calc.$screen.html("&nbsp;") ;
                            calc.$entered1.val("");
                            calc.$entered2.val("");
                            calc._clean_info();
			}) ;
		} ,
                _clean_info: function(){
                   this.$category_info.text("");
                   this.$warnings.remove(); 
                } ,
                key_events: function() {
                    var calc = this ;
                    $(document).on("keyup" , function(e){
                        e.preventDefault() ;
                        
                        switch (e.keyCode) {
                            case 13:
                                $(calc.settings.buttons.execute).trigger("click");
                                break;
                                
                            case 8:
                            case 46:
                                $(calc.settings.buttons.backspace).trigger("click");
                                break;
                                
                            case 27:
                            case 67:
                                $(calc.settings.buttons.clean).trigger("click");
                                break;
                                
                            case 111:
                                $(calc.settings.buttons.divisor).trigger("click");
                                break;
                                
                            case 110:
                            case 190:
                            case 108:
                            case 188:
                                $(calc.settings.buttons.decimal).trigger("click");
                                break;
                        }
                    });
                    
                    $(document).on( "keypress" , function(e){
                        e.preventDefault() ;
                        
                        var charCode = String.fromCharCode(e.which);
                        if ( $.isNumeric(charCode) && parseInt(charCode) < 10 ) {
                            $(calc.settings.buttons.numbers + ":contains(" + charCode + ")" ).trigger("click");
                        }
                    });
                }
	};

	calculator.init();
});