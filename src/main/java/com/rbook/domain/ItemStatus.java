package com.rbook.domain;

public enum ItemStatus {
    ON_SALE("販売中"),
    RESERVED("予約中"),
    SOLD("売切"),
    WITHDRAWN("販売停止");
    private final String label;
    ItemStatus(String label) {
        this.label = label;
    }
    public String getLabel() {
        return label;
    }
}
