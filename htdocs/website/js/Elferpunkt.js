var Elferpunkt = {

	init:function()
	{
		console.log('init app');
	},

	rpc:{
		invoke:function(method, params, callback)
		{
			/**
			 * calling rpc:
			 * Elferpunkt.rpc.invoke('ServiceClass.Method', [params], callbackMethod);
			 */

			JsonRpcClient.makeRequest(method, params, function(response)
			{
				console.log(response);

				if(response.result)
				{
					if(typeof(callback) == 'function')
					{
						callback(response.result);
					}
				}
				else
				{
					alert('JSON RPC ERROR!');
				}
			});
		}
	}
};

$(function()
{
	Elferpunkt.init();
});