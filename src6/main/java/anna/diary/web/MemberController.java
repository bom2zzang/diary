package anna.diary.web;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import anna.diary.domain.Member;
import anna.diary.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {
    

	@Autowired ServletContext servletContext;
    @Autowired MemberService memberService;
    
    @RequestMapping("list")
    public String list(Model model) throws Exception {


        model.addAttribute("list", memberService.findAll());
    	return "member/list";
    }
    
    @RequestMapping("{m_no}")
    public String view(@PathVariable int m_no, Model model) throws Exception {
        
        model.addAttribute("member", memberService.get(m_no));
        return "member/view";
    }

    @RequestMapping(value="add", method=RequestMethod.POST)
    public String add(Member member) throws Exception {
     	//업로드 할 파일을 저장할 폴더 위치
        memberService.add(member);
        return "redirect:list";
    }
    
    @RequestMapping("form")
    public String form() throws Exception {
        return "member/form";
        
    }
    

    @RequestMapping(value="update", method=RequestMethod.POST)
    public String update(Member member, MultipartFile file) throws Exception {
	String uploadDir = servletContext.getRealPath("/download");
    	
    	String filename = writeUploadFile(file, uploadDir);
    	member.setM_photo(filename);
        memberService.update(member);
        return "redirect:list";
    }

    @RequestMapping("delete")
    public String delete(int m_no) throws Exception {

        memberService.delete(m_no);
        return "redirect:list";
    }
    
    
    long prevMillis = 0;
    int count = 0;
    
    // 다른 클라이언트가 보낸 파일명과 중복되지 않도록 
    // 서버에 파일을 저장할 때는 새 파일명을 만든다.
    synchronized private String getNewFilename(String filename) {
        long currMillis = System.currentTimeMillis();
        if (prevMillis != currMillis) {
            count = 0;
            prevMillis = currMillis;
        }
        
        return  currMillis + "_" + count++ + extractFileExtName(filename); 
    }
    
    // 파일명에서 뒤의 확장자명을 추출한다.
    private String extractFileExtName(String filename) {
        int dotPosition = filename.lastIndexOf(".");
        
        if (dotPosition == -1)
            return "";
        
        return filename.substring(dotPosition);
    }
    
    private String writeUploadFile(MultipartFile part, String path) throws IOException {
        
        String filename = getNewFilename(part.getOriginalFilename());
        part.transferTo(new File(path + "/" + filename));
        return filename;
    }  
}










