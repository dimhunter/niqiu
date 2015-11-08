/**
 * Created by shenge on 2015/11/8.
 */
public class Test {
    @org.junit.Test
    public void kuozhanming(){
        String fileName = "柠檬绿兔小白个人博客模板.rar";
        String prefix=fileName.substring(fileName.lastIndexOf(".")+1);
        System.out.println(prefix);
    }
}
