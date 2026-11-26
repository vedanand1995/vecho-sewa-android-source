.class Lcom/argusoft/sewa/android/app/activity/MenuActivity$3;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MenuActivity;->hideProcessDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/MenuActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MenuActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 231
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/MenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/MenuActivity;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->processDialog:Lcom/argusoft/sewa/android/app/component/MyProcessDialog;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/component/MyProcessDialog;->dismiss()V

    return-void
.end method
