# Lab 3 Debarun Ghosh
# Readin and Writing Different FIles
# Part A
# Load necessary libraries
library(readr)

# Read data from a CSV file on disk
csv_data <- read_csv("path/to/your/file.csv")

# Read data from a TXT file on disk (assuming tab-delimited)
txt_data <- read_delim("path/to/your/file.txt", delim = "\t")

# Read data from a CSV file from a URL
url <- "https://example.com/data.csv"
web_csv_data <- read_csv(url)

# Read data from a TXT file from a URL (assuming tab-delimited)
web_txt_data <- read_delim(url, delim = "\t")

# Write data to a CSV file in a specific location
write_csv(csv_data, "path/to/output/csv_output.csv")

# Write data to a TXT file in a specific location
write_delim(txt_data, "path/to/output/txt_output.txt", delim = "\t")

# Part B
# Load necessary libraries
library(readxl)
library(XML)

# Read an Excel data sheet
excel_data <- read_excel("path/to/your/excel_file.xlsx", sheet = "Sheet1")

# Read an XML dataset
xml_data <- xmlParse("path/to/your/xml_file.xml")

# Access XML data
root <- xmlRoot(xml_data)
# Depending on your XML structure, you can navigate and
# extract data from the 'root' element

# Example of writing to an XML file (creating a simple example)
new_xml <- newXMLNode("root")
newXMLNode("data", "Some text data", parent = new_xml)
saveXML(new_xml, "path/to/output/xml_output.xml")
