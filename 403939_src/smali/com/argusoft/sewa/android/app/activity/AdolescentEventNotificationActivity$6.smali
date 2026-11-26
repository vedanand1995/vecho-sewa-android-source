.class Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$6;
.super Ljava/lang/Object;
.source "AdolescentEventNotificationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->retrieveMembersByAdvanceSearch(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;

.field final synthetic val$message:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;[Ljava/lang/String;)V
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

    .line 798
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$6;->val$message:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 801
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->hideProcessDialog()V

    .line 802
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/AdolescentEventNotificationActivity$6;->val$message:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
