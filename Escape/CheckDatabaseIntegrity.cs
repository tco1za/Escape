using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using System.Diagnostics;
using System.Windows.Forms;


namespace Escape
{
    class CheckDatabaseIntegrity
    {
        private static string currentErrorMessage;

        private static List<string> getDatabaseTableNames()
        {
            List<string> tableNames = new List<string>();
            using (var db = new EscapeDatabaseEntities())
            {
                db.Database.Connection.Open();
                DataTable schema = db.Database.Connection.GetSchema("Tables");
                foreach (DataRow row in schema.Rows)
                {
                    tableNames.Add(row[2].ToString());
                }
            }
            return tableNames;
        }

        private static List<string> getRowsInComponentDependenciesThatContainErrors()
        {
            List<string> tableNames = getDatabaseTableNames();
            List<string> rowsThatContainErrors = new List<string>();
            using (var db = new EscapeDatabaseEntities())
            {
                var query = from e in db.ComponentDependencies
                            select e;

                foreach (var row in query)
                {
                    if (tableNames.Contains(row.componentName) == false || tableNames.Contains(row.needsComponentName) == false)
                    {
                        rowsThatContainErrors.Add(row.componentName + " " + row.needsComponentName);
                    }
                }
            }
            currentErrorMessage = "Database Incoherent! There are field entries in ComponentDependencies that dont match the names of Tables. Invalid rows are: ";
            currentErrorMessage += String.Join(", ", rowsThatContainErrors);
            return rowsThatContainErrors;
        }

        private static List<string> getRowsInComponentDependenciesTableThatHaveCircularDependencies()
        {
            // TODO : implement
            return new List<string>();
        }

        private static void createAndLinkToEntitiesAllDependenciesThatDontExist()
        {
            // TODO : implement
        }

        public static void isDatabaseCoherent()
        {
            Debug.Assert(getRowsInComponentDependenciesThatContainErrors().Count == 0, currentErrorMessage);
        }
    }
}
