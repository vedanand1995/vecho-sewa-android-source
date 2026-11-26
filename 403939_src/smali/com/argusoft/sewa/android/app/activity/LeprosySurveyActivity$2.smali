.class Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity$2;
.super Ljava/lang/Object;
.source "LeprosySurveyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->startDynamicFormActivityForLCDC()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 285
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 288
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 289
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/activity/LeprosySurveyActivity;->navigateToHomeScreen(Z)V

    return-void
.end method
