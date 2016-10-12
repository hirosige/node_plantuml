gulp        = require 'gulp'
plantuml    = require 'gulp-plantuml'
webserver   = require 'gulp-webserver'

# chart list
diag_name_1 = 'class'
diag_name_2 = 'activity'
diag_name_3 = 'component'
diag_name_4 = 'deployment'
diag_name_5 = 'object'
diag_name_6 = 'sequence'
diag_name_7 = 'state_machine'
diag_name_8 = 'use_case'

gulp.task 'webserver', ->
  gulp.src 'build/'
  .pipe webserver
    livereload: true,
    host: '192.168.33.11'
    port: '8000'

# chart task
gulp.task diag_name_1 + '_uml', ->
  gulp.src "./src/plantuml/" + diag_name_1 + "/**/*.pu"
  .pipe plantuml(
    jarPath: "bin/plantuml.jar"
  )
  .pipe gulp.dest "./build/diagram/" + diag_name_1

gulp.task diag_name_2 + '_uml', ->
  gulp.src "./src/plantuml/" + diag_name_2 + "/**/*.pu"
  .pipe plantuml(
    jarPath: "bin/plantuml.jar"
  )
  .pipe gulp.dest "./build/diagram/" + diag_name_2

gulp.task diag_name_3 + '_uml', ->
  gulp.src "./src/plantuml/" + diag_name_3 + "/**/*.pu"
  .pipe plantuml(
    jarPath: "bin/plantuml.jar"
  )
  .pipe gulp.dest "./build/diagram/" + diag_name_3

gulp.task diag_name_4 + '_uml', ->
  gulp.src "./src/plantuml/" + diag_name_4 + "/**/*.pu"
  .pipe plantuml(
    jarPath: "bin/plantuml.jar"
  )
  .pipe gulp.dest "./build/diagram/" + diag_name_4

gulp.task diag_name_5 + '_uml', ->
  gulp.src "./src/plantuml/" + diag_name_5 + "/**/*.pu"
  .pipe plantuml(
    jarPath: "bin/plantuml.jar"
  )
  .pipe gulp.dest "./build/diagram/" + diag_name_5

gulp.task diag_name_6 + '_uml', ->
  gulp.src "./src/plantuml/" + diag_name_6 + "/**/*.pu"
  .pipe plantuml(
    jarPath: "bin/plantuml.jar"
  )
  .pipe gulp.dest "./build/diagram/" + diag_name_6

gulp.task diag_name_7 + '_uml', ->
  gulp.src "./src/plantuml/" + diag_name_7 + "/**/*.pu"
  .pipe plantuml(
    jarPath: "bin/plantuml.jar"
  )
  .pipe gulp.dest "./build/diagram/" + diag_name_7

gulp.task diag_name_8 + '_uml', ->
  gulp.src "./src/plantuml/" + diag_name_8 + "/**/*.pu"
  .pipe plantuml(
    jarPath: "bin/plantuml.jar"
  )
  .pipe gulp.dest "./build/diagram/" + diag_name_8

gulp.task 'watch', ->
  gulp.watch "./src/plantuml/" + diag_name_1 + "/**/*.pu", [ diag_name_1 + "_uml" ]
  gulp.watch "./src/plantuml/" + diag_name_2 + "/**/*.pu", [ diag_name_2 + "_uml" ]
  gulp.watch "./src/plantuml/" + diag_name_3 + "/**/*.pu", [ diag_name_3 + "_uml" ]
  gulp.watch "./src/plantuml/" + diag_name_4 + "/**/*.pu", [ diag_name_4 + "_uml" ]
  gulp.watch "./src/plantuml/" + diag_name_5 + "/**/*.pu", [ diag_name_5 + "_uml" ]
  gulp.watch "./src/plantuml/" + diag_name_6 + "/**/*.pu", [ diag_name_6 + "_uml" ]
  gulp.watch "./src/plantuml/" + diag_name_7 + "/**/*.pu", [ diag_name_7 + "_uml" ]
  gulp.watch "./src/plantuml/" + diag_name_8 + "/**/*.pu", [ diag_name_8 + "_uml" ]
  gulp.src 'gulpfile.coffee'

gulp.task 'initial_install', [
  diag_name_1 + '_uml',
  diag_name_2 + '_uml',
  diag_name_3 + '_uml',
  diag_name_4 + '_uml',
  diag_name_5 + '_uml',
  diag_name_6 + '_uml',
  diag_name_7 + '_uml',
  diag_name_8 + '_uml'
]

gulp.task 'default', [
  'webserver'
  'watch'
]