.class Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$11$1;
.super Ljava/lang/Object;
.source "ABDMRecordLinkActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$11;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$11;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 692
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$11$1;->this$1:Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 695
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$11$1;->this$1:Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$11;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$11;->this$0:Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->access$400(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$11$1;->this$1:Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$11;

    iget-object v2, v2, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$11;->this$0:Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v2, v5, v3

    const-string v2, "in %ds"

    invoke-static {v1, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 696
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$11$1;->this$1:Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$11;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$11;->this$0:Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;)[I

    move-result-object v0

    aget v1, v0, v3

    sub-int/2addr v1, v4

    aput v1, v0, v3

    return-void
.end method
