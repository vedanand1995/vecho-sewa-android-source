.class Lcom/argusoft/sewa/android/app/activity/GetHelpActivity_$3;
.super Ljava/lang/Object;
.source "GetHelpActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/GetHelpActivity_;->synced(Lcom/argusoft/sewa/android/app/support/SupportStore$SyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/GetHelpActivity_;

.field final synthetic val$result:Lcom/argusoft/sewa/android/app/support/SupportStore$SyncResult;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/GetHelpActivity_;Lcom/argusoft/sewa/android/app/support/SupportStore$SyncResult;)V
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

    .line 106
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity_$3;->this$0:Lcom/argusoft/sewa/android/app/activity/GetHelpActivity_;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity_$3;->val$result:Lcom/argusoft/sewa/android/app/support/SupportStore$SyncResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity_$3;->this$0:Lcom/argusoft/sewa/android/app/activity/GetHelpActivity_;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity_$3;->val$result:Lcom/argusoft/sewa/android/app/support/SupportStore$SyncResult;

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/activity/GetHelpActivity_;->access$201(Lcom/argusoft/sewa/android/app/activity/GetHelpActivity_;Lcom/argusoft/sewa/android/app/support/SupportStore$SyncResult;)V

    return-void
.end method
