// Intentionally minimal app
const _ = require('lodash');
const args = require('minimist')(process.argv.slice(2));
console.log('hello from vuln-repo-mini', _.shuffle([1,2,3,4]), args);
