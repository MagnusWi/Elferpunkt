var Application = {

	data:null,
	alert:null,
	activity:null,
	router:null,
	views:{
		startView:null,
		signupView:null,
		successView:null
	},

	init:function()
	{
		console.log('Application.init()');

		// init views
		this.views.startView = new WebApp.StartView({el:'#startView'});
		this.views.signupView = new WebApp.SignupView({el:'#signupView'});
		this.views.successView = new WebApp.SuccessView({el:'#successView'});

		// init layer
		this.alert = new WebApp.Alert();
		this.activity = new WebApp.Activity();

		// init router
		this.router = new WebApp.Router();
		Application.router.navigate('/');
		Backbone.history.start();

		this.data = {
			answerIsCorrect:false
		};

	},

	rpc:{

		invoke:function(method, params, callback)
		{
			JsonRpcClient.makeRequest(method, params, function(response)
			{
				if(response.result)
				{
					if(typeof(callback) == 'function')
					{
						callback(response.result);
					}
				}
				else
				{
					console.log(response.error);
					Application.alert.show({headline:'JSON RPC ERROR!', message:''});
				}


			});
		}
	},

	hideAllViews:function()
	{
		for(var view in this.views)
		{
			this.views[view].hide();
		}
	},

	switchToView:function(viewName)
	{
		this.hideAllViews();
		this.views[viewName].show();
	}
};


var WebApp = {};
WebApp.Router = Backbone.Router.extend({

	routes: {
		"/":'start',
		"/signup":'signup',
		"/success": 'success'
	},

	start: function()
	{
		console.log('Router -> start()');
		Application.switchToView('startView');

		//Application.views.startView.show();
	},

	signup:function()
	{
		console.log('Router -> signup()');
		
		if(Application.data.answerIsCorrect === false)
		{
			Application.router.navigate('/', true);
		}
		else
		{
			Application.switchToView('signupView');
		}

	},

	success: function()
	{
		console.log('Router -> success()');

		Application.switchToView('successView');
	}
});




WebApp.StartView = Backbone.View.extend({

	show:function()
	{
		$(this.el).show();
	},
	hide:function()
	{
		$(this.el).hide();
	},
	events: {
		"click .form-submit": 'handleFormSubmit'
	},

	handleFormSubmit:function()
	{
		this.collectForm();
		return false;
	},

	collectForm:function()
	{
		console.log('StartView -> collectForm()');

		var answer = $('input[name=answer]:checked').val();
		if(typeof(answer) == 'string' && answer.length > 0)
		{
			Application.rpc.invoke('TabService.saveAnswer', [answer], this.rpcCallback);
		}
		else
		{
			Application.alert.show({headline:'Fehler!', message:'Sie müssen eine Antowrt auswählen!'});
		}
	},

	rpcCallback:function(result)
	{
		if(result.answer === false)
		{
			Application.alert.show({headline:'Uups!', message:'Das war leider die falsche Antwort!'});
		}
		else
		{
			Application.data.answerIsCorrect = true;
			Application.router.navigate('/signup', true);
		}
	}
});

WebApp.SignupView = Backbone.View.extend({

	show:function()
	{
		$(this.el).show();
	},
	hide:function()
	{
		$(this.el).hide();
	},

	events: {
		"click .form-signup-submit": 'handleFormSubmit'
	},

	handleFormSubmit:function()
	{
		this.collectForm();
		return false;
	},

	collectForm:function()
	{
		console.log('SignupView -> collectForm()');


		Application.data.formError = false;
		Application.data.formData = {};
		Application.data.formErrorMessage = [];

		WebApp.utils.form.validateField('#formFirstname', 'Vorname');
		WebApp.utils.form.validateField('#formLastname', 'Nachname');
		WebApp.utils.form.validateField('#formEmail', 'E-Mail Adresse', true);
		WebApp.utils.form.validateCheckbox('#formTerms', 'Teilnahmebedingungen');

		var nwlt = ($('#formNewsletter').is(':checked')) ? 1 : 0;
		Application.data.formData['newsletter'] = {title:'Newsletter', value:nwlt};

		if(Application.data.formError === false)
		{
			Application.rpc.invoke('TabService.saveParticipant', [Application.data.formData], this.rpcCallback);
		}
		else
		{
			Application.alert.show({headline:'Uups!', message:'Bitte fülle folgende Felder aus: ' + Application.data.formErrorMessage.join(", ")});
		}
	},

	rpcCallback:function(result)
	{
		if(result.answer === false)
		{
			Application.alert.show({headline:'Uups!', message:'Das war leider die falsche Antwort!'});
		}
		else
		{
			Application.router.navigate('/success', true);
		}
	}

});

WebApp.SuccessView = Backbone.View.extend({

	show:function()
	{
		$(this.el).show();
	},
	hide:function()
	{
		$(this.el).hide();
	}

});

WebApp.Activity = Backbone.View.extend({

	el:'#activityLayer',

	show:function()
	{
		$(this.el).show();
	},

	hide:function()
	{
		$(this.el).hide();
	}
});


WebApp.Alert = Backbone.View.extend({

	id:'alert',
	data:null,
	initialize:function()
	{
		console.log('Alert -> initialize()');
	},

	render:function(confObj)
	{
		this.data = {
			headline:'Alert Headline',
			message:'Alert Body Message',
			button:{
				label:'Ok',
				callback:null,
				forceCallback:false
			}
		};

		// Merge two objects recursively, modifying the first.
		_.extend(this.data, confObj);

		var tpl = _.template('<div class="alert-inner"><div class="alert-header"><%= headline %></div><div class="alert-body"><%= message %></div><div class="alert-footer"><a href="#" class="alert-close"><%= button.label %></a></div></div>', this.data);

		$('body').append($(this.el).html(tpl));

		return this;
	},

	events:{
		"click .alert-close":'hide'
	},

	show:function(confObj)
	{
		this.render(confObj);
		$(this.el).show();
	},

	hide:function()
	{
		if(this.data.button.forceCallback === true)
		{
			if(typeof(this.data.button.callback) == 'function')
			{
				this.data.button.callback();
				this.data.button.callback = null;
			}
		}

		var scope = this;
		$(this.el).fadeOut('fast', function(){
			scope.destroy();
		});
		
		return false;
	},

	destroy:function()
	{
		if(typeof(this.data.button.callback) == 'function')
		{
			this.data.button.callback();
		}

		$(this.el).detach();
	}
});



WebApp.utils = {
	form:{
		validateField:function(field, fieldName, isEmail)
		{
			$(field).removeClass('error');

			if($.trim($(field).val()).length <= 0)
			{
				$(field).addClass('error');
				Application.data.formError = true;
				Application.data.formErrorMessage.push(fieldName);
			}
			else
			{
				if(isEmail === true)
				{
					var pattern = /^([a-zA-Z0-9+_.-])+@([a-zA-Z0-9_.-])+\.([a-zA-Z])+([a-zA-Z])+/;
					var mailAddress = $(field).val();

					if(!pattern.test(mailAddress))
					{
						Application.data.formError = true;
						$(field).addClass('error');
						Application.data.formErrorMessage.push(fieldName);
					}
					else
					{
						Application.data.formData[$(field).attr('name')] = {title:fieldName, value:$(field).val()};
					}
				}
				else
				{
					Application.data.formData[$(field).attr('name')] = {title:fieldName, value:$(field).val()};
				}
			}
		},
		validateCheckbox:function(box, fieldName, type)
		{
			if($(box).is(':checked'))
			{
				$(box).next('label').removeClass('error');

				if(type && type == 'int')
				{
					Application.data.formData[$(box).attr('name')] = {title:fieldName, value:parseInt($(box).val())};
				}
				else
				{
					Application.data.formData[$(box).attr('name')] = {title:fieldName, value:$(box).val()};
				}
			}
			else
			{
				$(box).next('label').addClass('error');
				Application.data.formError = true;
				Application.data.formErrorMessage.push(fieldName);
			}
		}
	}
};


$(function()
{
	Application.init();
});