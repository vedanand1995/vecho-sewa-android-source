.class Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$1$1;
.super Ljava/lang/Thread;
.source "DisplayMorbiditiesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$1;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 277
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->access$400(Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;)V

    .line 281
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$1$1;->this$1:Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->hideProcessDialog()V

    return-void
.end method
