.class Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$6;
.super Ljava/lang/Object;
.source "LmsCourseDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->setBookMarkButton()Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 587
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$6;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 590
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$6;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$500(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->pause()V

    .line 591
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$6;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$500(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->getCurrentPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$602(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;I)I

    .line 592
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$6;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$1300(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;Landroid/view/View;)V

    return-void
.end method
