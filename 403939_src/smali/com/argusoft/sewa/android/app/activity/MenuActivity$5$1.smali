.class Lcom/argusoft/sewa/android/app/activity/MenuActivity$5$1;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MenuActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/argusoft/sewa/android/app/activity/MenuActivity$5;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MenuActivity$5;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 288
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity$5$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MenuActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 291
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity$5$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MenuActivity$5;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/MenuActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/MenuActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 292
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity$5$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MenuActivity$5;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/MenuActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/MenuActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->finish()V

    return-void
.end method
