.class Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity$3;
.super Ljava/lang/Thread;
.source "DynamicFormActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->onFormFillFinish(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 691
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 694
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 695
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 696
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 697
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->formFillUpTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 698
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-wide v2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->formFillUpTime:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->formFillUpTime:J

    .line 700
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-8!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;

    .line 703
    invoke-static {v2}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "formStartDate"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "~-9!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 707
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 700
    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->access$002(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 710
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->storeForm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->access$202(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    .line 711
    sput-boolean v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->isOnlineSearch:Z

    .line 713
    :try_start_0
    sget-object v0, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->fhwSheets:Ljava/util/List;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ASHA_PNC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->finish()V

    goto :goto_1

    .line 714
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->access$400(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 719
    :try_start_1
    const-string v1, "DynamicFormActivity"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 721
    :goto_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->hideProcessDialog()V

    return-void

    :goto_2
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->hideProcessDialog()V

    .line 722
    throw v0
.end method
