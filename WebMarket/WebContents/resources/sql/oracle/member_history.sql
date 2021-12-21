/* 회원정보 update history 테이블 오라클에는 멤버테이블 만들 필요 없 */
/* mysql-회원정보, 상품등록 oracle-게시판, 답변 */
drop table if exists history_memberUpdate;
create table history_memberUpdate
as select 0 seq,
       a.id id, 
       a.name oldName,
       a.gender oldGender,
       a.birth oldBirth,
       a.mail oldMail,
       a.phone oldPhone,
       a.zipcode oldZipcode,
       a.roadAddress oldRoadAddress,
       a.jibunAddress oldJibunAddress,
       a.detailAddress oldDetailAddress,
       a.extraAddress oldExtraAddress,
       b.name newName,
       b.gender newGender,
       b.birth newBirth,
       b.mail newMail,
       b.phone newPhone,
       b.zipcode newZipcode,
       b.roadAddress newRoadAddress,
       b.jibunAddress newJibunAddress,
       b.detailAddress newDetailAddress,
       b.extraAddress newExtraAddress,
       sysdate updateDate
       
       from member a, member b where 1=0
;

alter table history_memberUpdate modify
seq int not null auto_increment primary key;

drop table history_memberUpdate;
drop table member;