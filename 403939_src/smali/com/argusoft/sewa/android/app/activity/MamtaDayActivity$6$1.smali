.class Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$6$1;
.super Ljava/lang/Object;
.source "MamtaDayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$6;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$6;

.field final synthetic val$formType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$6;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 420
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$6$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$6;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$6$1;->val$formType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 423
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 424
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$6$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$6;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 425
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$6$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$6;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$6$1;->val$formType:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->access$400(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 427
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$6$1;->this$1:Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$6;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/MamtaDayActivity;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method
