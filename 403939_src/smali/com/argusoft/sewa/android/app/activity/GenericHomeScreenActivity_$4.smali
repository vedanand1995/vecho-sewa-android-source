.class Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity_$4;
.super Ljava/lang/Object;
.source "GenericHomeScreenActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity_;->showAlertDialogForFormNotAccessible(Landroid/view/View;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity_;

.field final synthetic val$menuConstant:Ljava/lang/String;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity_;Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity_$4;->this$0:Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity_;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity_$4;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity_$4;->val$menuConstant:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity_$4;->this$0:Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity_;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity_$4;->val$view:Landroid/view/View;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity_$4;->val$menuConstant:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity_;->access$301(Lcom/argusoft/sewa/android/app/activity/GenericHomeScreenActivity_;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method
