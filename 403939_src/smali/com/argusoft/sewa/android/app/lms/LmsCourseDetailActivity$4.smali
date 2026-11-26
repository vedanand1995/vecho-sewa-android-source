.class Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$4;
.super Ljava/lang/Object;
.source "LmsCourseDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->setRightLayoutInVideo()V
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

    .line 524
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$4;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 527
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$4;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$1000(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 528
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$4;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$1002(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;Z)Z

    .line 529
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$4;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$1100(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    sget v0, Lcom/argusoft/sewa/android/app/R$drawable;->ic_arrow_left:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 530
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$4;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$1200(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 531
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$4;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$500(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_1

    .line 532
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$4;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$500(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->start()V

    goto :goto_0

    .line 535
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$4;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$1002(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;Z)Z

    .line 536
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$4;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$1100(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    sget v1, Lcom/argusoft/sewa/android/app/R$drawable;->ic_arrow_right:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 537
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$4;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$1200(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 538
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$4;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$500(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 539
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$4;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$500(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->pause()V

    :cond_1
    :goto_0
    return-void
.end method
