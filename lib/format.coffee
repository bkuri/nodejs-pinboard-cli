'use strict'


module.exports =
  format: (what) ->
    return (data, type='result') ->
      {render} = (require './templates')
      result = switch what

        when 'color'
          data = switch
            when data.dates? then data.dates
            when data.notes? then data.notes
            when data.posts? then data.posts
            when data.result? then data.result
            else data

          render = render(type)
          text = ''

          switch type
            when 'dates', 'tags'
              text += render(k, data[k]) for k in Object.keys(data)

            when 'notes'
              text += render(n.updated_at, n.id, n.title) for n in data

            when 'suggestions'
              category = ['popular', 'recommended']
              text += render(c, data[i][c].join ', ') for c, i in category

            else
              text += render(item) for item in data

          text.split(',').join('')


        when 'json'
          JSON.stringify(data)

        else
          type = 'error'
          render(type)('Unknown format specified.')


      isError = (type is 'error')

      if isError then console.error(result)
      else console.log(result)
      process.exit isError
