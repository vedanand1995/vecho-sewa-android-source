.class Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$1;
.super Ljava/lang/Object;
.source "IncentivesReportActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->getTextChangeListenerForManualCountInput(Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;Lcom/google/android/material/textview/MaterialTextView;Landroid/widget/LinearLayout;)Landroid/text/TextWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;

.field final synthetic val$amountTV:Lcom/google/android/material/textview/MaterialTextView;

.field final synthetic val$incentive:Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

.field final synthetic val$memberDetailsLayout:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;Landroid/widget/LinearLayout;Lcom/google/android/material/textview/MaterialTextView;Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1261
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$1;->val$memberDetailsLayout:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$1;->val$amountTV:Lcom/google/android/material/textview/MaterialTextView;

    iput-object p4, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$1;->val$incentive:Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1264
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$1;->val$memberDetailsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1265
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$1;->val$memberDetailsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1266
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$1;->val$amountTV:Lcom/google/android/material/textview/MaterialTextView;

    const-string p2, "N/A"

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .line 1271
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 1274
    :cond_0
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;)Ljava/util/Map;

    move-result-object p2

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$1;->val$incentive:Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->getIncentiveId()Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    .line 1276
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getMultiplier()Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_1

    .line 1277
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getAmount()Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    mul-int p3, p3, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_0

    .line 1279
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_2

    .line 1280
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_0

    .line 1282
    :cond_2
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getAmount()Ljava/lang/Short;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Short;->shortValue()S

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 1285
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$1;->val$amountTV:Lcom/google/android/material/textview/MaterialTextView;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1286
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$1;->val$incentive:Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    invoke-virtual {v0, p3}, Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;->setAmount(Ljava/lang/Integer;)V

    .line 1288
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getManualType()Ljava/lang/String;

    move-result-object p2

    const-string p3, "CNT_DET"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1289
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$1;->val$memberDetailsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1290
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$1;->val$memberDetailsLayout:Landroid/widget/LinearLayout;

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;

    iget-object p3, p3, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget v0, Lcom/argusoft/sewa/android/app/R$layout;->incentive_details_manual_member_header:I

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1291
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1292
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    if-ge p4, p3, :cond_3

    .line 1293
    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;

    iget-object p3, p3, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget v0, Lcom/argusoft/sewa/android/app/R$layout;->incentive_details_manual_member:I

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    .line 1294
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$1;->val$memberDetailsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1295
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
