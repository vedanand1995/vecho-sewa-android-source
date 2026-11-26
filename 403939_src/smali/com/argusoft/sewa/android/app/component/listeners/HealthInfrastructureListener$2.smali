.class Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;
.super Ljava/lang/Object;
.source "HealthInfrastructureListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->addInfrastructureSelectionLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 360
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 363
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$300(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$200(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 364
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$300(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$400(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 365
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$300(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$500(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 366
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$300(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$600(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 368
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$1000(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Lcom/argusoft/sewa/android/app/constants/RchConstants;->INFRA_PRIVATE_HOSPITAL:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Other"

    const-wide/16 v2, -0x1

    .line 370
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 369
    new-instance v0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;-><init>()V

    .line 370
    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->setActualId(Ljava/lang/Long;)V

    .line 371
    sget-object v3, Lcom/argusoft/sewa/android/app/constants/RchConstants;->INFRA_PRIVATE_HOSPITAL:Ljava/lang/Long;

    invoke-virtual {v0, v3}, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->setTypeId(Ljava/lang/Long;)V

    .line 372
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->setName(Ljava/lang/String;)V

    .line 373
    iget-object v3, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$700(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$1000(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Ljava/lang/Long;

    move-result-object v0

    sget-object v3, Lcom/argusoft/sewa/android/app/constants/RchConstants;->INFRA_TRUST_HOSPITAL:Ljava/lang/Long;

    invoke-virtual {v0, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    new-instance v0, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;-><init>()V

    .line 378
    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->setActualId(Ljava/lang/Long;)V

    .line 379
    sget-object v2, Lcom/argusoft/sewa/android/app/constants/RchConstants;->INFRA_TRUST_HOSPITAL:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->setTypeId(Ljava/lang/Long;)V

    .line 380
    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->setName(Ljava/lang/String;)V

    .line 381
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$700(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$700(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 385
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$100(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "No Health Infrastructure is available at selected location. Please select another location"

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$602(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;Lcom/google/android/material/textview/MaterialTextView;)Lcom/google/android/material/textview/MaterialTextView;

    .line 386
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$300(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$600(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 387
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$1100(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$1100(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 388
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$1100(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->dismiss()V

    :cond_2
    return-void

    .line 393
    :cond_3
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$200(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_4

    .line 394
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$100(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "Select Health Infrastructure"

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateQuestionView(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$202(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 397
    :cond_4
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$700(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 399
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$700(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_5

    .line 401
    const-string v2, "-Select-"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 402
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$700(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;

    .line 403
    invoke-virtual {v5}, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    add-int/2addr v4, v1

    goto :goto_0

    .line 407
    :cond_5
    const-string v2, "No Health Infrastructure available"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 410
    :cond_6
    iget-object v2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$100(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0, v3, v1}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->getSpinner(Landroid/content/Context;[Ljava/lang/String;II)Landroid/widget/Spinner;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$402(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;Landroid/widget/Spinner;)Landroid/widget/Spinner;

    .line 411
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$400(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/Spinner;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2$1;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 456
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$300(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$200(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 457
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$300(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$400(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 459
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$1100(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$1100(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 460
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$1100(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->dismiss()V

    :cond_7
    return-void
.end method
