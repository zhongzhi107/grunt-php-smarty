'use strict';

module.exports = function (grunt) {

	var gruntConfig = {

		path: {
			app: 'app',
			dist: 'dist',
			tmp: '.tmp'
		},

		php: {
			dev: {
				options: {
					port: 5000,
					base: '<%=path.app%>',
					//keepalive: true,
					//open: true,
					router: 'router.php'
				}
			}
		},

		watch: {
			less: {
				files: [
					'<%=path.app%>/**/*.less'
				],
				tasks: ['less:dev']
			},
			files: [
				'<%=path.app%>/**/*.tpl',
				'<%=path.app%>/**/*.js',
			],
			options: {
				livereload: true
			}
		},

		// compile .less to .css
		less: {
			dev: {
				files: [{
					expand:	true,
					cwd: '<%=path.app%>',
					src: 'static/css/*.less',
					dest: '<%=path.tmp%>',
					ext: '.css'
				}]
//				files: {
//					'.tmp/static/css/main.css': '<%=path.app%>/static/css/main.less'
//				}
			}
		},

		// delete temporary directory
		clean: {
			server:	'<%=path.tmp%>'
		},

	};

    grunt.initConfig(gruntConfig);

	require('matchdep').filterDev('grunt-*').forEach(grunt.loadNpmTasks);

    grunt.registerTask('default', ['clean', 'less:dev', 'php', 'watch']);

};