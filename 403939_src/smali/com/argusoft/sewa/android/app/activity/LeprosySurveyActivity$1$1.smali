.class Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity$1$1;
.super Ljava/util/TimerTask;
.source "LeprosySurveyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity$1;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity$1;

.field final synthetic val$s:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity$1;Ljava/lang/CharSequence;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity$1;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity$1$1;->val$s:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity$1$1;->val$s:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity$1$1;->val$s:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->retrieveLCDCFamilyListFromDB(Ljava/lang/String;)V

    return-void
.end method
