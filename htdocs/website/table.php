<?php include '_inc.header.php'; ?>

tbale view -> backbone frontend

<div id="wrapper" style="display: none;">sadsadad</div>

<script type="text/javascript" language="javascript" src="http://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.2.2/underscore-min.js"></script>
<script type="text/javascript" language="javascript" src="http://cdnjs.cloudflare.com/ajax/libs/backbone.js/0.5.3/backbone-min.js"></script>
<script type="text/javascript">

	var WebApp = {};
	WebApp.Router = Backbone.Router.extend({

		routes: {
			"/":'start'
		},

		start: function()
		{
			Application.mainView.getData();
		}
	});




	WebApp.MainView = Backbone.View.extend({
		el:'#wrapper',
		initialize:function()
		{
			console.log('init main view');
		},
		getData:function()
		{
			Elferpunkt.rpc.invoke('WebService.getGroupStage', [], this.getDataComplete);
			console.log('get data');
		},
		getDataComplete:function(response)
		{
			//console.log(response);
			console.log(this);
			//this.show();
		},
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
		}
	});

	var Application = {

		router:null,
		mainView:null,
		init:function()
		{

			this.mainView = new WebApp.MainView();
			this.router = new WebApp.Router();

			Application.router.navigate('/');
			Backbone.history.start();
		}

	};

	$(function()
	{
		Application.init();
	});

</script>

<?php include '_inc.footer.php'; ?>