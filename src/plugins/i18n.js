/* eslint-disable */

export default {
  install: (app, options) => {
    app.config.globalProperties.$translate = (key, params = {}) => {
      // en.hi => ['en','hi']
      // o: 누적 값 , i: 현재 값
      return key
        .split('.')
        .reduce((o, i) => {
          if (o) return o[i]
        }, options)
        .replace(/{\w+}/g, (match) => params[match.slice(1, -1)])
    }
  }
}
