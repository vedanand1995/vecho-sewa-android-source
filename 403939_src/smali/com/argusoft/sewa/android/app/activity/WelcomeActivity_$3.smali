.class Lcom/argusoft/sewa/android/app/activity/WelcomeActivity_$3;
.super Ljava/lang/Object;
.source "WelcomeActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/WelcomeActivity_;->showDbDowngradeAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/WelcomeActivity_;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/WelcomeActivity_;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity_$3;->this$0:Lcom/argusoft/sewa/android/app/activity/WelcomeActivity_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity_$3;->this$0:Lcom/argusoft/sewa/android/app/activity/WelcomeActivity_;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity_;->access$201(Lcom/argusoft/sewa/android/app/activity/WelcomeActivity_;)V

    return-void
.end method
