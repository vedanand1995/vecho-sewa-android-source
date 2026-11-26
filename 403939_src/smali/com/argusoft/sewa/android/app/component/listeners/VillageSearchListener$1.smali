.class Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener$1;
.super Ljava/lang/Object;
.source "VillageSearchListener.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .line 70
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->access$000(Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;)Ljava/util/Timer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Timer;->cancel()V

    .line 71
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;

    new-instance p3, Ljava/util/Timer;

    invoke-direct {p3}, Ljava/util/Timer;-><init>()V

    invoke-static {p2, p3}, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->access$002(Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;Ljava/util/Timer;)Ljava/util/Timer;

    .line 72
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener$1;->this$0:Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;->access$000(Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener;)Ljava/util/Timer;

    move-result-object p2

    new-instance p3, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener$1$1;

    invoke-direct {p3, p0, p1}, Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener$1$1;-><init>(Lcom/argusoft/sewa/android/app/component/listeners/VillageSearchListener$1;Ljava/lang/CharSequence;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p2, p3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
