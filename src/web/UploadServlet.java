package web;

import dao_impl.UserDao;
import dao_impl.UserDaoImpl;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import service_impl.UserService;
import service_impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

public class UploadServlet extends HttpServlet {
    private UserService userService=new UserServiceImpl();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //判断上传的数据是否是多段数据
        if(ServletFileUpload.isMultipartContent(req))
        {
//            HttpSession session = req.getSession();
//            String username = req.getParameter("username");
//            System.out.println(username);
            //创建FileItemFactory实现类
            FileItemFactory fileItemFactory = new DiskFileItemFactory();
            //创建用于解析上传的工具类ServletFileUpload
            ServletFileUpload servletFileUpload = new ServletFileUpload(fileItemFactory);
            String path="g:\\";
            String username=null;
            try {
                List<FileItem> list = servletFileUpload.parseRequest(req);
                for (FileItem item:list)
                {
                    //判断是不是普通表单项
                    if(item.isFormField())
                    {
                        //表单项的属性值
                        username = item.getString("UTF-8");
                        System.out.println(username);
                    }
                    else {
                        //上传的文件
                        item.write(new File("g:\\" + item.getName()));
                        path = path + item.getName();
                        userService.insertPhoto(username,path);
                    }
                }
                System.out.println("上传成功");
                req.getRequestDispatcher("/html/uploadSuccess.jsp").forward(req,resp);
//                String path1 = userService.getPath(username);
//                System.out.println(path1);
//                FileInputStream fis = new FileInputStream(new File(path1));
//                FileOutputStream fos = new FileOutputStream("e:\\1.jpg");
//                byte[] buffer = new byte[1024];
//                int len;
//                while((len=fis.read(buffer))!=-1)
//                {
//                    fos.write(buffer,0,len);
//                }
//                if(fis!=null)
//                {
//                    fis.close();
//                }
//                if(fos!=null)
//                {
//                    fos.close();
//                }
//                System.out.println("下载成功");

            } catch (Exception e) {
                e.printStackTrace();
            }
        }

    }
}
