.class Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$9;
.super Ljava/lang/Object;
.source "LmsCourseDetailActivity.java"

# interfaces
.implements Lcom/argusoft/sewa/android/app/lms/MyVideoView$VideoViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->setVideoCallback(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field actionBar:Landroidx/appcompat/app/ActionBar;

.field final cachedHeight:I

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

    .line 668
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$9;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 669
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$1900(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$9;->cachedHeight:I

    return-void
.end method


# virtual methods
.method public onBufferingEnd(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 726
    const-string p1, "LmsCourseDetailActivity"

    const-string v0, "onBufferingEnd MyVideoView callback"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBufferingStart(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 721
    const-string p1, "LmsCourseDetailActivity"

    const-string v0, "onBufferingStart MyVideoView callback"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 708
    const-string p1, "LmsCourseDetailActivity"

    const-string v0, "onPause MyVideoView callback"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onScaleChange(Z)V
    .locals 2

    .line 674
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$9;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$402(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;Z)Z

    const/16 v0, 0x8

    const/4 v1, -0x1

    if-eqz p1, :cond_1

    .line 676
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$9;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$1900(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 677
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 678
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 679
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$9;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$1900(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 681
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$9;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$2000(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setVisibility(I)V

    .line 682
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$9;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$000(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$9;->actionBar:Landroidx/appcompat/app/ActionBar;

    if-eqz p1, :cond_0

    .line 684
    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->hide()V

    .line 687
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$9;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$2100(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)V

    goto :goto_0

    .line 689
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$9;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$1900(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 690
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 691
    iget v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$9;->cachedHeight:I

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 692
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$9;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$1900(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 693
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$9;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$2000(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setVisibility(I)V

    .line 694
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$9;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$000(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$9;->actionBar:Landroidx/appcompat/app/ActionBar;

    if-eqz p1, :cond_2

    .line 696
    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->show()V

    .line 700
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$9;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$1100(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 701
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$9;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$1200(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 702
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$9;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$2200(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksFragment;->initView()V

    :goto_0
    return-void
.end method

.method public onStart(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 713
    const-string p1, "LmsCourseDetailActivity"

    const-string v0, "onStart MyVideoView callback"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$9;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$300(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;)Ljava/util/Date;

    move-result-object p1

    if-nez p1, :cond_0

    .line 715
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity$9;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->access$302(Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;Ljava/util/Date;)Ljava/util/Date;

    :cond_0
    return-void
.end method
