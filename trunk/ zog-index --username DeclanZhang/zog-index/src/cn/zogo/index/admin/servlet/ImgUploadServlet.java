package cn.zogo.index.admin.servlet;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;

import javax.jdo.PersistenceManager;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItemIterator;
import org.apache.commons.fileupload.FileItemStream;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import cn.zogo.index.admin.dao.ImageDAO;
import cn.zogo.index.admin.dto.Image;
import cn.zogo.index.common.PMF;
import cn.zogo.index.common.ZogoContext;

import com.google.appengine.api.datastore.Blob;


public class ImgUploadServlet extends HttpServlet {

	public void doPost(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		PersistenceManager pm = PMF.get().getPersistenceManager();
		
		try {
			ServletFileUpload upload = new ServletFileUpload();
			res.setContentType("text/html");

			FileItemIterator iterator = upload.getItemIterator(req);
			while (iterator.hasNext()) {
				FileItemStream item = iterator.next();
				InputStream stream = item.openStream();
				ByteArrayOutputStream out = new ByteArrayOutputStream();
				
				if (!item.isFormField()) {
					int len;
					byte[] buffer = new byte[8192];
					while ((len = stream.read(buffer, 0, buffer.length)) != -1) {
						out.write(buffer,0,len);
					}
					Blob img = new Blob(out.toByteArray());
					Image image = new Image();
					Date date = new Date();
					image.setImg(img);
					image.setDate(date);
					ImageDAO dao = ZogoContext.getImageDAO();
					image = dao.add(pm, image);
					res.getWriter().print("<script>window.parent.uploadFinish("+image.getId()+");</script>");
				}
			}
		} catch (Exception ex) {
			throw new ServletException(ex);
		} finally {
			pm.close();
		}
	}

}
