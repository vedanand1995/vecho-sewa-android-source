package com.argusoft.sewa.android.app.model;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.util.Date;

@DatabaseTable
/* loaded from: classes.dex */
public class RISessionInventoryBean extends BaseEntity {

    @DatabaseField
    private Integer bcgNew;

    @DatabaseField
    private Integer bcgNewRet;

    @DatabaseField
    private Integer bcgOpenRet;

    @DatabaseField
    private Integer bcgUsed;

    @DatabaseField
    private Integer dptEmptyRet;

    @DatabaseField
    private Integer dptNew;

    @DatabaseField
    private Integer dptNewRet;

    @DatabaseField
    private Integer dptOpen;

    @DatabaseField
    private Integer dptOpenRet;

    @DatabaseField
    private Integer dptUsed;

    @DatabaseField
    private Integer fipvEmptyRet;

    @DatabaseField
    private Integer fipvNew;

    @DatabaseField
    private Integer fipvNewRet;

    @DatabaseField
    private Integer fipvOpen;

    @DatabaseField
    private Integer fipvOpenRet;

    @DatabaseField
    private Integer fipvUsed;

    @DatabaseField
    private Integer hepEmptyRet;

    @DatabaseField
    private Integer hepNew;

    @DatabaseField
    private Integer hepNewRet;

    @DatabaseField
    private Integer hepOpen;

    @DatabaseField
    private Integer hepOpenRet;

    @DatabaseField
    private Integer hepUsed;

    @DatabaseField
    private Integer jeEmptyRet;

    @DatabaseField
    private Integer jeNew;

    @DatabaseField
    private Integer jeNewRet;

    @DatabaseField
    private Integer jeOpen;

    @DatabaseField
    private Integer jeOpenRet;

    @DatabaseField
    private Integer jeUsed;

    @DatabaseField
    private Integer mrNew;

    @DatabaseField
    private Integer mrNewRet;

    @DatabaseField
    private Integer mrOpenRet;

    @DatabaseField
    private Integer mrUsed;

    @DatabaseField
    private Integer opvEmptyRet;

    @DatabaseField
    private Integer opvNew;

    @DatabaseField
    private Integer opvNewRet;

    @DatabaseField
    private Integer opvOpen;

    @DatabaseField
    private Integer opvOpenRet;

    @DatabaseField
    private Integer opvUsed;

    @DatabaseField
    private Integer pcvEmptyRet;

    @DatabaseField
    private Integer pcvNew;

    @DatabaseField
    private Integer pcvNewRet;

    @DatabaseField
    private Integer pcvOpen;

    @DatabaseField
    private Integer pcvOpenRet;

    @DatabaseField
    private Integer pcvUsed;

    @DatabaseField
    private Integer pentaEmptyRet;

    @DatabaseField
    private Integer pentaNew;

    @DatabaseField
    private Integer pentaNewRet;

    @DatabaseField
    private Integer pentaOpen;

    @DatabaseField
    private Integer pentaOpenRet;

    @DatabaseField
    private Integer pentaUsed;

    @DatabaseField
    private Integer rotaEmptyRet;

    @DatabaseField
    private Integer rotaNew;

    @DatabaseField
    private Integer rotaNewRet;

    @DatabaseField
    private Integer rotaOpen;

    @DatabaseField
    private Integer rotaOpenRet;

    @DatabaseField
    private Integer rotaUsed;

    @DatabaseField
    private Date sessionDate;

    @DatabaseField
    private String sessionId;

    @DatabaseField
    private Integer tdEmptyRet;

    @DatabaseField
    private Integer tdNew;

    @DatabaseField
    private Integer tdNewRet;

    @DatabaseField
    private Integer tdOpen;

    @DatabaseField
    private Integer tdOpenRet;

    @DatabaseField
    private Integer tdUsed;

    public String getSessionId() {
        return this.sessionId;
    }

    public void setSessionId(String str) {
        this.sessionId = str;
    }

    public Date getSessionDate() {
        return this.sessionDate;
    }

    public void setSessionDate(Date date) {
        this.sessionDate = date;
    }

    public Integer getBcgNew() {
        return this.bcgNew;
    }

    public void setBcgNew(Integer num) {
        this.bcgNew = num;
    }

    public Integer getBcgUsed() {
        return this.bcgUsed;
    }

    public void setBcgUsed(Integer num) {
        this.bcgUsed = num;
    }

    public Integer getBcgNewRet() {
        return this.bcgNewRet;
    }

    public void setBcgNewRet(Integer num) {
        this.bcgNewRet = num;
    }

    public Integer getBcgOpenRet() {
        return this.bcgOpenRet;
    }

    public void setBcgOpenRet(Integer num) {
        this.bcgOpenRet = num;
    }

    public Integer getMrNew() {
        return this.mrNew;
    }

    public void setMrNew(Integer num) {
        this.mrNew = num;
    }

    public Integer getMrUsed() {
        return this.mrUsed;
    }

    public void setMrUsed(Integer num) {
        this.mrUsed = num;
    }

    public Integer getMrNewRet() {
        return this.mrNewRet;
    }

    public void setMrNewRet(Integer num) {
        this.mrNewRet = num;
    }

    public Integer getMrOpenRet() {
        return this.mrOpenRet;
    }

    public void setMrOpenRet(Integer num) {
        this.mrOpenRet = num;
    }

    public Integer getDptNew() {
        return this.dptNew;
    }

    public void setDptNew(Integer num) {
        this.dptNew = num;
    }

    public Integer getDptOpen() {
        return this.dptOpen;
    }

    public void setDptOpen(Integer num) {
        this.dptOpen = num;
    }

    public Integer getDptUsed() {
        return this.dptUsed;
    }

    public void setDptUsed(Integer num) {
        this.dptUsed = num;
    }

    public Integer getDptNewRet() {
        return this.dptNewRet;
    }

    public void setDptNewRet(Integer num) {
        this.dptNewRet = num;
    }

    public Integer getDptOpenRet() {
        return this.dptOpenRet;
    }

    public void setDptOpenRet(Integer num) {
        this.dptOpenRet = num;
    }

    public Integer getTdNew() {
        return this.tdNew;
    }

    public void setTdNew(Integer num) {
        this.tdNew = num;
    }

    public Integer getTdOpen() {
        return this.tdOpen;
    }

    public void setTdOpen(Integer num) {
        this.tdOpen = num;
    }

    public Integer getTdUsed() {
        return this.tdUsed;
    }

    public void setTdUsed(Integer num) {
        this.tdUsed = num;
    }

    public Integer getTdNewRet() {
        return this.tdNewRet;
    }

    public void setTdNewRet(Integer num) {
        this.tdNewRet = num;
    }

    public Integer getTdOpenRet() {
        return this.tdOpenRet;
    }

    public void setTdOpenRet(Integer num) {
        this.tdOpenRet = num;
    }

    public Integer getPentaNew() {
        return this.pentaNew;
    }

    public void setPentaNew(Integer num) {
        this.pentaNew = num;
    }

    public Integer getPentaOpen() {
        return this.pentaOpen;
    }

    public void setPentaOpen(Integer num) {
        this.pentaOpen = num;
    }

    public Integer getPentaUsed() {
        return this.pentaUsed;
    }

    public void setPentaUsed(Integer num) {
        this.pentaUsed = num;
    }

    public Integer getPentaNewRet() {
        return this.pentaNewRet;
    }

    public void setPentaNewRet(Integer num) {
        this.pentaNewRet = num;
    }

    public Integer getPentaOpenRet() {
        return this.pentaOpenRet;
    }

    public void setPentaOpenRet(Integer num) {
        this.pentaOpenRet = num;
    }

    public Integer getFipvNew() {
        return this.fipvNew;
    }

    public void setFipvNew(Integer num) {
        this.fipvNew = num;
    }

    public Integer getFipvOpen() {
        return this.fipvOpen;
    }

    public void setFipvOpen(Integer num) {
        this.fipvOpen = num;
    }

    public Integer getFipvUsed() {
        return this.fipvUsed;
    }

    public void setFipvUsed(Integer num) {
        this.fipvUsed = num;
    }

    public Integer getFipvNewRet() {
        return this.fipvNewRet;
    }

    public void setFipvNewRet(Integer num) {
        this.fipvNewRet = num;
    }

    public Integer getFipvOpenRet() {
        return this.fipvOpenRet;
    }

    public void setFipvOpenRet(Integer num) {
        this.fipvOpenRet = num;
    }

    public Integer getPcvNew() {
        return this.pcvNew;
    }

    public void setPcvNew(Integer num) {
        this.pcvNew = num;
    }

    public Integer getPcvOpen() {
        return this.pcvOpen;
    }

    public void setPcvOpen(Integer num) {
        this.pcvOpen = num;
    }

    public Integer getPcvUsed() {
        return this.pcvUsed;
    }

    public void setPcvUsed(Integer num) {
        this.pcvUsed = num;
    }

    public Integer getPcvNewRet() {
        return this.pcvNewRet;
    }

    public void setPcvNewRet(Integer num) {
        this.pcvNewRet = num;
    }

    public Integer getPcvOpenRet() {
        return this.pcvOpenRet;
    }

    public void setPcvOpenRet(Integer num) {
        this.pcvOpenRet = num;
    }

    public Integer getJeNew() {
        return this.jeNew;
    }

    public void setJeNew(Integer num) {
        this.jeNew = num;
    }

    public Integer getJeOpen() {
        return this.jeOpen;
    }

    public void setJeOpen(Integer num) {
        this.jeOpen = num;
    }

    public Integer getJeUsed() {
        return this.jeUsed;
    }

    public void setJeUsed(Integer num) {
        this.jeUsed = num;
    }

    public Integer getJeNewRet() {
        return this.jeNewRet;
    }

    public void setJeNewRet(Integer num) {
        this.jeNewRet = num;
    }

    public Integer getJeOpenRet() {
        return this.jeOpenRet;
    }

    public void setJeOpenRet(Integer num) {
        this.jeOpenRet = num;
    }

    public Integer getOpvNew() {
        return this.opvNew;
    }

    public void setOpvNew(Integer num) {
        this.opvNew = num;
    }

    public Integer getOpvOpen() {
        return this.opvOpen;
    }

    public void setOpvOpen(Integer num) {
        this.opvOpen = num;
    }

    public Integer getOpvUsed() {
        return this.opvUsed;
    }

    public void setOpvUsed(Integer num) {
        this.opvUsed = num;
    }

    public Integer getOpvNewRet() {
        return this.opvNewRet;
    }

    public void setOpvNewRet(Integer num) {
        this.opvNewRet = num;
    }

    public Integer getOpvOpenRet() {
        return this.opvOpenRet;
    }

    public void setOpvOpenRet(Integer num) {
        this.opvOpenRet = num;
    }

    public Integer getRotaNew() {
        return this.rotaNew;
    }

    public void setRotaNew(Integer num) {
        this.rotaNew = num;
    }

    public Integer getRotaOpen() {
        return this.rotaOpen;
    }

    public void setRotaOpen(Integer num) {
        this.rotaOpen = num;
    }

    public Integer getRotaUsed() {
        return this.rotaUsed;
    }

    public void setRotaUsed(Integer num) {
        this.rotaUsed = num;
    }

    public Integer getRotaNewRet() {
        return this.rotaNewRet;
    }

    public void setRotaNewRet(Integer num) {
        this.rotaNewRet = num;
    }

    public Integer getRotaOpenRet() {
        return this.rotaOpenRet;
    }

    public void setRotaOpenRet(Integer num) {
        this.rotaOpenRet = num;
    }

    public Integer getHepNew() {
        Integer num = this.hepNew;
        if (num == null) {
            return 0;
        }
        return num;
    }

    public void setHepNew(Integer num) {
        this.hepNew = num;
    }

    public Integer getHepOpen() {
        Integer num = this.hepOpen;
        if (num == null) {
            return 0;
        }
        return num;
    }

    public void setHepOpen(Integer num) {
        this.hepOpen = num;
    }

    public Integer getHepUsed() {
        Integer num = this.hepUsed;
        if (num == null) {
            return 0;
        }
        return num;
    }

    public void setHepUsed(Integer num) {
        this.hepUsed = num;
    }

    public Integer getHepNewRet() {
        return this.hepNewRet;
    }

    public void setHepNewRet(Integer num) {
        this.hepNewRet = num;
    }

    public Integer getHepOpenRet() {
        return this.hepOpenRet;
    }

    public void setHepOpenRet(Integer num) {
        this.hepOpenRet = num;
    }

    public Integer getDptEmptyRet() {
        return this.dptEmptyRet;
    }

    public void setDptEmptyRet(Integer num) {
        this.dptEmptyRet = num;
    }

    public Integer getTdEmptyRet() {
        return this.tdEmptyRet;
    }

    public void setTdEmptyRet(Integer num) {
        this.tdEmptyRet = num;
    }

    public Integer getPentaEmptyRet() {
        return this.pentaEmptyRet;
    }

    public void setPentaEmptyRet(Integer num) {
        this.pentaEmptyRet = num;
    }

    public Integer getFipvEmptyRet() {
        return this.fipvEmptyRet;
    }

    public void setFipvEmptyRet(Integer num) {
        this.fipvEmptyRet = num;
    }

    public Integer getPcvEmptyRet() {
        return this.pcvEmptyRet;
    }

    public void setPcvEmptyRet(Integer num) {
        this.pcvEmptyRet = num;
    }

    public Integer getJeEmptyRet() {
        return this.jeEmptyRet;
    }

    public void setJeEmptyRet(Integer num) {
        this.jeEmptyRet = num;
    }

    public Integer getOpvEmptyRet() {
        return this.opvEmptyRet;
    }

    public void setOpvEmptyRet(Integer num) {
        this.opvEmptyRet = num;
    }

    public Integer getRotaEmptyRet() {
        return this.rotaEmptyRet;
    }

    public void setRotaEmptyRet(Integer num) {
        this.rotaEmptyRet = num;
    }

    public Integer getHepEmptyRet() {
        return this.hepEmptyRet;
    }

    public void setHepEmptyRet(Integer num) {
        this.hepEmptyRet = num;
    }

    public Integer getBcgFullVialUsed() {
        return Integer.valueOf((this.bcgUsed.intValue() / 10) + (this.bcgUsed.intValue() % 10 > 0 ? 1 : 0));
    }

    public Integer getMrFullVialUsed() {
        return Integer.valueOf((this.mrUsed.intValue() / 5) + (this.mrUsed.intValue() % 5 > 0 ? 1 : 0));
    }

    public Integer getDptFullVialUsed() {
        int iIntValue = (this.dptUsed.intValue() / 10) + (this.dptUsed.intValue() % 10 > 0 ? 1 : 0);
        return Integer.valueOf(iIntValue > this.dptOpen.intValue() ? iIntValue - this.dptOpen.intValue() : 0);
    }

    public Integer getDptHalfVialUsed() {
        int iIntValue = (this.dptUsed.intValue() / 10) + (this.dptUsed.intValue() % 10 > 0 ? 1 : 0);
        if (iIntValue >= this.dptOpen.intValue()) {
            iIntValue = this.dptOpen.intValue();
        }
        return Integer.valueOf(iIntValue);
    }

    public Integer getTdFullVialUsed() {
        int iIntValue = (this.tdUsed.intValue() / 10) + (this.tdUsed.intValue() % 10 > 0 ? 1 : 0);
        return Integer.valueOf(iIntValue > this.tdOpen.intValue() ? iIntValue - this.tdOpen.intValue() : 0);
    }

    public Integer getTdHalfVialUsed() {
        int iIntValue = (this.tdUsed.intValue() / 10) + (this.tdUsed.intValue() % 10 > 0 ? 1 : 0);
        if (iIntValue >= this.tdOpen.intValue()) {
            iIntValue = this.tdOpen.intValue();
        }
        return Integer.valueOf(iIntValue);
    }

    public Integer getPentaFullVialUsed() {
        int iIntValue = (this.pentaUsed.intValue() / 10) + (this.pentaUsed.intValue() % 10 > 0 ? 1 : 0);
        return Integer.valueOf(iIntValue > this.pentaOpen.intValue() ? iIntValue - this.pentaOpen.intValue() : 0);
    }

    public Integer getPentaHalfVialUsed() {
        int iIntValue = (this.pentaUsed.intValue() / 10) + (this.pentaUsed.intValue() % 10 > 0 ? 1 : 0);
        if (iIntValue >= this.pentaOpen.intValue()) {
            iIntValue = this.pentaOpen.intValue();
        }
        return Integer.valueOf(iIntValue);
    }

    public Integer getFipvFullVialUsed() {
        int iIntValue = (this.fipvUsed.intValue() / 25) + (this.fipvUsed.intValue() % 25 > 0 ? 1 : 0);
        return Integer.valueOf(iIntValue > this.fipvOpen.intValue() ? iIntValue - this.fipvOpen.intValue() : 0);
    }

    public Integer getFipvHalfVialUsed() {
        int iIntValue = (this.fipvUsed.intValue() / 25) + (this.fipvUsed.intValue() % 10 > 0 ? 1 : 0);
        if (iIntValue >= this.fipvOpen.intValue()) {
            iIntValue = this.fipvOpen.intValue();
        }
        return Integer.valueOf(iIntValue);
    }

    public Integer getPcvFullVialUsed() {
        int iIntValue = (this.pcvUsed.intValue() / 10) + (this.pcvUsed.intValue() % 5 > 0 ? 1 : 0);
        return Integer.valueOf(iIntValue > this.pcvOpen.intValue() ? iIntValue - this.pcvOpen.intValue() : 0);
    }

    public Integer getPcvHalfVialUsed() {
        int iIntValue = (this.pcvUsed.intValue() / 10) + (this.pcvUsed.intValue() % 5 > 0 ? 1 : 0);
        if (iIntValue >= this.pcvOpen.intValue()) {
            iIntValue = this.pcvOpen.intValue();
        }
        return Integer.valueOf(iIntValue);
    }

    public Integer getJeFullVialUsed() {
        int iIntValue = (this.jeUsed.intValue() / 10) + (this.jeUsed.intValue() % 5 > 0 ? 1 : 0);
        return Integer.valueOf(iIntValue > this.jeOpen.intValue() ? iIntValue - this.jeOpen.intValue() : 0);
    }

    public Integer getJeHalfVialUsed() {
        int iIntValue = (this.jeUsed.intValue() / 10) + (this.jeUsed.intValue() % 5 > 0 ? 1 : 0);
        if (iIntValue >= this.jeOpen.intValue()) {
            iIntValue = this.jeOpen.intValue();
        }
        return Integer.valueOf(iIntValue);
    }

    public Integer getOpvFullVialUsed() {
        int iIntValue = (this.opvUsed.intValue() / 10) + (this.opvUsed.intValue() % 20 > 0 ? 1 : 0);
        return Integer.valueOf(iIntValue > this.opvOpen.intValue() ? iIntValue - this.opvOpen.intValue() : 0);
    }

    public Integer getOpvHalfVialUsed() {
        int iIntValue = (this.opvUsed.intValue() / 10) + (this.opvUsed.intValue() % 20 > 0 ? 1 : 0);
        if (iIntValue >= this.opvOpen.intValue()) {
            iIntValue = this.opvOpen.intValue();
        }
        return Integer.valueOf(iIntValue);
    }

    public Integer getRotaFullVialUsed() {
        int iIntValue = (this.rotaUsed.intValue() / 10) + (this.rotaUsed.intValue() % 5 > 0 ? 1 : 0);
        return Integer.valueOf(iIntValue > this.rotaOpen.intValue() ? iIntValue - this.rotaOpen.intValue() : 0);
    }

    public Integer getRotaHalfVialUsed() {
        int iIntValue = (this.rotaUsed.intValue() / 10) + (this.rotaUsed.intValue() % 5 > 0 ? 1 : 0);
        if (iIntValue >= this.rotaOpen.intValue()) {
            iIntValue = this.rotaOpen.intValue();
        }
        return Integer.valueOf(iIntValue);
    }

    public Integer getHepFullVialUsed() {
        int iIntValue = (getHepUsed().intValue() / 10) + (getHepUsed().intValue() % 5 > 0 ? 1 : 0);
        return Integer.valueOf(iIntValue > getHepOpen().intValue() ? iIntValue - getHepOpen().intValue() : 0);
    }

    public Integer getHepHalfVialUsed() {
        int iIntValue = (getHepUsed().intValue() / 10) + (getHepUsed().intValue() % 5 > 0 ? 1 : 0);
        if (iIntValue >= getHepOpen().intValue()) {
            iIntValue = getHepOpen().intValue();
        }
        return Integer.valueOf(iIntValue);
    }
}
