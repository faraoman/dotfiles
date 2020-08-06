wget https://github.com/michael-wolfenden/sqlops-theme-onedark/releases/download/v1.0.0/sqlops-theme-onedark-1.0.0.vsix
wget https://github.com/ecirpnaes/DbSnapshotCreator/releases/download/0.1.0/db-snapshot-creator-0.1.0.vsix
wget https://github.com/alx-ppv/ADS-delete-database/releases/download/0.0.3/deletedb-0.0.3.vsix
wget https://github.com/Matticusau/sqlops-mssql-db-insights/releases/download/0.2.2/mssql-db-insights-0.2.2.vsix
wget https://github.com/kevcunnane/azuredatastudio-newdatabase/releases/download/1.0.0/newdatabase-1.0.0.vsix
wget https://github.com/R0tenur/visualization/releases/download/v0.3.0/schema-visualization-0.3.0.vsix

azuredatastudio --install-extension sqlops-theme-onedark-1.0.0.vsix
azuredatastudio --install-extension db-snapshot-creator-0.1.0.vsix
azuredatastudio --install-extension deletedb-0.0.3.vsix
azuredatastudio --install-extension mssql-db-insights-0.2.2.vsix
azuredatastudio --install-extension newdatabase-1.0.0.vsix
azuredatastudio --install-extension schema-visualization-0.3.0.vsix
azuredatastudio --install-extension microsoft.datavirtualization
azuredatastudio --install-extension microsoft.admin-tool-ext-win
azuredatastudio --install-extension microsoft.managed-instance-dashboard
azuredatastudio --install-extension microsoft.import
azuredatastudio --install-extension microsoft.profiler
azuredatastudio --install-extension microsoft.schema-compare
azuredatastudio --install-extension microsoft.query-history
azuredatastudio --install-extension microsoft.server-report
azuredatastudio --install-extension microsoft.sql-assessment
azuredatastudio --install-extension visualstudioexptteam.vscodeintellicode
azuredatastudio --install-extension microsoft.whoisactive
