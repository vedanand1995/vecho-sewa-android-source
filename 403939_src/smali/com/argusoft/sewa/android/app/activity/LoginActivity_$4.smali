.class Lcom/argusoft/sewa/android/app/activity/LoginActivity_$4;
.super Ljava/lang/Object;
.source "LoginActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/LoginActivity_;->setUserInProductionOrTraining(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/LoginActivity_;I)V
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

    .line 137
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$4;->this$0:Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    iput p2, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$4;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$4;->this$0:Lcom/argusoft/sewa/android/app/activity/LoginActivity_;

    iget v1, p0, Lcom/argusoft/sewa/android/app/activity/LoginActivity_$4;->val$value:I

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/activity/LoginActivity_;->access$301(Lcom/argusoft/sewa/android/app/activity/LoginActivity_;I)V

    return-void
.end method
