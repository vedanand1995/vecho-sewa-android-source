.class Lcom/argusoft/sewa/android/app/activity/MenuActivity$4;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MenuActivity;->setSubTitle(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/MenuActivity;

.field final synthetic val$subtitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MenuActivity;Ljava/lang/String;)V
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

    .line 264
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MenuActivity;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity$4;->val$subtitle:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 267
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MenuActivity;

    sget v1, Lcom/argusoft/sewa/android/app/R$id;->toolbar_subtitle:I

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    if-eqz v0, :cond_2

    .line 269
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity$4;->val$subtitle:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 272
    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    .line 273
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity$4;->val$subtitle:Ljava/lang/String;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/MenuActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MenuActivity;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/activity/MenuActivity;->context:Landroid/content/Context;

    sget v2, Lcom/argusoft/sewa/android/app/R$style;->ToolbarSubtitle:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/textview/MaterialTextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v1, 0x8

    .line 270
    invoke-virtual {v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method
