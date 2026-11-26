.class Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$1;
.super Ljava/lang/Object;
.source "NamoshreeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->showCountDetailsAndQuestionScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 282
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 285
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;)Landroid/widget/RadioGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    const/16 v0, 0x2713

    if-ne p1, v0, :cond_0

    .line 286
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;)V

    return-void

    .line 290
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;)Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 291
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 292
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 294
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "Invalid abortion count"

    if-nez p1, :cond_1

    .line 296
    :try_start_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->context:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v2, 0x0

    .line 299
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 300
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;)Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDeliveryCount()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 301
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;)Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDeliveryCount()Ljava/lang/Integer;

    move-result-object v2

    .line 303
    :cond_2
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;)Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getCurrentGravida()Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    int-to-long v3, v3

    .line 304
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v6, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;)Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getIsPregnantFlag()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 305
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr p1, v2

    int-to-long v5, p1

    cmp-long p1, v5, v3

    if-gez p1, :cond_4

    goto :goto_0

    .line 306
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr p1, v2

    int-to-long v5, p1

    cmp-long p1, v5, v3

    if-gtz p1, :cond_4

    .line 309
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;)Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->setAbortionCount(Ljava/lang/Integer;)V

    .line 310
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;)V

    goto :goto_1

    .line 312
    :cond_4
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->context:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 315
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 318
    :cond_5
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->context:Landroid/content/Context;

    const-string v0, "Please enter abortion count"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method
