.class Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$14;
.super Ljava/lang/Object;
.source "ABDMRecordLinkActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 808
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$14;->this$0:Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 811
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 812
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$14;->this$0:Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->access$800(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 813
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$14;->this$0:Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->setResult(I)V

    .line 814
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$14;->this$0:Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->finish()V

    goto :goto_0

    .line 816
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$14;->this$0:Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->access$800(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method
