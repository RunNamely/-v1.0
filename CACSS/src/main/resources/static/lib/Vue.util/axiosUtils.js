/**
 *
 * post方法
 * 
 * 
 */
function promisePost(url, params) {
	return new Promise(function(resolve, reject) {
		axios.post(url, params)
			.then(function(res) {
				resolve(res.data);
			})
			.catch(function(err) {
				reject(err);
			});
	})
}

function promiseGet(url, params) {
	return new Promise(function(resolve, reject) {
		axios.get(url, params)
			.then(function(res) {
				resolve(res.data);
			})
			.catch(function(err) {
				reject(err);
			});
	})
}