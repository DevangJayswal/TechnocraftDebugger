package dao;

import java.util.List;

import lscd.MyUtility;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import vo.Image_Upload_vo;

public class Image_Upload_dao {

public void insert(Image_Upload_vo VO_obj){
		
		Session session = null;
		
		 try{
			  
			 session = MyUtility.getSession();// Static Method which makes only one object as method is static 
			  
			  Transaction t= session.beginTransaction();
			
			  session.save(VO_obj);
			  
			  t.commit();
			
			
	    }catch(Exception e){
			  System.out.println(e.getMessage());
			  
			  }finally{
			        
				      session.close();
			  
			          }
	}
	
	public List getElementByID(Image_Upload_vo VO_obj){
	
	Session session = null;
	List temp = null;
	
	
	try{
	  
		 session = MyUtility.getSession();// Static Method which makes only one object as method is static
	
	    Transaction tr = session.beginTransaction();
	 
	    Query q = session.createQuery("FROM Image_Upload_vo WHERE Image_ID = '"+VO_obj.getImage_ID()+"'");
	    temp = q.list();
	
	    tr.commit();
	 
	 }catch(Exception e){
		                 System.out.println(e.getMessage());
	  					}finally{
	  							
	  							session.close();
	  
	  							}
	 return temp;
	}

	public void update(Image_Upload_vo VO_obj){
	  
	Session session = null;
	
	  try{
	  
		  session = MyUtility.getSession();// Static Method which makes only one object as method is static
	
		  Transaction tr = session.beginTransaction();
	 
		  session.update(VO_obj);
	 
		  tr.commit();
	 
	  }catch(Exception e){
		  				
		  				System.out.println(e.getMessage());
	  					}finally{
	  						    session.close();
	  							}
	  
	}


	public void deleteCustom(Image_Upload_vo VO_obj){
	
	Session session = null;
	
	 try{
		  
		 session = MyUtility.getSession();// Static Method which makes only one object as method is static
		 
		  Transaction t= session.beginTransaction();
		  String hql = "DELETE FROM Image_Upload_vo "  + 
		             "WHERE Image_ID = :Image_ID";
		  
		  Query query = session.createQuery(hql);
		  query.setParameter("Image_ID", VO_obj.getImage_ID());
		  
		  query.executeUpdate();
		
		  t.commit();
		
		
		  }catch(Exception e){
			  	
			  				System.out.println(e.getMessage());
		  					}finally{
		  							session.close();
		  
		  							}
	}



	public void delete(Image_Upload_vo VO_obj){
	
	Session session = null;
	
	 try{
		  
		 session = MyUtility.getSession();// Static Method which makes only one object as method is static
		 
		  Transaction t= session.beginTransaction();

		  session.delete(VO_obj);
		
		  t.commit();
		
		
		  }catch(Exception e){
			  	
			  				System.out.println(e.getMessage());
		  					}finally{
		  							session.close();
		  
		  							}
	}

	public List showAll(){
	
	Session session = null;
	List temp = null;
	  try{
	  
		  session = MyUtility.getSession();// Static Method which makes only one object as method is static
	
		  Query q = session.createQuery("FROM Image_Upload_vo");
	 
		  temp = q.list();
	  	
	  }catch(Exception e){
		  				  System.out.println(e.getMessage());
	  					 }finally{
	  						     session.close();
	  					 		 }
	  return temp;
	}	

	public List  search(Image_Upload_vo VO_obj){
	
	Session session = null;
    List temp = null;
 
    try{
 
    	session = MyUtility.getSession();// Static Method which makes only one object as method is static
		

    	Query q = session.createQuery("FROM Image_Upload_vo WHERE Image_Name like '%"+VO_obj.getImage_Name() +"%' ");

    	temp = q.list();

    }catch(Exception e){
 		    	System.out.println(e.getMessage());
    		}finally{
    				session.close();
    				}
    	return temp;
	}
}
