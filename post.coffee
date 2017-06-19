###*
 * Convert input url, data to a form
 * @param  {String} url  form action
 * @param  {Object} data inputs name, value map
 * @return {String}      HTML markup
###
module.exports = (url, data) ->
  inputs = (
    for key, value of data
      """<input type="hidden" name=#{key} value=#{value}>"""
  ).join "\n  "

  """
    <form method="post" action=#{url}>
      #{inputs}
      <input type="submit" />
    </form>
  """
