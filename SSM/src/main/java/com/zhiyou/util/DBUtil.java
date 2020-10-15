package com.zhiyou.util;

import java.lang.reflect.Field;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.Filter;


public class DBUtil {
	private static final String URL = "jdbc:mysql:///";
	private static final String DB_NAME = "crm";
	private static final String USERNAME = "root";
	private static final String PASSWORD = "123456";
	private static Connection con = null;
	private static PreparedStatement ps = null;
	private static ResultSet rs = null;
	
	static{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public  static void DML(String sql,Object...object){
		try {
			con=DriverManager.getConnection(URL+DB_NAME,USERNAME,PASSWORD);
			ps=con.prepareStatement(sql);
			for (int i = 0; i < object.length; i++) {
				ps.setObject(i+1, object[i]);// 传递了所有的占位符的参数
			}
			ps.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				ps.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
	}
	public static <E>List<E> DQL(String sql,Class<E> class1,Object...objects){
		List<E> list=new ArrayList<E>();
		try {
			con=DriverManager.getConnection(URL+DB_NAME,USERNAME,PASSWORD);
			ps=con.prepareStatement(sql);
			for (int i = 0; i < objects.length; i++) {
				ps.setObject(i+1, objects[i]);
			}
			//
			rs=ps.executeQuery();
			// 获取数据库的所有列的名称
			ResultSetMetaData data=rs.getMetaData();
			// 创建一个字符串的数组，用来存储所有列的名称
			String[] array=new String[data.getColumnCount()];
			//将所有列名存在数组之中
			for (int i = 0; i < array.length; i++) {
			  array[i]=data.getColumnLabel(i+1);
			}
			 // 判断是否有下一个对象
			while (rs.next()) {
				// 通过传入的创建一个class对象
				E e=class1.newInstance();
				for (String string : array) {
					Object object=rs.getObject(string);// 通过列名获得了列中的数据
					Field field = class1.getDeclaredField(string);// 通过反射列名获得moder类的属性
					field.setAccessible(true);
					field .set(e, object);
				}list.add(e);
			}
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				try {
					ps.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}finally {
					try {
						con.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			}return list;
		}
	}
}
