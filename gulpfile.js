var gulp = require('gulp');
var coffee = require('gulp-coffee');
var concat = require('gulp-concat');
var livereload = require('gulp-livereload');
var cjsx = require('gulp-cjsx');


gulp.task('coffee', function() {
  gulp.src(['src/*.coffee'])
  .pipe(coffee())
	.pipe(concat('build.js'))
  .pipe(gulp.dest('build'))
	.pipe(livereload());
});

gulp.task('coffee2jsx', function() {
  gulp.src(['src/mixins/*.cjsx', 'src/components/*.cjsx'])
    .pipe(cjsx({bare: true}))//.on('error', gutil.log))
    .pipe(concat('build.jsx'))
    .pipe(gulp.dest('build'))
    .pipe(livereload());
});

gulp.task('vendor', function() {
  gulp.src(['src/vendor/*.js'])
	.pipe(concat('build.js'))
  .pipe(gulp.dest('build'))
	.pipe(livereload());
});

gulp.task('watch', function() {
  livereload.listen();
  //gulp.watch('src/*.coffee', ['coffee', 'vendor']);
  gulp.watch('src/**/*.cjsx', ['coffee2jsx']);
});

gulp.task('default', function() {
  //gulp.start('coffee');
  gulp.start('vendor');
  gulp.start('coffee2jsx');
  gulp.start('watch');
});
