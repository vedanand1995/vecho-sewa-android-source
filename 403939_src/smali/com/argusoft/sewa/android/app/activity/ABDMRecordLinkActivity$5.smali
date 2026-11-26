.class Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$5;
.super Ljava/lang/Object;
.source "ABDMRecordLinkActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->fetchAuthModes()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;

.field final synthetic val$message:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;[Ljava/lang/String;)V
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

    .line 442
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$5;->val$message:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 445
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->hideProcessDialog()V

    .line 446
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$5;->this$0:Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/ABDMRecordLinkActivity$5;->val$message:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
