const { convertCsvToXlsx } = require('/usr/local/lib/node_modules/@aternus/csv-to-xlsx');

// let source = path.join(__dirname, 'test.csv');
// let destination = path.join(__dirname, 'test.xlsx');
let source =   'test.csv' ;
let destination =   'test.xlsx' ;

try {
  convertCsvToXlsx(source, destination);
} catch (e) {
  console.error(e.toString());
}