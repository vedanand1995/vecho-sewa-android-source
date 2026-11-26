.class Lcom/argusoft/sewa/android/app/activity/LMSActivity$3;
.super Ljava/lang/Object;
.source "LMSActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/LMSActivity;->openMediaAccordingToType(Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/LMSActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/LMSActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 287
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 290
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->access$400(Lcom/argusoft/sewa/android/app/activity/LMSActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/LMSActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 291
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->access$500(Lcom/argusoft/sewa/android/app/activity/LMSActivity;)Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->access$600(Lcom/argusoft/sewa/android/app/activity/LMSActivity;Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->access$302(Lcom/argusoft/sewa/android/app/activity/LMSActivity;Landroid/view/View;)Landroid/view/View;

    .line 292
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->access$400(Lcom/argusoft/sewa/android/app/activity/LMSActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/LMSActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/LMSActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method
