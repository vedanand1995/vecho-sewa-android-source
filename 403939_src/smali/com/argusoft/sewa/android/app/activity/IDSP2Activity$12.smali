.class Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$12;
.super Ljava/lang/Object;
.source "IDSP2Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 831
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$12;->this$0:Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 834
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 835
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$12;->this$0:Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 836
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$12;->this$0:Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->navigateToHomeScreen(Z)V

    .line 837
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$12;->this$0:Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->finish()V

    goto :goto_0

    .line 839
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$12;->this$0:Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method
