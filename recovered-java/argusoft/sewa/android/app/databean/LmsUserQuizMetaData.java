package com.argusoft.sewa.android.app.databean;

/* loaded from: classes.dex */
public class LmsUserQuizMetaData {
    private Boolean isLocked;
    private Long lastQuizDate;
    private Integer latestScore;
    private Integer lessonId;
    private Integer moduleId;
    private Integer questionSetId;
    private Integer quizAttempts;
    private Integer quizAttemptsToPass;
    private Integer quizRefId;
    private String quizRefType;
    private Integer quizTypeId;
    private Integer scoreWhenPassed;

    public Integer getModuleId() {
        return this.moduleId;
    }

    public void setModuleId(Integer num) {
        this.moduleId = num;
    }

    public Integer getLessonId() {
        return this.lessonId;
    }

    public void setLessonId(Integer num) {
        this.lessonId = num;
    }

    public Integer getQuizRefId() {
        return this.quizRefId;
    }

    public void setQuizRefId(Integer num) {
        this.quizRefId = num;
    }

    public String getQuizRefType() {
        return this.quizRefType;
    }

    public void setQuizRefType(String str) {
        this.quizRefType = str;
    }

    public Integer getQuizTypeId() {
        return this.quizTypeId;
    }

    public void setQuizTypeId(Integer num) {
        this.quizTypeId = num;
    }

    public Integer getQuizAttempts() {
        return this.quizAttempts;
    }

    public void setQuizAttempts(Integer num) {
        this.quizAttempts = num;
    }

    public Integer getQuizAttemptsToPass() {
        return this.quizAttemptsToPass;
    }

    public void setQuizAttemptsToPass(Integer num) {
        this.quizAttemptsToPass = num;
    }

    public Integer getLatestScore() {
        return this.latestScore;
    }

    public void setLatestScore(Integer num) {
        this.latestScore = num;
    }

    public Boolean getIsLocked() {
        return this.isLocked;
    }

    public void setIsLocked(Boolean bool) {
        this.isLocked = bool;
    }

    public Integer getScoreWhenPassed() {
        return this.scoreWhenPassed;
    }

    public void setScoreWhenPassed(Integer num) {
        this.scoreWhenPassed = num;
    }

    public Long getLastQuizDate() {
        return this.lastQuizDate;
    }

    public void setLastQuizDate(Long l) {
        this.lastQuizDate = l;
    }

    public Boolean getLocked() {
        return this.isLocked;
    }

    public void setLocked(Boolean bool) {
        this.isLocked = bool;
    }

    public Integer getQuestionSetId() {
        return this.questionSetId;
    }

    public void setQuestionSetId(Integer num) {
        this.questionSetId = num;
    }
}
