$(function(){

	var calculator = {
		defaults : {
			calc_action : "#calculate" ,
			numerador : "#num" ,
			denominator : "#denominator" ,
                        divisor_symbol: ".icon-divide",
			result : "#fraction_calculator .result" ,
                        buttons: {
                            numbers: ".teclado button" ,
                            backspace: "#btn-backspace" ,
                            divisor: "#btn-divisor" ,
                        },
                        screen: "#calc-screen" ,
			reset_action : "#calc-reset"
		} ,
		init : function( options ) {
			this.settings = $.extend( {}, this.defaults, options ) ;
			this.reset();
                        this.numbers();
                        this.backspace();
                        this.divisor();
		} ,
                numbers: function() {
                    var settings = this.settings ;
                    var that = this ;
                    $(settings.buttons.numbers).click(function(){
                        var value = $(this).text();
                        var $screen = $(settings.screen) ;
                        
                        that._fillField_value(value, $screen);
                        if ( $.isNumeric(value) ) {
                            var numerador = $(settings.numerador).val();
                            var denominador = $(settings.denominator).val();
                            
                            $screen.text(numerador);
                            if ( $.isNumeric(denominador) ){
                               $(settings.buttons.divisor).trigger("click");
                               $screen.append(denominador);
                               return ;
                            }
                        }
                        
                        var screen_value = $screen.text() ;
                        if ( value === "," && ! $.isEmptyObject(screen_value) > 0 && screen_value.indexOf( "," ) == -1 ) {
                            $screen.text($screen.html() + value);
                        }
                        
                    })
                } ,
                _fillField_value:function(value, $screen){
                    var $num = $(this.settings.numerador);
                    var $denominador = $(this.settings.denominator);

                    if ( $.isNumeric( $denominador.val() ) || $screen.find(this.settings.divisor_symbol).length > 0 ){
                        $denominador.val($denominador.val() + '' + value);
                        return ;
                    }
                    
                    $num.val($num.val() + '' + value);
                } ,
                backspace: function() {
                   var settings = this.settings ;
                   $(settings.buttons.backspace).click(function(){
                       var $screen = $(settings.screen) ;
                       var original_value = $screen.text();
                       var new_value = original_value.substr(0,(original_value.length - 1));
                       $screen.text(new_value);
                   })
                } ,
                divisor: function() {
                   var settings = this.settings ;
                   $(settings.buttons.divisor).click(function(){
                       var $screen = $(settings.screen) ;
                       if ( $screen.text().length === 0 || $screen.find(settings.divisor_symbol).length > 0 ) {
                           return ;
                       }
                       
                       $screen.append('<span class="'+settings.divisor_symbol.replace(".","")+'"></span>');
                   } ) ;
                } ,
		calculate: function() {
			var that = this ;

			$(that.settings.calc_action).click(function (e) {
				e.preventDefault() ;

				var $btn = $(this) ;
				var $numerador = $( that.settings.numerador ) ;
				var $denominator = $( that.settings.denominator ) ;
				var $result = $( that.settings.result ) ;

				$btn.removeClass( "success" ).val( "=" ) ;
				$result.html("&nbsp;") ;
				if ( $.isEmptyObject( $numerador.val() ) ) {
					$numerador.focus() ;
					return ;
				}

				if ( $.isEmptyObject( $denominator.val() ) ) {
					$denominator.focus() ;
					return ;
				}

				var numerador = parseFloat( $numerador.val() );
				var denominator = parseFloat( $denominator.val() );
				var category = that.getCategory( numerador , denominator ) ;

				$result.text( numerador / denominator ) ;
				$btn.val( category ) ;
				$btn.addClass( "success" ) ;
				that.addToHistory( numerador, denominator, category );
			});
		} ,
		reset: function() {
			var settings = this.settings ;
			$(settings.reset_action).click(function (e) {
				e.preventDefault() ;
				$(settings.screen).html("&nbsp;") ;
				$( settings.result ).html("&nbsp;");
				$( settings.calc_action ).removeClass( "success" ).val( "=" ) ;
                                $(settings.numerador).val("");
                                $(settings.denominador).val("");
			}) ;
		}
	}

	calculator.init();
})