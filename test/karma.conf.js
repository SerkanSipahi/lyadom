module.exports = function(config) {

	'use strict';

    config.set({
		basePath: '../',
        files: [],
        singleRun: false,
		port : 9876,
        colors: true,
        plugins: [
			'karma-systemjs',
        	'karma-chrome-launcher',
        	'karma-firefox-launcher',
        	'karma-opera-launcher',
        	'karma-safari-launcher',
        	'karma-jasmine',
        ],
        frameworks: ['systemjs', 'jasmine'],
        browsers: ['Chrome', 'Firefox', 'Safari', 'Opera', 'IE'],

        systemjs: {
            configFile: 'lyadom.config.js',
            files: [
            	'node_modules/rtts_assert/es6/src/rtts_assert.js',
            	'lib/*.js',
                'test/*test.js',
            ],
            testFileSuffix: 'test.js'
        },
    });

}
