var WebApp = {};

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
