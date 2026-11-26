.class Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$4$1;
.super Ljava/util/TimerTask;
.source "NamoshreeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$4;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$4;

.field final synthetic val$s:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$4;Ljava/lang/CharSequence;)V
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

    .line 784
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$4$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$4;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$4$1;->val$s:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 788
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$4$1;->val$s:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 789
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$4$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$4;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$4$1;->val$s:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->retrievePregnantWomenList(Ljava/lang/String;)V

    goto :goto_0

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$4$1;->val$s:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 791
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$4$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$4;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/activity/NamoshreeActivity;->retrievePregnantWomenList(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
