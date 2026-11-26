.class Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$2;
.super Ljava/lang/Object;
.source "IncentivesReportActivity.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->showIncentiveCountEntryScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;

.field final synthetic val$listIncentive:Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

.field final synthetic val$maxLimit:I


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;ILcom/argusoft/sewa/android/app/model/IncentiveMaster;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 2315
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;

    iput p2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$2;->val$maxLimit:I

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$2;->val$listIncentive:Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 4

    .line 2319
    const-string v0, ""

    .line 0
    const-string v1, "Count limit for "

    .line 2319
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-interface {p4, v3, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p5

    invoke-interface {p5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2320
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2321
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p1

    invoke-interface {p4, p6, p1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2323
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    return-object p3

    .line 2325
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 2326
    iget p2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$2;->val$maxLimit:I

    if-gt p1, p2, :cond_1

    return-object p3

    .line 2329
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->context:Landroid/content/Context;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$2;->val$listIncentive:Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    invoke-virtual {p3}, Lcom/argusoft/sewa/android/app/model/IncentiveMaster;->getIncentiveTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$2;->val$maxLimit:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method
