target("log4cxx")
  set_kind("shared")
  includes("log4cxx")

target("slog")
  set_kind("shared")
  includes("slog", "log4cxx")
  add_options("log4cxx")