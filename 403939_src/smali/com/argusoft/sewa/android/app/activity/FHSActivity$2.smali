.class Lcom/argusoft/sewa/android/app/activity/FHSActivity$2;
.super Ljava/lang/Object;
.source "FHSActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/FHSActivity;->setChoiceSelectionScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/FHSActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/FHSActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/FHSActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 106
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FHSActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/FHSActivity;

    iget-object p2, p2, Lcom/argusoft/sewa/android/app/activity/FHSActivity;->context:Landroid/content/Context;

    const-class p4, Lcom/argusoft/sewa/android/app/activity/CFHCActivity_;

    invoke-direct {p1, p2, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p2, 0x1

    if-ne p3, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 107
    :goto_0
    const-string p3, "reverification"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 108
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FHSActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/FHSActivity;

    const/16 p3, 0x64

    invoke-virtual {p2, p1, p3}, Lcom/argusoft/sewa/android/app/activity/FHSActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
