.class Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$13;
.super Ljava/lang/Object;
.source "LMSVideoPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->setBookMarkButton()Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 696
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$13;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 699
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$13;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 700
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$13;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$202(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;I)I

    .line 701
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$13;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$2800(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Landroid/view/View;)V

    return-void
.end method
