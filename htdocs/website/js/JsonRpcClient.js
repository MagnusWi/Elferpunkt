/**
 * User: Marco
 * Date: 27.09.11
 * Time: 11:12
 */

JsonRpcClient = {
	makeRequest:function(method, params, callback) {
		var request = {
			method: method,
			params: params,
			id: new Date().getTime()
		};

		var payload = JSON.stringify(request);

		$.ajax({
			type: 'POST',
			url: 'rpc/JsonRpcServer.php',
			data: payload,
			dataType: 'json',
			success: function(response) {
				if (typeof(callback) == 'function') {
					callback(response);
				}
			},
			error: function(response) {
				if (typeof(callback) == 'function') {
					callback(response);
				}
			}
		});
	}
};