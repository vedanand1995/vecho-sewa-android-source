.class Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA$2;
.super Ljava/lang/Object;
.source "HomeScreenActivityASHA.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA$2;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA$2;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;

    invoke-virtual {v0, p1}, Lcom/argusoft/sewa/android/app/activity/HomeScreenActivityASHA;->logoutAlertDialogClick(Landroid/view/View;)V

    return-void
.end method
