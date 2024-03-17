LogLevel = {
  Error = 3,
  Warning = 2,
  Info = 1,
  Verbose = 0,
}

Debug = {
  logLevel = LogLevel.Verbose
}

---@param ... any
Debug.Log = function(...)
  if Debug.logLevel > LogLevel.Info then
    return
  end

  print("[Debug] ", ...)
end

return Debug
