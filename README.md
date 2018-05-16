# diary

## src2
### 스프링WebMVC준비
```
webapp/WEB-INF/web.xml준비 (기존프로젝트에서 가져옴)
프론트컨트롤러(DispatcherrServlet) 스프링 설정파일 준비
Dispatch-servlet.xml파일 가져오기(기존프로젝트에서..) >>dispatcher 경로수정

 jdbc연결정보 프로퍼티파일준비(기존프로젝트에서가져오기)
테스트용 페이지 컨트롤러생성
 web.HelloController클래스작성
Webapp/WEB-INF/jsp/hello.jsp작성
페이지컨트롤러 동작 테스트 >http://localhost:9999/diary/app/hello
```



## src1
### 프로젝트폴더 준비
```
프로젝트폴더 생성
$gradle init —type java-application
폴더생성:
src/main/resources
                webapp
     /test/resources
기존 build.gradle 파일 가져오기
$gradle eclipse
```
### 웹프로젝트 배치
```
webapp/index.html 작성
톰캣서버구축
웹프로젝트배치
실행및테스트
```
***

## 사전준비
```
java100/bitcamp-docs/mysql-settings.txt 참고
로컬사용자추가 : diarymaster
데이터베이스생성 : diarydb

diray.sql작성

drop table diary;
drop table member;

create table diary(
    no int not null,
    title varchar(200) not null,
    contents text,
    photo varchar(255), 
    date datetime not null
);

alter table diary
    add constraint primary key (no);

alter table diary
    modify column no int not null auto_increment;





멤버테이블 생성

create table member (
    m_no int not null,
    name varchar(30) not null,
    email varchar(50) not null,
    pwd varchar(100) not null
);

alter table member
    add constraint primary key (m_no);

alter table member
    modify column m_no int not null auto_increment;
    
alter table member
    add fulltext index (name);
    
alter table member
    add constraint unique (email);


컬럼추가

alter table diary
   add column m_no int not null;

alter table diary
  add constraint foreign key (m_no) references member(m_no);


```

