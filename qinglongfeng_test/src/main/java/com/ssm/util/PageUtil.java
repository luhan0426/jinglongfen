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
				if(page <= (pageCount - 4)) { // 当前页前面有5个数字，后面有4个数字。
					for (int i = 0, p = page - 5; i < 10; i++, p ++) {
						pages[i] = p;
					}
					
				} else { // 放最后10页的数字
					for (int i = 0, p = pageCount - 9; i < 10; i++, p ++) {
						pages[i] = p;
					}
				}
			}
		}
		return pages;
	}
}
