.class Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$4$1;
.super Ljava/lang/Thread;
.source "DisplayMorbiditiesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$4;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$4;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 375
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$4$1;->this$1:Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$4;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$4$1;->this$1:Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$4;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->access$400(Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;)V

    .line 379
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$4$1;->this$1:Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$4;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->hideProcessDialog()V

    return-void
.end method
