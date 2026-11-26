.class public final synthetic Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field public final synthetic f$0:Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$$ExternalSyntheticLambda0;->f$0:Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$$ExternalSyntheticLambda0;->f$0:Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->lambda$addVideoLesson$0$com-argusoft-sewa-android-app-activity-LmsSimulationActivity(Ljava/lang/String;Landroid/media/MediaPlayer;II)Z

    move-result p1

    return p1
.end method
