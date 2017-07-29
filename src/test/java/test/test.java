package test;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Date d= new java.util.Date();
		System.out.println(d.getYear() + " - " + d.getMonth() + " - " + d.getDay());
		Calendar c = Calendar.getInstance();//可以对每个时间域单独修改
		System.out.println(c.get(Calendar.YEAR) + " - " + c.get(Calendar.MONTH) + " - " + c.get(Calendar.DAY_OF_MONTH));
		SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMdd");
		System.out.println(sdf.format(new java.util.Date()));
	}

}
