module.exports =
  throwsError: false
  define: (key, value) ->
    throw new Error "constant #{key} already exists" if @hasOwnProperty key
    Object.defineProperty @, key,
      get: -> value
      set: ->
        throw new Error "accessing constant #{key}" if @throwsError