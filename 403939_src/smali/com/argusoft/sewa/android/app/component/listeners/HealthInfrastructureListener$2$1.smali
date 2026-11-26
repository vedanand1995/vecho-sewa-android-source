.class Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2$1;
.super Ljava/lang/Object;
.source "HealthInfrastructureListener.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 411
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    if-eqz p3, :cond_b

    .line 416
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$700(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x1

    sub-int/2addr p3, p2

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;

    .line 417
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Selected Health Infrastructure : "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;

    iget-object p3, p3, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p3}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$1200(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    move-result-object p3

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->getActualId()Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 419
    sput-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->selectedHealthInfra:Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;

    .line 420
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;

    iget-object p3, p3, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p3}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$500(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/LinearLayout;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 421
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;

    iget-object p3, p3, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p3}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$300(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/LinearLayout;

    move-result-object p3

    iget-object p4, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;

    iget-object p4, p4, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p4}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$500(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Landroid/widget/LinearLayout;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 424
    :cond_0
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;

    iget-object p3, p3, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p3}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$1300(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p4

    const/4 p5, -0x1

    sparse-switch p4, :sswitch_data_0

    :goto_0
    const/4 p2, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string p2, "FHW_CS"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/16 p2, 0x8

    goto :goto_1

    :sswitch_1
    const-string p2, "NCD_FHW_BREAST"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x7

    goto :goto_1

    :sswitch_2
    const-string p2, "NCD_FHW_HYPERTENSION"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 p2, 0x6

    goto :goto_1

    :sswitch_3
    const-string p2, "NCD_FHW_ORAL"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 p2, 0x5

    goto :goto_1

    :sswitch_4
    const-string p2, "FHW_WPD"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    const/4 p2, 0x4

    goto :goto_1

    :sswitch_5
    const-string p2, "FHW_PNC"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    :cond_6
    const/4 p2, 0x3

    goto :goto_1

    :sswitch_6
    const-string p2, "FHW_ANC"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_0

    :cond_7
    const/4 p2, 0x2

    goto :goto_1

    :sswitch_7
    const-string p4, "NCD_FHW_DIABETES"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_9

    goto :goto_0

    :sswitch_8
    const-string p2, "NCD_FHW_CERVICAL"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_0

    :cond_8
    const/4 p2, 0x0

    :cond_9
    :goto_1
    packed-switch p2, :pswitch_data_0

    goto :goto_2

    .line 434
    :pswitch_0
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;

    iget-object p2, p2, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    iget-object p2, p2, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->showSmartReferralType:Ljava/lang/String;

    const-string p3, "1"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 435
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;

    iget-object p2, p2, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->getActualId()Ljava/lang/Long;

    move-result-object p1

    const-string p3, "Obs. & Gynec."

    invoke-static {p2, p1, p3}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$1400(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;Ljava/lang/Long;Ljava/lang/String;)V

    goto :goto_2

    .line 436
    :cond_a
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;

    iget-object p2, p2, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    iget-object p2, p2, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->showSmartReferralType:Ljava/lang/String;

    const-string p3, "2"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 437
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;

    iget-object p2, p2, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/HealthInfrastructureBean;->getActualId()Ljava/lang/Long;

    move-result-object p1

    const-string p3, "Paediatrics"

    invoke-static {p2, p1, p3}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$1400(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;Ljava/lang/Long;Ljava/lang/String;)V

    goto :goto_2

    .line 446
    :cond_b
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2$1;->this$1:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener$2;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;->access$1200(Lcom/argusoft/sewa/android/app/component/listeners/HealthInfrastructureListener;)Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    :cond_c
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x37904bdb -> :sswitch_8
        -0x1a33fbc3 -> :sswitch_7
        -0x938b5b4 -> :sswitch_6
        -0x9387d65 -> :sswitch_5
        -0x93862df -> :sswitch_4
        0x1b0ad488 -> :sswitch_3
        0x1c01f5a0 -> :sswitch_2
        0x6d7a8507 -> :sswitch_1
        0x7b92d11a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
