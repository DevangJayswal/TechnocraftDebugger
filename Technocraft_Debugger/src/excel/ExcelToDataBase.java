package excel;
import java.io.FileInputStream;  
import java.io.IOException;  
import java.sql.DriverManager;  
import java.sql.SQLException;  
  
import org.apache.poi.hssf.usermodel.HSSFSheet;  
import org.apache.poi.hssf.usermodel.HSSFWorkbook;  
import org.apache.poi.poifs.filesystem.POIFSFileSystem;  
import org.apache.poi.ss.usermodel.Row;


import java.sql.Connection;
import java.sql.PreparedStatement;
  
//import com.mysql.jdbc.Connection;  
//import com.mysql.jdbc.PreparedStatement; 

public class ExcelToDataBase {
	
	 public static void main(String[] args) {  
	        try{  
	            Class.forName("com.mysql.cj.jdbc.Driver");  
	            Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/innoventaa","root","");  
	            con.setAutoCommit(false);  
	            PreparedStatement pstm = null ;  
	            FileInputStream input = new FileInputStream("D:\\Projects\\ImportAndExportExcel\\test.xls");  
	            POIFSFileSystem fs = new POIFSFileSystem( input );  
	            HSSFWorkbook wb = new HSSFWorkbook(fs);  
	            HSSFSheet sheet = wb.getSheetAt(0);  
	            Row row;  
	            for(int i=1; i<=sheet.getLastRowNum(); i++){  
	                row = sheet.getRow(i);  
	                //int id = (int) row.getCell(0).getNumericCellValue();  
	                String name = row.getCell(1).getStringCellValue();  
	                String salary = row.getCell(2).getStringCellValue();  
	                String sql = "INSERT INTO emp(name,salary) VALUES('"+name+"','"+salary+"')";  
	                pstm = (PreparedStatement) con.prepareStatement(sql);  
	                pstm.execute();  
	                System.out.println("Import rows "+i);  
	            }  
	            con.commit();  
	            pstm.close();  
	            con.close();  
	            input.close();  
	            System.out.println("Success import excel to mysql table");  
	        }catch(ClassNotFoundException e){  
	            System.out.println(e);  
	        }catch(SQLException ex){  
	            System.out.println(ex);  
	        }catch(IOException ioe){  
	            System.out.println(ioe);  
	        }  

}
	 
}

