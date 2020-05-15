// api.js
import request from 'request.js'

const api = {
	test(data) {
		return request('test.json', data)
	}
}

export default api