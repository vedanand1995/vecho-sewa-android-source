.class Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3$2;
.super Ljava/lang/Object;
.source "LMSVideoPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 290
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3$2;->this$1:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 293
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3$2;->this$1:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3$2;->this$1:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$2100(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;)Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getMediaType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PDF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;->access$1900(Lcom/argusoft/sewa/android/app/activity/LMSVideoPlayerActivity;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
