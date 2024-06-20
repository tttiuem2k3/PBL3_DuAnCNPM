package DAO;

import javax.servlet.ServletException;

import javax.servlet.http.*;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.ss.usermodel.DataFormatter;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.util.SystemOutLogger;

import BEAN.Option;
import BEAN.Question;
import BEAN.Question_01;
import Controller.UploadQuestion;
import sun.net.www.http.KeepAliveCache;

import java.text.ParseException;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.*;
import java.util.*;

public class UploadQuestionDAO {

	public static void ImportExcel(HttpServletRequest request, HttpServletResponse response, Connection conn, Part ex)
			throws ServletException, IOException {
		// File
		FileInputStream inp;

		try {
			inp = (FileInputStream) ex.getInputStream();
			HSSFWorkbook wb = new HSSFWorkbook(new POIFSFileSystem(inp));

			// Lay so dong
			Sheet sheet = wb.getSheetAt(0);
			System.out.println("Import file ");
			int dem=0;
			for (int i = 1; i <= sheet.getLastRowNum(); i++)
			{
				Row row = sheet.getRow(i);
				if(row.getCell(0)!=null)
				{
					dem++;
				}
				
			}
			for (int i = 1; i <= dem; i++) {

				Row row = sheet.getRow(i);
				Question_01 qs = new Question_01();
				List<Option> oplist = new ArrayList<Option>();
				try {
					DataFormatter formatter = new DataFormatter();

					if(row.getCell(0)!=null) {qs.setNumber((int) row.getCell(0).getNumericCellValue());}
					
//					System.out.println(row.getCell(0).getNumericCellValue());
//					System.out.println(row.getCell(1).getStringCellValue());
//					System.out.println(row.getCell(2).getStringCellValue());
					
					if(row.getCell(1)!=null) {qs.setContentquestion(row.getCell(1).getStringCellValue());}
					if(row.getCell(2)!=null) {qs.setCorrectoption(row.getCell(2).getStringCellValue());}
					//qs.setMediaid(Integer.parseInt(formatter.formatCellValue(row.getCell(3))));
					if(row.getCell(3)!=null) {qs.setMediaid(Integer.parseInt(row.getCell(3).getStringCellValue()));}
					if(row.getCell(4)!=null) {qs.setQuestiontypeid((int) row.getCell(4).getNumericCellValue());}

					int j = 5;
					int maxcol = j + qs.getNumber();
					//System.out.print("maxcol= " + maxcol);

					//int k=0;
					while (j < maxcol && row.getCell(j)!=null) {
						Option op = new Option();

						// op.setOptionname(String.valueOf((char) (65 + k++))+". "+row.getCell(j).getStringCellValue());
						//char charAt = (char) op.getOptionname().charAt(0);
						op.setOptionname(row.getCell(j).getStringCellValue());
						char charAt= (qs.getCorrectoption()).charAt(0);
						if ((charAt)==(op.getOptionname().charAt(0))) {
							op.setIsanswer(true);
						} else {
							op.setIsanswer(false);
						}
						oplist.add(op);
						j++;
					}
				} catch (Exception e) {
					e.printStackTrace();
				}

				if(qs.getContentquestion().equals("")==false) {UploadQuestionDAO.InsertData(request, qs, oplist, conn);}

			}
		} catch (FileNotFoundException e) {
			request.setAttribute("message", e.getMessage());

		} catch (IOException e) {
			request.setAttribute("message", e.getMessage());

		}
	}

	public static void InsertData(HttpServletRequest request, Question_01 qs, List<Option> op, Connection conn) {
		try {
			boolean kt = QuestionDAO.InsertQuestion(qs, conn);
			int i = 0;

			if (kt) {
				//System.out.println("dc 1/2 r");
				boolean ktt = QuestionDAO.InsertOptions(op, conn);
				if (ktt) {
					request.setAttribute("message", "Insert data from excel to mysql  success");
				} else {
					request.setAttribute("message", "Insert data from excel to mysql  failed");
				}
			} else {
				request.setAttribute("message", "Insert data from excel to mysql  failed");
			}
		} catch (Exception e) {
			System.out.print(e.getMessage());
		}
	}
}
