.class Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$1;
.super Landroid/view/OrientationEventListener;
.source "MyVideoOrientationDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->enable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 5

    .line 39
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->access$000(Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;I)Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->access$100(Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;)Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->access$200(Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;)V

    .line 46
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;

    invoke-static {v0, p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->access$102(Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;)Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;

    goto/16 :goto_0

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->access$300(Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;)V

    .line 49
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->access$400(Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;)J

    move-result-wide v0

    const-wide/16 v2, 0x5dc

    cmp-long v4, v0, v2

    if-lez v4, :cond_5

    .line 50
    sget-object v0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;->LANDSCAPE:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;

    const-string v1, "OrientationDetector"

    if-ne p1, v0, :cond_2

    .line 51
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->access$500(Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 52
    const-string v0, "switch to SCREEN_ORIENTATION_LANDSCAPE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->access$502(Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;I)I

    .line 54
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->access$600(Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;)Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$OrientationChangeListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 55
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->access$600(Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;)Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$OrientationChangeListener;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$OrientationChangeListener;->onOrientationChanged(ILcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;)V

    goto/16 :goto_0

    .line 59
    :cond_2
    sget-object v0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;->PORTRAIT:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;

    if-ne p1, v0, :cond_3

    .line 60
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->access$500(Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    .line 61
    const-string v0, "switch to SCREEN_ORIENTATION_PORTRAIT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->access$502(Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;I)I

    .line 63
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->access$600(Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;)Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$OrientationChangeListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 64
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->access$600(Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;)Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$OrientationChangeListener;

    move-result-object v0

    invoke-interface {v0, v2, p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$OrientationChangeListener;->onOrientationChanged(ILcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;)V

    goto :goto_0

    .line 68
    :cond_3
    sget-object v0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;->REVERSE_PORTRAIT:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;

    if-ne p1, v0, :cond_4

    .line 69
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->access$500(Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;)I

    move-result v0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_5

    .line 70
    const-string v0, "switch to SCREEN_ORIENTATION_REVERSE_PORTRAIT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->access$502(Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;I)I

    .line 72
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->access$600(Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;)Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$OrientationChangeListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 73
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->access$600(Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;)Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$OrientationChangeListener;

    move-result-object v0

    invoke-interface {v0, v2, p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$OrientationChangeListener;->onOrientationChanged(ILcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;)V

    goto :goto_0

    .line 77
    :cond_4
    sget-object v0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;->REVERSE_LANDSCAPE:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;

    if-ne p1, v0, :cond_5

    .line 78
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->access$500(Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;)I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_5

    .line 79
    const-string v0, "switch to SCREEN_ORIENTATION_REVERSE_LANDSCAPE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;

    invoke-static {v0, v2}, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->access$502(Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;I)I

    .line 81
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->access$600(Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;)Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$OrientationChangeListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 82
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$1;->this$0:Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;->access$600(Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector;)Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$OrientationChangeListener;

    move-result-object v0

    invoke-interface {v0, v2, p1}, Lcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$OrientationChangeListener;->onOrientationChanged(ILcom/argusoft/sewa/android/app/lms/MyVideoOrientationDetector$Direction;)V

    :cond_5
    :goto_0
    return-void
.end method
