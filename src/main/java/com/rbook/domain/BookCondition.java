package com.rbook.domain;

public enum BookCondition {
    NEW("新品"),
    USED_A("中古A （美品"),
    USED_B("中古B (良品)"),
    USED_C("中古C (可)");
    private final String label;

    BookCondition(String label) {
        this.label = label;
    }

    public String getLabel() {
        return label;
    }
}
