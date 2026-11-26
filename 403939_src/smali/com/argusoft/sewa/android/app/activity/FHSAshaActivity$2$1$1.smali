.class Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$2$1$1;
.super Ljava/lang/Object;
.source "FHSAshaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$2$1;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$2$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 330
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$2$1$1;->this$2:Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$2$1$1;->this$2:Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$2$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$2$1;->this$1:Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$2$1$1;->this$2:Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$2$1;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$2$1;->val$s:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->retrieveFamilyListFromDB(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$2$1$1;->this$2:Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$2$1;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$2$1;->this$1:Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$2;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setFocusable(Z)V

    return-void
.end method
