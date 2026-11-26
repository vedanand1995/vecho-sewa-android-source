package com.argusoft.sewa.android.app.databean;

import java.util.List;

/* loaded from: classes.dex */
public class SearchAbhaResponse {
    private List<SearchABHADetails> ABHA;
    private String txnId;

    public String getTxnId() {
        return this.txnId;
    }

    public void setTxnId(String str) {
        this.txnId = str;
    }

    public List<SearchABHADetails> getABHA() {
        return this.ABHA;
    }

    public void setABHA(List<SearchABHADetails> list) {
        this.ABHA = list;
    }
}
