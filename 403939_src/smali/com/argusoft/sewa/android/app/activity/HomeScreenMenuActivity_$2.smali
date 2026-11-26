.class Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity_$2;
.super Ljava/lang/Object;
.source "HomeScreenMenuActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity_;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity_;

.field final synthetic val$buttonType:I

.field final synthetic val$listener:Landroid/view/View$OnClickListener;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
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

    .line 114
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity_$2;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity_;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity_$2;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity_$2;->val$msg:Ljava/lang/String;

    iput-object p4, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity_$2;->val$listener:Landroid/view/View$OnClickListener;

    iput p5, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity_$2;->val$buttonType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 118
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity_$2;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity_;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity_$2;->val$title:Ljava/lang/String;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity_$2;->val$msg:Ljava/lang/String;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity_$2;->val$listener:Landroid/view/View$OnClickListener;

    iget v4, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity_$2;->val$buttonType:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity_;->access$101(Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity_;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    return-void
.end method
