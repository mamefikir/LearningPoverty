*==============================================================================*
* LEARNING POVERTY (LP)
* Project information at: https://github.com/worldbank/LearningPoverty
*==============================================================================*

*-----------------------------------------------------------------------------
* Check that project profile was loaded, otherwise stops code
*-----------------------------------------------------------------------------
cap assert ${LP_profile_is_loaded} == 1
if _rc != 0 {
  noi disp as error "Please execute the profile_LearningPoverty initialization do in the root of this project and try again."
  exit
}


*-------------------------------------------------------------------------------
* Tasks in this project
*-------------------------------------------------------------------------------
* TASK 01_DATA: calculates learning poverty by combining multiple data sources
do "${clone}/01_data/012_programs/012_run.do"

* TASK 02_SIMULATION: simulates learning poverty from 2015 to 2030
do "${clone}/02_simulation/022_program/022_run.do"

* TASK 03_EXPORT_TABLES: exports tables for learning poverty technical paper
do "${clone}/03_export_tables/032_programs/032_run.do"

* TASK 04_REPO_UPDATE: creates csv files that are hosted in repo
do "${clone}/04_repo_update/042_programs/042_run.do"
*-------------------------------------------------------------------------------
