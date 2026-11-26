.class Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$4$1$1;
.super Ljava/lang/Object;
.source "IDSP2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$4$1;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$4$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 425
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$4$1$1;->this$2:Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 428
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$4$1$1;->this$2:Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$4$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$4$1;->this$1:Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$4;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$4$1$1;->this$2:Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$4$1;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$4$1;->val$s:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->retrieveFamilyListFromDB(Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$4$1$1;->this$2:Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$4$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$4$1;->this$1:Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$4;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;->access$300(Lcom/argusoft/sewa/android/app/activity/IDSP2Activity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setFocusable(Z)V

    return-void
.end method
