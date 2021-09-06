package web;

import org.apache.commons.io.IOUtils;
import service_impl.UserService;
import service_impl.UserServiceImpl;
import sun.misc.BASE64Encoder;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLEncoder;

public class DownloadServlet extends HttpServlet {
    private UserService userService=new UserServiceImpl();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取要下载的文件路径和文件名
        String username = req.getParameter("username");
        String path = userService.getPath(username);
//        String substring = path.substring(0, 2);
//        String substring1 = path.substring(2, path.length() - 1);
//        path=substring+"\\"+substring1;
        System.out.println(path);
        //读取要下载的文件内容
        //ServletContext servletContext = getServletContext();
        //InputStream is = servletContext.getResourceAsStream(path);
        FileInputStream fis = new FileInputStream(new File(path));
        //获取文件类型
        //String type = servletContext.getMimeType("/file/4.jpg");image/jpeg
        //System.out.println(type);
        //通过响应头告诉客户端返回的数据类型
        resp.setContentType("image/jpeg");
        //通过响应头告诉客户端收到的数据用于下载
        resp.setHeader("Content-Disposition","attachment;filename="+username+".jpg");
        //解决中文文件名乱码问题
//        if(!req.getHeader("User-Agent:").contains("Firefox")) {
//            resp.setHeader("Content-Disposition", "attachment:filename=" + URLEncoder.encode("管理员.jpg", "UTF-8"));
//        }else {
//            resp.setHeader("Content-Disposition", "attachment:filename==?UTF-8?B" + new BASE64Encoder().encode("管理员.jpg".getBytes("UTF-8")));
//        }
        //获取响应输出流
        OutputStream os = resp.getOutputStream();
        //读取输入流中的数据到输出流
        //IOUtils.copy(is, os);
        byte[] buffer = new byte[1024];
                int len;
                while((len=fis.read(buffer))!=-1)
                {
                    os.write(buffer,0,len);
                }

        //资源关闭
        if(fis!=null)
                {
                    fis.close();
                }
                if(os!=null)
                {
                    os.close();
                }
                //下载成功,返回首页
        //req.getRequestDispatcher("/html/index.jsp").forward(req,resp);
    }
}
