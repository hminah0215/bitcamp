package com.bit.exam06;

import java.util.List;

public class ProtocolHandler {
	private List<Filter> filters;

	public void setFilters(List<Filter> filters) {
		this.filters = filters;
	}

	public void execute() {
		for (Filter f : filters) {
			f.pro();
		}
	}

}
