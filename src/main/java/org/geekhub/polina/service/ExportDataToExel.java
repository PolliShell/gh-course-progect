package org.geekhub.polina.service;

import org.apache.commons.csv.CSVFormat;
import org.apache.commons.csv.CSVPrinter;
import org.apache.commons.csv.QuoteMode;
import org.springframework.stereotype.Service;

import java.io.BufferedWriter;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.sql.*;


@Service
public class ExportDataToExel {




    public void exportDataToExel() {

        // File path and name.
        File filePath = new File("c:/demo");
        String fileName = filePath.toString() + "\\personexport.csv";

        // Connection variable.
        Connection connect = null;

        try {

            // Connect to database.
            connect = DriverManager.getConnection(
                    "jdbc:postgresql://localhost:5432/postgres",
                    "postgres", "fibi2017");

        } catch (SQLException e) {

            // Message confirming unsuccessful database connection.
            System.out.println("Database connection unsuccessful.");

            // Stop program execution
            System.exit(1);

        }

        // Check to see if the file path exists.
        if (filePath.isDirectory()) {

            String sqlSelect =
                    "SELECT ci.name AS city, AVG(p.price) AS avg_price\n" +
                            "FROM products p\n" +
                            "         JOIN cities ci ON p.dispatch_city = ci.id\n" +
                            "WHERE p.category_id = 3\n" +
                            "GROUP BY ci.name";
            try {

                Statement statement  = connect.createStatement();
                ResultSet results    = statement.executeQuery(sqlSelect);

                // Open CSV file.
                BufferedWriter writer = Files.newBufferedWriter(Paths.get(fileName));

                // Add table headers to CSV file.
                CSVPrinter csvPrinter = new CSVPrinter(writer, CSVFormat.DEFAULT
                        .withHeader(results.getMetaData()).withQuoteMode(QuoteMode.ALL));

                // Add data rows to CSV file.
                while (results.next()) {

                    csvPrinter.printRecord(
                            results.getInt(1),
                            results.getString(2),
                            results.getString(3));

                }

                // Close CSV file.
                csvPrinter.flush();
                csvPrinter.close();

                // Message stating export successful.
                System.out.println("Data export successful.");

            } catch (SQLException e) {

                // Message stating export unsuccessful.
                System.out.println("Data export unsuccessful.");
                System.exit(1);

            } catch (IOException e) {

                // Message stating export unsuccessful.
                System.out.println("Data export unsuccessful.");
                System.exit(1);

            }

        } else {

            // Display a message stating file path does not exist and exit.
            System.out.println("File path does not exist.");
            System.exit(1);

        }

    }

}