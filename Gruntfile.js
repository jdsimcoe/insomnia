module.exports = function (grunt) {
  'use strict';

  // Load local NPM tasks automagically
  require('matchdep').filterDev('grunt-*').forEach(grunt.loadNpmTasks);


  grunt.initConfig({

    // JS Hint
    // =====================================================

    jshint : {
      all: [
        'workspace/assets/js/main.js'
      ]
    },

    // LESS
    // =====================================================

    less: {
      main: {
        options: {
          compress: true
        },
        files: {
          'workspace/assets/css/main.css': 'workspace/assets/less/main.less'
        }
      }
    },

    // Concatenation
    // =====================================================

    concat: {
      options: {
        separator: ';'
      },
      dist: {
        src : [
          'workspace/assets/js/jquery.js',
          'workspace/assets/bootstrap/dist/js/bootstrap.min.js',
          'workspace/assets/js/responsimage.js',
          // 'workspace/assets/js/fitvids.js',
          'workspace/assets/js/main.js'],
        dest: 'workspace/assets/js/application.js'
      }
    },

    // Uglify.js
    // =====================================================

    uglify: {
      options: {
        mangle: false
      },
      bootstrap: {
        files: {
          'workspace/assets/js/application.min.js': ['workspace/assets/js/application.js']
        }
      }
    },

    // Notifications
    // =====================================================

    notify: {
      main: {
        options: {
          title: 'insomnina.dev',
          message: 'LESS and JS were compiled',
        }
      }
    },

    // Clean
    // =====================================================

    // clean: [ "manifest/cache/*.jpg" ],

    // Watch
    // =====================================================

    watch: {
      main: {
        files: ['**/*.less','**/*.js','!**/node_modules/**'],
        tasks: ['core', 'notify'],
        options: {
          livereload: true,
        }
      }
    }


});

// Main task
grunt.registerTask('core', ['jshint', 'concat', 'uglify:bootstrap', 'less:main']);
grunt.registerTask('build', ['core', 'notify']);
grunt.registerTask('default', ['build', 'watch'])};
