package com.ssm.util;

public class PageUtil {
	public static int[] numberPage(int listSize, int pageSize, int page) {
		int pageCount = (listSize/pageSize) + (listSize % pageSize != 0 ? 1 : 0);
		int[] pages = null;
		if(pageCount <= 10) {
			pages = new int[pageCount];
			for (int i = 0, p = 1; i < pageCount; i ++, p ++) {
				pages[i] = p;
			}
		} else {
			pages = new int[10];
			if(page < 7) {
				for (int i = 0, p = 1; i < 10; i++, p++) {
					pages[i] = p;
				}
			} else {
				if(page <= (pageCount - 4)) { // ��ǰҳǰ����5�����֣�������4�����֡�
					for (int i = 0, p = page - 5; i < 10; i++, p ++) {
						pages[i] = p;
					}
					
				} else { // �����10ҳ������
					for (int i = 0, p = pageCount - 9; i < 10; i++, p ++) {
						pages[i] = p;
					}
				}
			}
		}
		return pages;
	}
}
