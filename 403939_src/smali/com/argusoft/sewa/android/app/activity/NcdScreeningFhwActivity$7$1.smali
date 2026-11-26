.class Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity$7$1;
.super Ljava/lang/Object;
.source "NcdScreeningFhwActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity$7;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity$7;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 672
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity$7$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 675
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity$7$1;->this$1:Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity$7;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity$7;->this$0:Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/NcdScreeningFhwActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    return-void
.end method
