1.项目简介<br>
sims原项目地址来自：https://github.com/Mrzyang/LibrarySystem/blob/master<br>

1）修改了数据库内容，让他看起来更符合学生信息管理系统<br>
2）在此项目上添加了如下功能，完成期末项目考试<br>

√（1）只有从登录界面，登录成功后，才可以看到显示页面，不能直接看显示页面。（10分）<br>
![image](https://github.com/nanchengcyu/sims/assets/104661473/2ce1e23d-7b4a-4e6f-a1b6-89347e088655)<br>
<br>
√（2）注册页面中，输入两次密码，必须一样，才可以通过检测，否则提示密码不一样，请重新输入。（10分）<br>
![image](https://github.com/nanchengcyu/sims/assets/104661473/4044a156-e7d7-46e2-8b1c-ff08812c4c48)<br>


√（3）注册成功之后，弹出一个对话框，显示“恭喜你，***，注册成功”，并实现跳转到登录页面。（10分）<br>
![image](https://github.com/nanchengcyu/sims/assets/104661473/f5a5cef6-5968-498a-82da-02b24b21c8de)


在此Java中修改了如下代码，实现上述功能。<br>

@WebServlet("/registerServlet")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String studentid = request.getParameter("studentid");
        String password = request.getParameter("password");
        String repassword = request.getParameter("repassword");
        String vcode = request.getParameter("verifycode");

        String checkcode_server = (String) session.getAttribute("CHECKCODE_SERVER");
        session.removeAttribute("CHECKCODE_SERVER"); //确保验证一次性
        if (!vcode.equalsIgnoreCase(checkcode_server)){
            request.setAttribute("msg","验证码错误");
            request.setAttribute("studentid",studentid);
            request.setAttribute("password",password);
            request.setAttribute("repassword",repassword);
            request.getRequestDispatcher("register.jsp").forward(request,response);
            return;
        } else {
            Student student = new Student();
            student.setS_id(studentid);
            student.setS_password(password);
            System.out.println(studentid);
            System.out.println(password);
            StudentService service= new StudentServiceImpl();
            service.register(student);
            request.setAttribute("msg","注册成功");
            // 注册成功的处理
            Map<String, String> resultMap = new HashMap<>();
            resultMap.put("msg", "恭喜你，" + studentid + "，注册成功");
            // 将结果存储到 request 对象中
            request.setAttribute("resultMap", resultMap);

            // 跳转到登录页面
            request.getRequestDispatcher("login.jsp").forward(request, response);


        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}


√（4）注册页面，对用户名进行检测，在数据库里面重复的用户名，弹出对话框。提示“用户名已经存在，请重新填写”。（20分）<br>
![image](https://github.com/nanchengcyu/sims/assets/104661473/780d004d-7f6c-4a65-9931-c9f2162aaa2b)<br><br>
![image](https://github.com/nanchengcyu/sims/assets/104661473/2e9e5b79-f028-4904-8ce8-2cac57c9c83b)<br>

<br>
√（5）注册页面中，年龄必须是数字，不能是其他字符，否则，提示“年龄输入不合法，请重新输入”。（10分）<br><br>
![image](https://github.com/nanchengcyu/sims/assets/104661473/a19a9aff-f8ea-4641-9108-2726c1fc847a)


√（6）删除功能中，如果删除成功，弹出对话框，提示“删除成功，系统将在5秒内转到显示页面”。（10分）<br>![Uploading b8c742e8c33cb3afa731140cf1c7bef.png…]()
![image](https://github.com/nanchengcyu/sims/assets/104661473/8eb005d5-738c-4994-9269-8dec09ba3e23)



√（7）修改功能中，如果对话框可以为空，也就是可以只修改姓名或密码或年龄中的一个或者多个，其他不修改的可以为空，不填写即可。（30分）<br><br>
![image](https://github.com/nanchengcyu/sims/assets/104661473/41775a70-26eb-42bb-a141-620fccb1553b)<br>


2.项目不足以及改进方法<br>
ui可能存在一些问题 <br>

3.项目运行时遇到的bug及处理方法<br>
具体可以看我的个人公众号关于这个项目的导入方法及其bug解决方法。这里不足总结。<br>
对应个人公众号文章：https://mp.weixin.qq.com/s/_nhGdK8VTdFZo1qG3divlA  <br>
4.项目运行成功后的截图<br>
具体可看上面的各个增加的功能界面截图。<br>
