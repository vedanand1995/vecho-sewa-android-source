.class Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$3;
.super Ljava/lang/Object;
.source "LmsSimulationActivity.java"

# interfaces
.implements Lcom/argusoft/sewa/android/app/lms/MyVideoView$VideoViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->setVideoCallback(Lcom/argusoft/sewa/android/app/lms/MyVideoView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field actionBar:Landroidx/appcompat/app/ActionBar;

.field final cachedHeight:I

.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 297
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$3;->cachedHeight:I

    return-void
.end method


# virtual methods
.method public onBufferingEnd(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 350
    const-string p1, "LmsSimulationActivity"

    const-string v0, "onBufferingEnd MyVideoView callback"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBufferingStart(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 345
    const-string p1, "LmsSimulationActivity"

    const-string v0, "onBufferingStart MyVideoView callback"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 335
    const-string p1, "LmsSimulationActivity"

    const-string v0, "onPause MyVideoView callback"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onScaleChange(Z)V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->access$402(Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;Z)Z

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    .line 305
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 306
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 307
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 308
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->access$500(Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setVisibility(I)V

    .line 310
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->access$600(Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 311
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 312
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->access$700(Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 313
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->context:Landroid/content/Context;

    check-cast p1, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$3;->actionBar:Landroidx/appcompat/app/ActionBar;

    if-eqz p1, :cond_1

    .line 315
    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->hide()V

    goto :goto_0

    .line 318
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 319
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 320
    iget v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$3;->cachedHeight:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 321
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->access$500(Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setVisibility(I)V

    .line 323
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->access$600(Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 324
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 325
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->access$700(Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 326
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->context:Landroid/content/Context;

    check-cast p1, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$3;->actionBar:Landroidx/appcompat/app/ActionBar;

    if-eqz p1, :cond_1

    .line 328
    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStart(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 340
    const-string p1, "LmsSimulationActivity"

    const-string v0, "onStart MyVideoView callback"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
