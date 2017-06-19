post = require '../post'

test 'check for form output', ->
  form = post "http://google.com", { a: 1, b: 2}

  expect(form).toMatchSnapshot()
