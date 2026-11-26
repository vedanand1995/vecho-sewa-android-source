.class Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity$2;
.super Ljava/lang/Object;
.source "NCDRegisterFHWActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->setScreeningSelectionScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 228
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 p1, -0x1

    if-eq p3, p1, :cond_5

    if-eqz p3, :cond_4

    const/4 p1, 0x1

    if-eq p3, p1, :cond_3

    const/4 p1, 0x2

    if-eq p3, p1, :cond_2

    const/4 p1, 0x3

    if-eq p3, p1, :cond_1

    const/4 p1, 0x4

    if-eq p3, p1, :cond_0

    goto :goto_0

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;

    const-string p2, "breast"

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->access$502(Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 243
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;

    const-string p2, "cervical"

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->access$502(Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 240
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;

    const-string p2, "oral"

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->access$502(Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 237
    :cond_3
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;

    const-string p2, "hypertension"

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->access$502(Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 234
    :cond_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;

    const-string p2, "diabetes"

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->access$502(Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 251
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->retrieveMemberList()V

    .line 252
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->access$600(Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;)Landroid/widget/Button;

    move-result-object p1

    const-string p2, "Okay"

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;->access$700(Lcom/argusoft/sewa/android/app/activity/NCDRegisterFHWActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    return-void
.end method
