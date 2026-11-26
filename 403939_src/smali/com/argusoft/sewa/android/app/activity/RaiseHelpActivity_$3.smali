.class Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity_$3;
.super Ljava/lang/Object;
.source "RaiseHelpActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity_;->afterSend(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity_;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity_;Ljava/lang/String;)V
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

    .line 108
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity_$3;->this$0:Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity_;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity_$3;->val$number:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity_$3;->this$0:Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity_;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity_$3;->val$number:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity_;->access$201(Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity_;Ljava/lang/String;)V

    return-void
.end method
