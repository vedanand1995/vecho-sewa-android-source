.class Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity$1;
.super Ljava/lang/Object;
.source "PregnancyStatusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 65
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 66
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/activity/PregnancyStatusActivity;->navigateToHomeScreen(Z)V

    return-void
.end method
