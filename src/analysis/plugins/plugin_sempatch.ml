module SempatchPlugin = Plugin_API.MakePlugin (struct
    let name = "Semantic patch plugin"
    let short_name = "plugin_sempatch"
    let details = "Detect pattern with semantic patch"
  end)
