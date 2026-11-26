package com.argusoft.sewa.android.app.databean;

/* loaded from: classes.dex */
public class LmsQuizConfigDataBean {
    private Boolean allowReviewBeforeSubmission;
    private Boolean doYouWantAQuizToBeMarked;
    private Boolean isCaseStudyQuestionSetType;
    private Integer noOfMaximumAttempts;
    private Boolean provideInteractiveFeedbackAfterEachQuestion;
    private Boolean provideOptionToLockTheQuiz;
    private Boolean provideOptionToRestartTestFromCompletionScreen;
    private LmsQuizCompletionMessage quizCompletionMessage;
    private Boolean showQuizScoreQuizCompletion;
    private Boolean showTimeTakenToCompleteTheQuiz;

    public Boolean getIsCaseStudyQuestionSetType() {
        return this.isCaseStudyQuestionSetType;
    }

    public void setIsCaseStudyQuestionSetType(Boolean bool) {
        this.isCaseStudyQuestionSetType = bool;
    }

    public Boolean getDoYouWantAQuizToBeMarked() {
        return this.doYouWantAQuizToBeMarked;
    }

    public void setDoYouWantAQuizToBeMarked(Boolean bool) {
        this.doYouWantAQuizToBeMarked = bool;
    }

    public Boolean getAllowReviewBeforeSubmission() {
        return this.allowReviewBeforeSubmission;
    }

    public void setAllowReviewBeforeSubmission(Boolean bool) {
        this.allowReviewBeforeSubmission = bool;
    }

    public Boolean getShowQuizScoreQuizCompletion() {
        return this.showQuizScoreQuizCompletion;
    }

    public void setShowQuizScoreQuizCompletion(Boolean bool) {
        this.showQuizScoreQuizCompletion = bool;
    }

    public Integer getNoOfMaximumAttempts() {
        return this.noOfMaximumAttempts;
    }

    public void setNoOfMaximumAttempts(Integer num) {
        this.noOfMaximumAttempts = num;
    }

    public Boolean getProvideOptionToRestartTestFromCompletionScreen() {
        return this.provideOptionToRestartTestFromCompletionScreen;
    }

    public void setProvideOptionToRestartTestFromCompletionScreen(Boolean bool) {
        this.provideOptionToRestartTestFromCompletionScreen = bool;
    }

    public Boolean getShowTimeTakenToCompleteTheQuiz() {
        return this.showTimeTakenToCompleteTheQuiz;
    }

    public void setShowTimeTakenToCompleteTheQuiz(Boolean bool) {
        this.showTimeTakenToCompleteTheQuiz = bool;
    }

    public Boolean getProvideInteractiveFeedbackAfterEachQuestion() {
        return this.provideInteractiveFeedbackAfterEachQuestion;
    }

    public void setProvideInteractiveFeedbackAfterEachQuestion(Boolean bool) {
        this.provideInteractiveFeedbackAfterEachQuestion = bool;
    }

    public LmsQuizCompletionMessage getQuizCompletionMessage() {
        return this.quizCompletionMessage;
    }

    public void setQuizCompletionMessage(LmsQuizCompletionMessage lmsQuizCompletionMessage) {
        this.quizCompletionMessage = lmsQuizCompletionMessage;
    }

    public Boolean getProvideOptionToLockTheQuiz() {
        return this.provideOptionToLockTheQuiz;
    }

    public void setProvideOptionToLockTheQuiz(Boolean bool) {
        this.provideOptionToLockTheQuiz = bool;
    }
}
