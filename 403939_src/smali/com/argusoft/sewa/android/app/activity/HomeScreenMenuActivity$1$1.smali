.class Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$1$1;
.super Ljava/lang/Object;
.source "HomeScreenMenuActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$1;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 171
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 174
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$1;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->alertDialogShown:Z

    .line 175
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$1;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    return-void
.end method
