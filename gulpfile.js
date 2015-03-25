var gulp      = require('gulp');
var gulpUtil  = require('gulp-util');
var gulpSass  = require('gulp-sass');
var watch     = require('gulp-watch');
var connect   = require('gulp-connect');

gulp.task('gulpSass', function() {
  gulp.src('./scss/**/*.scss')
    .pipe(gulpSass({
      errLogToConsole: true
    }))
    .pipe(gulp.dest('./build'))
});

gulp.task('webserver', function() {
  connect.server({
    root: 'build',
    port: 3000,
    hostname: '0.0.0.0',
    livereload: false
  })
});

gulp.task('watch', function() {
  gulp.watch('./scss/**/*.scss', ['gulpSass']);
});

gulp.task('default', ['gulpSass', 'watch', 'webserver']);
