// Copyright 2004-present Facebook. All Rights Reserved.

const coffee = require('coffee-script');
const babel = require('babel-core');

module.exports = {
  process(src, path) {
    if (path.endsWith('.coffee') || path.endsWith('.litcoffee')) {
      const es6 = coffee.compile(src, {bare: true});
      const js  = babel.transform(es6);

      return js;
    }
    return src;
  }
};
