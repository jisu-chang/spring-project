package com.mbc.pet.community;

public class PageDTO {
    // ?��? ?��?���? 처리�? ?��?�� �??�� ?��?��
   int boardnumber;
	 String boardwriter, boardtitle, boardcontent, boarddate;
	 int boardreadcnt, groups, step, indent;
   
   private int nowPage;    // ?��?�� ?��?���? 번호
   private int startPage;  // ?��?�� ?��면에?�� 보이?�� ?��?�� ?��?���? 번호(?��?���? 블록 기�?)
   private int endPage;    // ?��?�� ?��면에?�� 보이?�� ?�� ?��?���? 번호(?��?���? 블록 기�?)
   private int total;      // ?���? ?��?��?�� 개수 (�? ?��코드&게시�? ?��)
   private int cntPerPage; // ?�� ?��?���??�� 보여�? ?��?��?�� 개수
   private int lastPage;   // 마�?�? ?��?���? 번호 (�? ?��?���? ?��)
   private int start;      // ?��?�� ?��?���??��?�� DB 조회 ?�� ?��?��?�� ?��?�� ?��?��?��(LIMIT ?��?��?�� ?��?��)
   private int end;        // ?��?�� ?��?���??��?�� DB 조회 ?�� ?��?��?�� ?�� ?��?��?��
   private int cntPage = 10; // ?�� ?��면에 ?��?��?�� ?��?���? 개수 (ex: 1~10, 11~20)

    // ?��? ?��?���??�� 개수 ?��?�� Getter/Setter
    public int getCntPage() { return cntPage; }
    public void setCntPage(int cntPage) { this.cntPage = cntPage; }

    // ?��? 기본 ?��?��?��
    public PageDTO() {}

    // ?��? ?��?���? ?��보�?? ?��?��?��?�� ?��?��?��
    public PageDTO(int total, int nowPage, int cntPerPage) {
        setNowPage(nowPage);       // ?��?�� ?��?���? ?��?��
        setCntPerPage(cntPerPage); // ?��?���??�� ?��?��?�� 개수 ?��?��
        setTotal(total);           // ?���? ?��?��?�� 개수 ?��?��
        calcLastPage(getTotal(), getCntPerPage()); // ?���? ?��?���? 계산
        calcStartEndPage(getNowPage(), cntPage);   // ?��?�� ?��?���?, ?�� ?��?���? 계산 (?��?���? 블록 기�?)
        calcStartEnd(getNowPage(), getCntPerPage()); // DB 조회?�� ?��?��?�� start, end 계산
    }   

    /**
     * ?��? 1. ?���? ?��?���? ?�� 계산
     * ?���? ?��?��?�� 개수(total)?? ?�� ?��?���??�� 개수(cntPerPage)�? ?��?��?�� 마�?�? ?��?���? 계산
     */
    public void calcLastPage(int total, int cntPerPage) {
        setLastPage((int) Math.ceil((double) total / (double) cntPerPage)); 
        // Math.ceil()?�� ?��?��?��?�� ?��?��?��?�� ?���? 처리
        // ?��: �? ?��?��?�� 55�?, ?�� ?��?���??�� 10�? ?�� �? ?��?���? ?�� 6 (?���? 처리)
    }

    /**
     * ?��? 2. ?��?�� ?��?���??? ?�� ?��?���? 계산
     * ?��?�� ?��?���?(nowPage)�? 기�??���? ?�� ?��면에 ?��?��?�� ?��?���? 개수(cntPage)만큼 ?��?��
     */
    public void calcStartEndPage(int nowPage, int cntPage) {
        setEndPage(((int) Math.ceil((double) nowPage / (double) cntPage)) * cntPage);  // ?��?�� ?��?���?�? ?��?�� 블록?�� 마�?�? ?��?���? 번호 계산
        // ?��?�� ?��?���?�? 7?���? ?�� ?�� ?��면에?�� ?�� ?��?���??�� 10
        // ?��?�� ?��?���?�? 15?���? ?�� ?�� ?��면에?�� ?�� ?��?���??�� 20

        if (getLastPage() < getEndPage()) {    
            setEndPage(getLastPage());  // 마�?�? ?��?���? 번호�? �? ?��?���? ?��보다 ?��?���? 조정
        }

        setStartPage(getEndPage() - cntPage + 1); //?��?�� ?��?���? 번호 ?��?�� (?�� ?��?���??��?�� 블록 개수 빼기)
        if (getStartPage() < 1) {   
            setStartPage(1);  // ?��?�� ?��?���?�? 1보다 ?��?�� 경우 조정
        }
    }               

    /**
     * ?��? 3. DB 쿼리?�� ?��?��?�� start, end �? ?��?��
     * ?��?��?��베이?��?��?�� ?��?��?���? �??��?�� ?�� ?��?��?�� ?��?��?�� 범위�? 계산
     */
    public void calcStartEnd(int nowPage, int cntPerPage) {    
        setEnd(nowPage * cntPerPage); // ?��?�� ?��?���??�� 마�?�? ?��?��?�� 번호 계산
        setStart(getEnd() - cntPerPage + 1); // ?��?�� ?��?���??�� ?��?�� ?��?��?�� 번호 �?
    }

    // ?��? Getter & Setter (�? �??��?�� 값을 ?��?��?���? �??��?���? ?��?�� 메서?��)
    public int getNowPage() { return nowPage; }
    public void setNowPage(int nowPage) { this.nowPage = nowPage; }

    public int getStartPage() { return startPage; }
    public void setStartPage(int startPage) { this.startPage = startPage; }

    public int getEndPage() { return endPage; }
    public void setEndPage(int endPage) { this.endPage = endPage; }

    public int getTotal() { return total; }
    public void setTotal(int total) { this.total = total; }

    public int getCntPerPage() { return cntPerPage; }
    public void setCntPerPage(int cntPerPage) { this.cntPerPage = cntPerPage; }

    public int getLastPage() { return lastPage; }
    public void setLastPage(int lastPage) { this.lastPage = lastPage; }

    public int getStart() { return start; }
    public void setStart(int start) { this.start = start; }

    public int getEnd() { return end; }
    public void setEnd(int end) { this.end = end; }
}
