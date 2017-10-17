gulp = require('gulp')

gulp.task 'archive', ->
  date = getDate()

  gulp.src([
    './out/themes/*/{css,img,js}/*.{css,jpg,js,png,svg}'
    './out/*.html'
  ], base: './out')
    .pipe(gulp.dest("./src/archive/#{date}"))

dateRe = /^[0-9]{4}[0-9]{2}[0-9]{2}$/

getDate = ->
  date = process.argv[4]

  if (!dateRe.test(date))
    throw new Error('''
    You must provide an archive date in the format YYYYMMDD.
    Example:
      yarn archive 20170923
    ''')

  date
