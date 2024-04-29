-comp_unit { 
  -top {
    -lib default
    -primary stb
    -secondary ""
    -result_file edif/stb/stb.edf.gz
    -unit scm
  } 
  -dep {
    -kind top
    -lib default
    -primary stb
    -secondary ""
    -ver scm
    -input_file src/stb.scm
    -unit scm
  } 
}\
-comp_unit { 
  -top {
    -lib default
    -primary top
    -secondary ""
    -result_file edif/top/top.edf.gz
    -unit scm
  } 
  -dep {
    -kind top
    -lib default
    -primary top
    -secondary ""
    -ver scm
    -input_file src/top.scm
    -unit scm
  } 
}\
