package anna.diary.web;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import anna.diary.domain.Diary;
import anna.diary.domain.Member;
import anna.diary.service.DiaryService;

@Controller
@RequestMapping("/diary")
@SessionAttributes("loginUser")

public class DiaryController {
	
	@Autowired ServletContext servletContext;
    @Autowired DiaryService diaryService;
    
    @RequestMapping("list")
    public String list(Model model) throws Exception {
        model.addAttribute("list", diaryService.findAll());
    	return "diary/list";
    }
    //핀터레스트형식.
    @RequestMapping("list2")
    public String list2(Model model) throws Exception {
    	model.addAttribute("list2", diaryService.findAll());
    	return "diary/list2";
    }
    @RequestMapping("{m_no}")
    public String mypage(@PathVariable int m_no, Model model) throws Exception {
    	model.addAttribute("mypage", diaryService.mypage(m_no));
    	return "diary/mypage";
    }

    @RequestMapping("form")
    public String form() throws Exception {
    	return "diary/form";
    }
    
    
    @RequestMapping("delete")
    public String delete(int no) throws Exception {
    	
    	diaryService.delete(no);
    	return "redirect:list";
    }
    
    @RequestMapping("view/{no}")
    public String view(@PathVariable int no, Model model) throws Exception {
    	model.addAttribute("diary", diaryService.get(no));
    	return "diary/view";
    }
    
    
    
    
    @RequestMapping(value="update", method=RequestMethod.POST)
    public String update(Diary diary, MultipartFile file) throws Exception {
    	String uploadDir = servletContext.getRealPath("/download");
    	
    	String filename = writeUploadFile(file, uploadDir);
    	diary.setPhoto(filename);
    	diaryService.update(diary);
    	return "redirect:list";
    }
  
    
    @RequestMapping(value="add", method=RequestMethod.POST)
    public String add(Diary diary,
    					 @ModelAttribute("loginUser") Member loginUser,
    					 MultipartFile file) throws Exception {
        
    	//업로드 할 파일을 저장할 폴더 위치
    	String uploadDir = servletContext.getRealPath("/download");
    	String filename = writeUploadFile(file, uploadDir);
    	diary.setPhoto(filename);
        diary.setWriter(loginUser);

        diaryService.add(diary);
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








