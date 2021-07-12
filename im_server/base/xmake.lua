target("base")
  add_files("**.cpp", "**.cc")
  add_syslinks("pthread", "crypto")