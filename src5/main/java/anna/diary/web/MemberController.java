package anna.diary.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import anna.diary.domain.Member;
import anna.diary.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {
    
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
    
    @RequestMapping("add")
    public String add(Member member) throws Exception {
        
        memberService.add(member);
        return "redirect:list";
    }
    
    @RequestMapping("form")
    public String form() throws Exception {
        return "member/form";
        
    }
    
    @RequestMapping("update")
    public String update(Member member) throws Exception {
        
        memberService.update(member);
        return "redirect:list";
    }

    @RequestMapping("delete")
    public String delete(int m_no) throws Exception {

        memberService.delete(m_no);
        return "redirect:list";
    }
}








