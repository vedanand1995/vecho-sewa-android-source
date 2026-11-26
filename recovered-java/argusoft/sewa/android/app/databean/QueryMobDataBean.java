package com.argusoft.sewa.android.app.databean;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class QueryMobDataBean {
    private String code;
    private Map<String, Object> parameters;
    private List<LinkedHashMap<String, Object>> result;
    private Integer sequence;

    public QueryMobDataBean() {
    }

    public QueryMobDataBean(String str, List<LinkedHashMap<String, Object>> list, Map<String, Object> map, Integer num) {
        this.code = str;
        this.result = list;
        this.parameters = map;
        this.sequence = num;
    }

    public String getCode() {
        return this.code;
    }

    public void setCode(String str) {
        this.code = str;
    }

    public List<LinkedHashMap<String, Object>> getResult() {
        return this.result;
    }

    public void setResult(List<LinkedHashMap<String, Object>> list) {
        this.result = list;
    }

    public Map<String, Object> getParameters() {
        return this.parameters;
    }

    public void setParameters(Map<String, Object> map) {
        this.parameters = map;
    }

    public Integer getSequence() {
        return this.sequence;
    }

    public void setSequence(Integer num) {
        this.sequence = num;
    }

    public String toString() {
        return "QueryMobDataBean{code='" + this.code + "', result=" + this.result + ", parameters=" + this.parameters + ", sequence=" + this.sequence + '}';
    }
}
